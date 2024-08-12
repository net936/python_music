# Create your views here.
from rest_framework.decorators import api_view, throttle_classes, authentication_classes

from myapp.auth.MyRateThrottle import MyRateThrottle
from myapp.auth.authentication import AdminTokenAuthtication
from myapp.handler import APIResponse
import datetime

from myapp.models import Feedback
from myapp.permission.permission import isDemoAdminUser
from myapp.serializers import FeedbackSerializer


@api_view(['POST'])
@throttle_classes([MyRateThrottle])
def create(request):
    data = request.data.copy()
    if data['title'] is None or data['content'] is None:
        return APIResponse(code=1, msg='不能为空')

    create_time = datetime.datetime.now()
    data['create_time'] = create_time
    serializer = FeedbackSerializer(data=data)
    if serializer.is_valid():
        serializer.save()

        return APIResponse(code=0, msg='提交成功', data=serializer.data)
    else:
        print(serializer.errors)
        return APIResponse(code=1, msg='提交失败')
