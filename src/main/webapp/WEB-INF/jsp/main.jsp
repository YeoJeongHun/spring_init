<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<body>
	<!-- 제이쿼리 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function test() {
        	console.log('test함수 실행');
        	var inputId = $('#inputId').val();
        	var inputPw = $('#inputPw').val();
        	
        	console.log('inputId : ', inputId);
        	console.log('inputPw : ', inputPw);
        	$.ajax({
                type: 'POST',
                url: '/test',
                dataType: 'json',
                data: {
                	inputId: inputId,
                	inputPw: inputPw
                },
                success: function(data) {
                	if(data.result){
                		$('#testSpace').children().remove();
    					$('#testSpace').append('<div>로그인 메세지 : 성공</div>');
    					
                	}
                	else{
                		$('#testSpace').children().remove();
    					$('#testSpace').append('<div>로그인 메세지 : 실패</div>');
                	}
                }
            }).fail(function(err) {
                console.log('응답실패');
            });
        }
    </script>
    
    <div style="width: 10%; padding-top: 100px; margin:auto;">
		<div>
			<input id="inputId" placeholder="아이디 입력" />
		</div>
		<div>
			<input id="inputPw" placeholder="비밀번호 입력" />
		</div>
		<input type="button" onClick="test();" value="로그인">
	</div>
	<div id="testSpace"><div>ㅁㅁ</div></div>
</body>
</html>