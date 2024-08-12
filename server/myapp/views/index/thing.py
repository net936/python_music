# Create your views here.
from django.db.models import Q
from rest_framework.decorators import api_view

from myapp import utils
from myapp.handler import APIResponse
from myapp.models import Thing, User, Record
from myapp.serializers import ThingSerializer, ListThingSerializer, DetailThingSerializer, \
    UpdateThingSerializer


@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        keyword = request.GET.get("keyword", None)
        c = request.GET.get("c", None)
        cc = request.GET.get("cc", None)
        sort = request.GET.get("sort", 'recent')

        # 排序方式
        order = '-create_time'
        if sort == 'recent':
            order = '-create_time'
        elif sort == 'hot':
            order = '-pv'

        # 搜索
        if keyword:
            things = Thing.objects.filter(title__contains=keyword).filter(status='0').order_by(order)
            serializer = ListThingSerializer(things, many=True)
            return APIResponse(code=0, msg='查询成功', data=serializer.data)

        # 过滤
        query = Q(status='0')
        if c != '-1':
            # 分类
            query = query & Q(classification_id=c)
        if cc != '全部':
            query = query & Q(yuyan=cc)

        things = Thing.objects.filter(query).order_by(order)

        serializer = ListThingSerializer(things, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)


@api_view(['GET'])
def get_recommend(request):
    # 推荐（协同过滤）
    things = utils.get_recommend(request)
    serializer = ListThingSerializer(things, many=True)
    return APIResponse(code=0, msg='查询成功', data=serializer.data)


@api_view(['POST'])
def rate(request):
    try:
        thing = request.GET.get('thing', -1)
        rate = request.GET.get('rate', 0)
        thing = Thing.objects.get(pk=thing)
        thing.rate = int((thing.rate + int(rate)) / 2)
        thing.save()

    except Thing.DoesNotExist:
        utils.log_error(request, '对象不存在')
        return APIResponse(code=1, msg='对象不存在')

    return APIResponse(code=0, msg='操作成功')


@api_view(['GET'])
def detail(request):
    try:
        pk = request.GET.get('id', -1)
        thing = Thing.objects.get(pk=pk)
        thing.pv = thing.pv + 1
        thing.save()

        # 保存浏览记录（协同过滤）
        ip = utils.get_ip(request)
        if len(ip) > 0 and pk != -1:
            record = Record.objects.filter(ip=ip, thing_id=pk).first()
            if record:
                record.score = record.score + 1
                record.save()
            else:
                Record.objects.create(ip=ip, thing_id=pk, score=1)

    except Thing.DoesNotExist:
        utils.log_error(request, '对象不存在')
        return APIResponse(code=1, msg='对象不存在')

    if request.method == 'GET':
        serializer = ThingSerializer(thing)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)


@api_view(['POST'])
def increaseWishCount(request):
    try:
        pk = request.GET.get('id', -1)
        thing = Thing.objects.get(pk=pk)
        # wish_count加1
        thing.wish_count = thing.wish_count + 1
        thing.save()
    except Thing.DoesNotExist:
        utils.log_error(request, '对象不存在')
        return APIResponse(code=1, msg='对象不存在')

    serializer = ThingSerializer(thing)
    return APIResponse(code=0, msg='操作成功', data=serializer.data)


@api_view(['POST'])
def increaseRecommendCount(request):
    try:
        pk = request.GET.get('id', -1)
        thing = Thing.objects.get(pk=pk)
        # recommend_count加1
        thing.recommend_count = thing.recommend_count + 1
        thing.save()
    except Thing.DoesNotExist:
        utils.log_error(request, '对象不存在')
        return APIResponse(code=1, msg='对象不存在')

    serializer = ThingSerializer(thing)
    return APIResponse(code=0, msg='操作成功', data=serializer.data)


@api_view(['POST'])
def addWishUser(request):
    try:
        username = request.GET.get('username', None)
        thingId = request.GET.get('thingId', None)

        if username and thingId:
            user = User.objects.get(username=username)
            thing = Thing.objects.get(pk=thingId)

            if user not in thing.wish.all():
                thing.wish.add(user)
                thing.wish_count += 1
                thing.save()

    except Thing.DoesNotExist:
        utils.log_error(request, '操作失败')
        return APIResponse(code=1, msg='操作失败')

    serializer = ThingSerializer(thing)
    return APIResponse(code=0, msg='操作成功', data=serializer.data)


@api_view(['POST'])
def removeWishUser(request):
    try:
        username = request.GET.get('username', None)
        thingId = request.GET.get('thingId', None)

        if username and thingId:
            user = User.objects.get(username=username)
            thing = Thing.objects.get(pk=thingId)

            if user in thing.wish.all():
                thing.wish.remove(user)
                thing.wish_count -= 1
                thing.save()

    except Thing.DoesNotExist:
        utils.log_error(request, '操作失败')
        return APIResponse(code=1, msg='操作失败')

    return APIResponse(code=0, msg='操作成功')


@api_view(['GET'])
def getWishThingList(request):
    try:
        username = request.GET.get('username', None)
        if username:
            user = User.objects.get(username=username)
            things = user.wish_things.all()
            serializer = ListThingSerializer(things, many=True)
            return APIResponse(code=0, msg='操作成功', data=serializer.data)
        else:
            return APIResponse(code=1, msg='username不能为空')

    except Exception as e:
        utils.log_error(request, '操作失败' + str(e))
        return APIResponse(code=1, msg='获取心愿单失败')


@api_view(['POST'])
def addCollectUser(request):
    try:
        username = request.GET.get('username', None)
        thingId = request.GET.get('thingId', None)

        if username and thingId:
            user = User.objects.get(username=username)
            thing = Thing.objects.get(pk=thingId)

            if user not in thing.collect.all():
                thing.collect.add(user)
                thing.collect_count += 1
                thing.save()

    except Thing.DoesNotExist:
        utils.log_error(request, '操作失败')
        return APIResponse(code=1, msg='操作失败')

    serializer = DetailThingSerializer(thing)
    return APIResponse(code=0, msg='操作成功', data=serializer.data)


@api_view(['POST'])
def removeCollectUser(request):
    try:
        username = request.GET.get('username', None)
        thingId = request.GET.get('thingId', None)

        if username and thingId:
            user = User.objects.get(username=username)
            thing = Thing.objects.get(pk=thingId)

            if user in thing.collect.all():
                thing.collect.remove(user)
                thing.collect_count -= 1
                thing.save()

    except Thing.DoesNotExist:
        utils.log_error(request, '操作失败')
        return APIResponse(code=1, msg='操作失败')

    return APIResponse(code=0, msg='操作成功')


@api_view(['GET'])
def getCollectThingList(request):
    try:
        username = request.GET.get('username', None)
        if username:
            user = User.objects.get(username=username)
            things = user.collect_things.all()
            serializer = ListThingSerializer(things, many=True)
            return APIResponse(code=0, msg='操作成功', data=serializer.data)
        else:
            return APIResponse(code=1, msg='username不能为空')

    except Exception as e:
        utils.log_error(request, '操作失败' + str(e))
        return APIResponse(code=1, msg='获取收藏失败')


@api_view(['GET'])
def list_user_thing_api(request):
    if request.method == 'GET':
        user = request.GET.get("user", None)

        if user:
            things = Thing.objects.filter(user=user)
            serializer = ListThingSerializer(things, many=True)
            return APIResponse(code=0, msg='查询成功', data=serializer.data)
        else:
            return APIResponse(code=1, msg='user不能为空')


@api_view(['POST'])
def create(request):
    data = request.data.copy()
    data['status'] = '1'
    serializer = ThingSerializer(data=data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='创建成功', data=serializer.data)
    else:
        print(serializer.errors)
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='创建失败')


@api_view(['POST'])
def update(request):
    try:
        pk = request.GET.get('id', -1)
        thing = Thing.objects.get(pk=pk)
    except Thing.DoesNotExist:
        return APIResponse(code=1, msg='对象不存在')

    serializer = UpdateThingSerializer(thing, data=request.data)
    if serializer.is_valid():
        serializer.save()
        return APIResponse(code=0, msg='查询成功', data=serializer.data)
    else:
        print(serializer.errors)
        utils.log_error(request, '参数错误')

    return APIResponse(code=1, msg='更新失败')
