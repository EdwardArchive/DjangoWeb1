import pymysql
#imguru.iptime.org
#
class SQLCONN:
    #def __init__(self,host='127.0.0.1',user='root',password='intel960',db='practice_dev',charset='utf8',port=3306):
    def __init__(self,host='imguru.iptime.org',user='test',password='test',db='practice_dev',charset='utf8',port=3306):
        self.host = host
        self.user = user
        self.password = password
        self.db = db
        self.charset = charset
        self.port = port
        try:            
            self.conn = pymysql.connect(host=self.host,user=self.user,password=self.password, db=self.db, charset=self.charset,port=self.port)
        except:
            self.conn = 'CONNECTION FAIL'

    def connect(self):
        if self.conn == 'CONNECTION FAIL':
            return "연결실패!"
        else:
            return "연결성공!"
    
    def login(self,username,userpassword):
        checkloginSQL="SELECT * from TB_USERINFO WHERE id LIKE '{0}'AND pw LIKE '{1}';".format(username,userpassword)
        try:
            cursor = self.conn.cursor()
            reslogin=cursor.execute(checkloginSQL)
            auth_page=cursor.fetchall()
            if reslogin == 1 :
                return auth_page[0][2:]
        except:
            print("로그인 정보를 얻는데 실패하였습니다.")