# Create your views here.
from django.db import connection
from rest_framework.decorators import api_view

from myapp.handler import APIResponse
from myapp.models import Classification
from myapp.serializers import ClassificationSerializer


@api_view(['GET'])
def list_api(request):
    if request.method == 'GET':
        classifications = Classification.objects.all().order_by('-create_time')
        serializer = ClassificationSerializer(classifications, many=True)
        return APIResponse(code=0, msg='查询成功', data=serializer.data)





