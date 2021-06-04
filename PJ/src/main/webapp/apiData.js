
	$.ajax({
		url: 'Data.do',
		type: 'get',
		dataType: 'xml',
		success: function(data) {
            console.log(data);
			var all_decideCnt = ''; //누적 확진자 수
			var all_clearCnt = ''; //누적 격리해제 수
			var all_deathCnt = ''; //누적 사망자 수
			var all_examCnt = ''; //누적 검사진행 수
			var all_careCnt = ''; //누적 치료 중 수
			var ch = '';
			
            $(data).find('item').each(function() {
				document.body.innerHTML += '<br>';
				var date = new Date(); //오늘 날짜 구하기
				var today = date.getFullYear() + '-' + ("00" + (date.getMonth() + 1)).slice(-2) + '-' + ('00' + date.getDate()).slice(-2);
            	var createDt = $(this).find('createDt').text(); //api 등록 날짜

				var decideCnt = $(this).find('decideCnt').text();
				var clearCnt = $(this).find('clearCnt').text();
				var deathCnt = $(this).find('deathCnt').text();
				var examCnt = $(this).find('examCnt').text();
				var careCnt = $(this).find('careCnt').text();
				
				if(date.getHours() < 10) //10시 이전
					today = date.getFullYear() + '-' + ("00" + (date.getMonth() + 1)).slice(-2) + '-' + ('00' + (date.getDate()-1)).slice(-2);
				
				if(today == createDt.substring(0,10)) { //당일 누적 통계
					all_decideCnt = decideCnt;
					all_clearCnt = clearCnt;
					all_deathCnt = deathCnt;
					all_examCnt = examCnt;
					all_careCnt = careCnt;
					
					$('#all_decide').append(all_decideCnt + '명');
					$('#all_clear').append(all_clearCnt + '명');
					$('#all_death').append(all_deathCnt + '명');
					$('#all_exam').append(all_examCnt + '명');
					$('#all_care').append(all_careCnt + '명');
				} else { //어제 대비 당일 증가 수
					$('#decide').append(all_decideCnt - decideCnt + ((all_decideCnt - decideCnt > 0) ? '▲' : '-'));
					$('#clear').append(all_clearCnt - clearCnt + ((all_clearCnt - clearCnt > 0) ? '▲' : '-'));
					$('#death').append(all_deathCnt - deathCnt + ((all_deathCnt - deathCnt > 0) ? '▲' : '-'));
					$('#exam').append(all_examCnt - examCnt + ((all_examCnt - examCnt > 0) ? '▲' : '-'));
					$('#care').append(all_careCnt - careCnt + ((all_careCnt - careCnt > 0) ? '▲' : '-'));
				}
            });
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) { 
        	alert("api호출 오류 \nStatus: " + textStatus + ", Error: " + errorThrown); 
    	} 
	});