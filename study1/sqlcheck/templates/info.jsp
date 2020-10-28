<script type="text/javascript" src="/static/jQuery-3.5.1.js">
</script> 

<script type="text/javascript">
    function ShowTabex(val){
      for (i=1; i<=4; i++) {
        var tb = document.getElementById('tab_' + i);
        if (i != val) tb.style.display = "none";
        else tb.style.display = "block";
      }
    }
    $(document).ready(function(){
        var auth_list="{{auth|escapejs}}".replace(/[()]/g,"").split(",").map(Number);
        console.log(auth_list);
        for(var i=1; i<=auth_list.length; i++)
        {
          console.log(auth_list.length);
          if(auth_list[i-1]==0)
            $("#tab"+[i]).removeAttr("style").hide();
        }
    });
</script>


<!-------------------------------------------------------------->

<h1> sql 권한 정보를 로드할 페이지 입니다. </h1>

<h2> 연결 결과 : {{result}}</h2> 

<h2> 권한정보 : {{auth}} </h2> 

<div style="text-align: center;">
    <div style="border: 1px solid rgb(204, 204, 204);">
    <span id="tab1" onclick="ShowTabex('1')" style="padding: 0pt 30px; cursor: pointer;">tab_1 보기</span>
    <span id="tab2" onclick="ShowTabex('2')" style="padding: 0pt 30px; cursor: pointer;">tab_2 보기</span>
    <span id="tab3" onclick="ShowTabex('3')" style="padding: 0pt 30px; cursor: pointer;">tab_3 보기</span>
    <span id="tab4" onclick="ShowTabex('4')" style="padding: 0pt 30px; cursor: pointer;">tab_4 보기</span>
    </div>
  </div>
  <div style="text-align: center;">
    <div id="tab_1" style="width: 100%; display: none;">
      ajax + canvasJs 차트 예제입니다.
      <iframe src="https://127.0.0.1:8000/chart1" width="100%" height="650"></iframe>
    </div>
    <div id="tab_2" style="width: 100%; display: none;">
      네이버는 ifarame의 접근을 금지합니다.
      <iframe src="https://www.naver.com" width="100%" height="650"></iframe>
    </div>
    <div id="tab_3" style="width: 100%; display: none;">
      특정블로그 접근은 가능합니다.
      <iframe src="https://blog.naver.com/PostView.nhn?blogId=baekmg1988&logNo=221454486746" width="100%" height="650"></iframe>
    </div>
    <div id="tab_4" style="width: 100%; display: none;">
        외부 사이트 연결 예제입니다.
        <iframe src="https://wikidocs.net/" width="100%" height="650"></iframe>
    </div>
  </div>

