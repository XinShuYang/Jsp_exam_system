$(function() {
	var fullscreen_time = 0,
		alter_time = 0,
		check_no = 0,
		examID = $("#examid").val(),
		paperID = $("#paperid").val(),
		holetime = $("#hole_time").html().replace(/[^0-9]/ig,""),
		time = $("#used_time").val();
		
	$("#time").html(time);
	$(".quit_btn").hide();
	window.showtime = function(){
		time -= 1;
		$("#time").html(time);
		if (time <= parseInt(holetime/2)){
			$("#time").addClass("force_red");
		}
		if (time == 0){
			$.ajax({
				method: 'GET',
				url: '../exam/Handexam.jsp',
				dateType: 'json',
				data: {
					type:"objective",
					examID:examID,
					paperID:paperID,
				},
				success:function() {
					$('.alert_msg').html('考试结束，系统已自动帮你submit试卷！');
					$('.alert_btn').hide();
					$(".quit_btn").show();
					$(".alert_screen").show();
					interval_id = window.clearInterval(interval_id);
				},
			});
		}
	}
	function requestFullScreen() {
		var de = document.documentElement;
		if (de.requestFullscreen) {
			de.requestFullscreen();
		} else if (de.mozRequestFullScreen) {
			de.mozRequestFullScreen();
		} else if (de.webkitRequestFullScreen) {
			de.webkitRequestFullScreen();
		} else if(de.msRequestFullscreen) {
			de.msRequestFullscreen();
		}
	}
	window.onresize = function (){
	    if(window.outerHeight === screen.height && window.outerWidth === screen.width) {
	    	fullscreen_time += 1;
	    } else {
	        $(".alert_screen").show();
	    }
	}
	window.onblur = function (){
		fullscreen_time=fullscreen_time+1;
		if(fullscreen_time > 2 && fullscreen_time <= 5){
			$.ajax({
				method: 'GET',
				url: '../exam/Handexam.jsp',
				dateType: 'json',
				data: {
					type:"cheat",
					examID:examID,
					paperID:paperID,
				},
				success:function() {
					$(".alert_screen").show();
					$('.alert_msg').addClass('force_red');
					$('.alert_msg').html('Because you are a serious violation of the rules of the online exam! Constitutes cheating, this test is automatically terminated! !'+fullscreen_time);
					$('.alert_btn').hide();
					$(".quit_btn").show();
				},
			});
		}
		else if(fullscreen_time >0)
			{
			
			$('.alert_msg').html('This is the'+(fullscreen_time)+'time WARNING: Please return to full-screen mode now third exit full-screen treatment will be considered cheating!');
			$('.alert_btn').html('Return');
			
			}
	}
	document.addEventListener('visibilitychange', function() {
	    if (document.hidden) {
	        alter_time =alter_time+1;
	    }
	    if (alter_time > 1 && fullscreen_time > 1 && fullscreen_time <= 5) {
	    	$.ajax({
				method: 'GET',
				url: '../exam/Handexam.jsp',
				dateType: 'json',
				data: {
					type:"cheat",
					examID:examID,
					paperID:paperID,
				},
				success:function() {
					$(".alert_screen").show();
					$('.alert_msg').addClass('force_red');
					$('.alert_msg').html('Because you are a serious violation of the rules of the online exam! Constitutes cheating, this test is automatically terminated! !');
					$('.alert_btn').hide();
					$(".quit_btn").show();
				},
			});
	    }
	    else if(alter_time==1)
		{
		
		$('.alert_msg').html('This is the'+(fullscreen_time+1)+'time WARNING: Please return to full-screen mode now third exit full-screen treatment will be considered cheating!');
		$('.alert_btn').html('Return');
		
		}
	});
	$('.single_choice').selectlist({
		zIndex: 100,
		width: 150,
		height: 40,
	});
	$('.judge_choice').selectlist({
		zIndex: 100,
		width: 150,
		height: 40,
	});
	
	$('.alert_btn').on('click',function () {
		if(fullscreen_time == 0){
			interval_id = window.setInterval("showtime()",60000);
		}
		console.log(fullscreen_time);
		$('.alert_msg').addClass('force_red');
		if(fullscreen_time<2) {
			$('.alert_msg').html('This is the'+(fullscreen_time+1)+'time WARNING: Please return to full-screen mode now third exit full-screen treatment will be considered cheating!');
			$('.alert_btn').html('Return');
		} else {
			$.ajax({
				method: 'GET',
				url: '../exam/Handexam.jsp',
				dateType: 'json',
				data: {
					type:"cheat",
					examID:examID,
					paperID:paperID,
				},
				success:function() {
					$('.alert_msg').html('Because you ignore the warning three times to perform illegal operations (including exit full screen mode or perform examinations unrelated operation), constituted cheating, the exam score of 0! Information will be submitted to the Registry and credited to your credit record!');
					$('.alert_btn').hide();
					$(".quit_btn").show();
				},
			});
		}
		requestFullScreen();
		$(".alert_screen").hide();
	});
	$('#submit').on('click',function () {
		$.ajax({
			method: 'GET',
			url: '../handle/savePaper.jsp',
			dateType: 'json',
			data: {
				type:"objective",
				examID:examID,
				paperID:paperID,
			},
			success:function() {
				location.replace("../examination/Login.jsp")
			},
		});
	});
});