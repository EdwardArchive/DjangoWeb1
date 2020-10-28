from django.shortcuts import render
from study1.util.SQLCONN import SQLCONN
def info(reqest):
    sqlcon = SQLCONN()
    return render(reqest,'info.jsp',{'result':sqlcon.connect()})
# Create your views here.
