from rest_framework.decorators import api_view
from rest_framework.response import Response


@api_view()
def message(request):
    return Response({"message": "Connected to a django api!"})