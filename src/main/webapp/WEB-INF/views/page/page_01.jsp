<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="resources/js/valid.js"></script>
<script>
	$(function() {
		$("#deleteImg").on("click", function() {
			deleteImage(); // 미리보기 함수
		})
		$("#eimg").on("change", function() {
			previewImage(this); // 미리보기 함수
		})

		$("#idcheck").on("click", idcheck);

		$("#btnReturn").on("click", function() {
			location.replace("home");
		})
	});

	function previewImage(input) {
		// 이미지를 선택하면
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#upload").attr("src", e.target.result)
			}
			reader.readAsDataURL(input.files[0]);
		}
	};

	function idcheck() {
		var userid = $("#userid").val();
		if(userid == ""){
			alert("아이디를 입력하세요.");
			return
		}
		$.ajax({
			type : 'GET',
			url : 'idcheck',
			data : "userid=" + userid,
			success : function(resp) {
				alert(resp);
				if(resp=="able"){
					$("#regbtn").attr('disabled', false);
				}
			}
		})
	};
	function deleteImage() {
		$("#upload").attr("src", "resources/img/employee/avatar.png")

	}
	function regdata() {
		var userid = document.getElementById("userid");
		var userpwd = document.getElementById("userpwd");
		var username = document.getElementById("userName");
		var rank = document.getElementById("rank");
		var email = document.getElementById("email");
		var phone = document.getElementById("ePhone");

		var img = document.getElementById("eImg");

		if (userid.value == '' || userpwd.value == '' || username.value == ''
				|| rank.value == '0' || email.value == '' || phone.value == '') {
			alert('빈칸을 채워주세요.');
			userid.focus();
			return;
		}
		var form = document.getElementById("regForm");
		form.submit();
	}
</script>

<style>
span {
	color: red;
	font-size: small;
}
</style>


<!-- accessterm page   -->
<div class="page_content_odd">
	<div class="page_title_container">
		<div class="page_title_container_div"></div>
	</div>
	<div class="page_container">
		<form id="regForm" action="signup" method="POST"
			enctype="multipart/form-data">
			<div class="container mt-5">
				<div class="row tm-content-row">
					<div class="col-12 tm-block-col">
						<div class="tm-bg-primary-dark tm-block tm-block-h-auto">
							<h2 class="tm-block-title">役柄</h2>
							<p class="text-white">Accounts</p>
							<select class="custom-select" id="rank" name="rank">
								<option value="1">店長</option>
								<option value="2">マネージャー</option>
								<option value="3">クルー</option>
								<option value="4">バイト</option>
							</select>
						</div>
					</div>
				</div>
				<!-- row -->
				<div class="row tm-content-row">
					<div class="tm-block-col tm-col-avatar">
						<div class="tm-bg-primary-dark tm-block tm-block-avatar">
							<h2 class="tm-block-title">写真変換</h2>
							<div class="tm-avatar-container">
								<img id="upload" src="resources/data/img/profile/avatar.png"
									alt="Avatar" class="tm-avatar img-fluid mb-4" /> <a href="#"
									class="tm-avatar-delete-link" id="deleteImg"> <i
									class="far fa-trash-alt tm-product-delete-icon"></i>
								</a>
							</div>
							<input id="eimg" name="upload" type="file" style="display: none;" />
							<span id="imgresult"></span> <input type="button"
								class="btn btn-primary btn-block mx-auto"
								value="アカウントイメージのアップロード"
								onclick="document.getElementById('eimg').click();" />
						</div>
					</div>
					<div class="tm-block-col tm-col-account-settings">
						<div class="tm-bg-primary-dark tm-block tm-block-settings">
							<h2 class="tm-block-title">個人情報入力</h2>
							<div class="tm-signup-form row">
								<div class="form-group col-lg-6">
									<label for="userid">Account Id&nbsp;&nbsp;&nbsp;<button type="button" id="idcheck" 
									style="background-color: white;border: 2px solid #6DB385;color: black;width: 100px">check</button></label>
									
									<input id="userid" name="userid" type="text"
										class="form-control validate" /> <span id="idresult"></span>
									
								</div>
								<div class="form-group col-lg-6">
									<label for="name">Account Name</label> <input id="userName"
										name="userName" type="text" class="form-control validate" />
								</div>
								<div class="form-group col-lg-6">
									<label for="password">Password</label> <input id="userpwd"
										name="userpwd" type="password" class="form-control validate" />
									<span id="pwdresult"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="re_password">Re-enter Password</label> <input
										type="password" id="re_password" class="form-control validate" />
									<span id="re_pwdresult"></span>
								</div>
								<div class="form-group col-lg-6">
									<label for="email">Account Email</label> <input id="email"
										name="email" type="email" class="form-control validate" />
								</div>
								<div class="form-group col-lg-6">
									<label for="phone">Phone</label> <input id="ePhone"
										name="ePhone" type="tel" class="form-control validate" />
								</div>
							</div>
							<div class="col-12">
								<label class="tm-hide-sm">&nbsp;</label>
								<input type="button" id="regbtn" value="会員加入完了"
									class="btn btn-primary btn-block text-uppercase"
									onclick="regdata();" disabled="disabled">
							</div>
							<div class="col-12">
								<label class="tm-hide-sm">&nbsp;</label>
								<button type="button"
									class="btn btn-primary btn-block text-uppercase" id="btnReturn">
									会員加入の取り消し</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

</div>