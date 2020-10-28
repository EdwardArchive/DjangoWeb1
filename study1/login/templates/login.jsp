<html>
<head>
  <link rel="stylesheet" href="/static/style.css">
</head>
<div class="inner_login">
    <div class="login_tistory">

        <form method="POST" id="authForm" action="{% url 'login'%}">
            {% csrf_token %}
            <fieldset>
            <legend class="screen_out">로그인 정보 입력폼</legend>
            <div class="box_login">
                <div class="inp_text">
                <label for="loginId" class="screen_out">아이디</label>
                <input type="text" id="loginId" name="loginId" placeholder="ID" >
                </div>
                <div class="inp_text">
                <label for="loginPw" class="screen_out">비밀번호</label>
                <input type="password" id="loginPw" name="loginPw" placeholder="Password" >
                </div>
            </div>
            <button type="submit" class="btn_login">로그인</button>
            <div class="login_append">
                <div class="inp_chk"> <!-- 체크시 checked 추가 -->
                <input type="checkbox" id="keepLogin" class="inp_radio"  name="keepLogin">
                <label for="keepLogin" class="lab_g">
        </label>
        </fieldset>
        </form>
        
    </div>
</div>
</html>