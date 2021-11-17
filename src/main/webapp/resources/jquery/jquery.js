/*
	$(function() {
        $("body").on({				// <body>요소에
            click: function() {		// click 이벤트가 발생했을 때
                $("#1").fadeIn();
            }
        }, "#1");		// id가 "btn"인 요소에 이벤트 핸들러를 등록함.
    });





$(function() {
    $("#btn2").on("click", function() {
        $("data_1").fadeIn();	// id가 "divBox"인 요소를 점점 나타나게 함.
    });
    // $("#btn1").on("click", function() {
    //     $("#environments").fadeOut();	// id가 "divBox"인 요소를 점점 사라지게 함.
    // });
});
*/
$(data.jsp).ready(function() {
    $('#text1').show(); //페이지를 로드할 때 표시할 요소
    $('#text2').hide(); //페이지를 로드할 때 숨길 요소
	$('#text3').hide();
    $('btn2').click(function(){
    $ ('#text1').hide(); //클릭 시 첫 번째 요소 숨김
    $ ('#text2').show(); //클릭 시 두 번째 요소 표시
	$ ('#text1').hide();
	$('btn3').click(function(){
    $ ('#text1').hide(); //클릭 시 첫 번째 요소 숨김
    $ ('#text3').show(); //클릭 시 두 번째 요소 표시
	$ ('#text2').hide();
    return false;
    });
    });
	});


