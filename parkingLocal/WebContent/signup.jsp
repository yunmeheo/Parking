<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signup.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>

  $(function(){
<<<<<<< HEAD
	  
	var $parentObj = $("article");
    if($parentObj.length == 0){
      $parentObj = $("body");
    }
	  
    //중복 비밀번호 체크시작
    var $c_id = $("input[name=c_id]");
    $("input[name=c_password]").focus(function(){
    	console.log("비밀번호 확인해줭");
    	$.ajax({
    		url : 'checkId.do',
            method : 'POST',
            data : {c_id : $c_id.val() },
            success : function(responseData) {  
            	
            	var result = responseData.trim();
            	if(result=="1") {
            		console.log("사용가능한 아이디 입니다.");
            	}else if(result=="-1") {
            		console.log("존재하는 아이디 입니다.");
            	}else if(result=="2") {
            		console.log("아이디를 입력해주세요.");
            	}
            	
            	
            }
    	}); return false;
    });
    
    $('.signup').find('.btSignup').click(function(){  
   	  var $form = $('form');
      var $data=$form.serialize();
      console.log($data);
      $.ajax({ 
        url : 'signup.do',
        method : 'POST',
        data : $data,
        success : function(responseData) {  
        	$parentObj.html(responseData);
        }
      }); return false;  // end ajax
   });  // end submit
 }); // end function
  
  
</script>
</head>

<style>


</style>

<body>

<div class="signup" >
  <div class="infobox">signup</div>
  <form>
  NAME:       <input type = "text" name ="c_name" ><br>
  ID(이메일) :         <input  type = "text"  name ='c_id' required><br>
    비밀번호:      <input type = "password" name ="c_password"><br>
    차량번호:       <input type = "text" name ="c_car_number" ><br>
    휴대전화 번호:       <input type = "text" name ="c_phone_number" ><br>
   <input class='btSignup' type='button' value = '가입' >
<<<<<<< HEAD
=======
    var $id = $('input[name=id]');
    var $submit =$('input[type=submit]');
    var $button =$('button');
    $form = $('form');
    
    $id.focus(function(){
      $submit.hide();
    }); 
    
    
    $button.click(function(){
      var url = 'checkid.do';
      $.ajax({ 
      url : url,
      method : 'POST',
      data : {"id": $('input[name=id]').val()},
      success : function(responseData){  
        
      var result = responseData.trim();  
      if(result == "1"){
        alert("성공");
        $submit.show()
      }else if(result == "-1"){
        alert("실패");
      }
      },
      error : function(xhr, status, error){
        console.log("errorData:" + status+","+ error);
      }
    }); return false;  // end ajax
    });  // end button

    
    $form.submit(function(){  
      
      var $id = $('input[name=id]');
      var $pwd = $('input[name=pwd]');
      var $pwd1 = $('input[name=pwd1]');
      var $name = $('input[name=name]');
      var url = 'signup.do';
      var $submit =$('input[type=submit]');
      
      $form.attr( "action", "signup.do");
      
      if($pwd.val()!=$pwd1.val()){
        return false;
      };
      
      var $data=$form.serialize();
      
    console.log($data);
    $.ajax({ 
      url : url,
      method : 'POST',
      data : $data,
      success : function(responseData){  
      
      var result = responseData.trim();  
      
      if(result == '1'){
        location.href = "index.jsp";
        
      }else{
        alert(result);
      }
      
      },
      error : function(xhr, status, error){
        console.log("errorData:" + status+","+ error);
      }
    }); return false;  // end ajax
    });  // end submit
    
    
  });
</script>
</head>

<style>


</style>

<body>

<div class="signup" >
  <div class="infobox">signup</div>
  <form method = "post">
    NAME:       <input type = "text" name ="c_name" ><br>
    ID(이메일) :         <input  type = "text"  name ='c_id' required>&nbsp; <button> 중복확인</button><br>
    비밀번호:      <input type = "password" name ="c_password"><br>
    비밀번호 확인(없앨까?): <input type = "password" name ="c_password1"><br>
    차량번호:       <input type = "text" name ="c_car_number" ><br>
    휴대전화 번호:       <input type = "text" name ="c_phone_number" ><br>
   <input style="position:static; right: 10px ; "  type='submit' value = '가입'>
>>>>>>> refs/remotes/origin/master
  </form>
</div>

<div class="signupcheck" >
=======
>>>>>>> alldaygramYM
 
</div>



</body>
</html>