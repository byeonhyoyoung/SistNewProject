function pop1()
{
    window.open('../image/쇼핑몰사진/1.jpg','event','width=500,height=500');
}

function pop2()
{
    newpopup=window.open('../image/logoImg/box.png','','width=400,height=500');
    //앞에 var 지우면 전역변수 (var는 지역변수)
    setTimeout('newpopup.close()',3000);
}

