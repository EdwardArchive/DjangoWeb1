from django.http import request
from django.http import HttpResponse
from django.shortcuts import redirect, render
from study1.util.SQLCONN import SQLCONN
import json

def login(request):
    sqlconn=SQLCONN()
    if request.method == "POST":
        username = request.POST.get('loginId')
        password = request.POST.get('loginPw')
        user=sqlconn.login(username,password)
        if user is not None:
            return render(request,'info.jsp',{'result':sqlconn.connect(),'auth':str(user)})
        else :
            print("로그인 실패!")
            return redirect('home')
    else :
        return render(request,'login.jsp')

def chart1(request):
    return render(request,"chart1.html")

def chart1ajax(request):
    data=[
						{"y": 79.45, "label": "Naver"},
						{"y": 7.31, "label": "Daum"},
						{"y": 7.06, "label": "Kakako"},
						{"y": 4.91, "label": "Yahoo"},
						{"y": 1.26, "label": "Others"}
					]
    return HttpResponse(json.dumps(data),content_type="application/json")
# Create your views here.
