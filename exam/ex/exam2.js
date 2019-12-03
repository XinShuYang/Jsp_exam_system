$(function() {
	var type = "ajax";
	$(".check").on('change',function() {
		var check_id = $(this).attr("name");
		var id_no=check_id.replace(/[^0-9]/ig,"");
		var choice = $(this).val();
		$.ajax({
			method: 'GET',
			url: 'Handexam.jsp',
			dateType: 'json',
			data: {
				a:choice,
				b:id_no,
				tap:type
			},
			success:function() {
				console.log("hhhh");
			},
		});
	});
	$(".judge_choice").on('change',function() {
		var judge_id = $(this).attr("name");
		var id_no=judge_id.replace(/[^0-9]/ig,"");
		var choice = $(this).val();
		$.ajax({
			method: 'GET',
			url: 'Handexam.jsp',
			dateType: 'json',
			data: {
				a:choice,
				b:id_no,
				tap:type
			},
			success:function() {
				console.log("hhhh");
			},
		});
	});
	$(".exam_many_lines").on('change',function() {
		var essay_id = $(this).attr("name");
		var answer = $(this).val();
		var id_no = essay_id.replace(/[^0-9]/ig,"");
		$.ajax({
			method: 'GET',
			url: 'Handexam.jsp',
			dateType: 'json',
			data: {
				a:answer,
				b:id_no,
				tap:type
			},
			success:function() {
				console.log("hhhh");
			},
		});
	});
});