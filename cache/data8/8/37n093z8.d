   �         )https://persons.shgjj.com/js/banner315.js�       ����      %|6 ;O�              �      
     O K      Date   Sat, 14 Apr 2018 02:28:53 GMT   Server   nginx   Content-Type   text/javascript   Vary   Accept-Encoding   ETag   W/"5174-1386032687000"   Last-Modified   Tue, 03 Dec 2013 01:04:47 GMT   Content-Encoding   gzip $(function() {
    var index = 0;
    var adtimer;
    var _wrap = $("#banner3 ol"); //
    var len = $("#banner3 ol li").length;
    //len=1;
    if (len > 1) {
        $("#banner3").hover(function() {
            clearInterval(adtimer);
        },
        function() {
            adtimer = setInterval(function() {

                var _field = _wrap.find('li:first'); //�˱������ɷ����ں�����ʼ��,li:firstȡֵ�Ǳ仯��
                var _h = _field.height(); //ȡ��ÿ�ι����߶�(���й��������,�˱����������ڿ�ʼ��,������м��ʱ����ʱ)
                _field.animate({
                    marginTop: -_h + 'px'
                },
                500,
                function() { //ͨ��ȡ��marginֵ,���ص�һ��
                    _field.css('marginTop', 0).appendTo(_wrap); //���غ�,�����е�marginֵ����,�����뵽���,ʵ���޷����
                })

            },
            5000);
        }).trigger("mouseleave");
        function showImg(index) {
            var Height = $("#banner3").height();
            $("#banner3 ol").stop().animate({
                marginTop: -_h + 'px'
            },
            5000);
        }

        $("#banner3").mouseover(function() {
            $("#banner3 .mouse_direction").css("display", "block");
        });
        $("#banner3").mouseout(function() {
            $("#banner3 .mouse_direction").css("display", "none");
        });
    }

    $("#banner3").find(".mouse_top").click(function() {
        var _field = _wrap.find('li:first'); //�˱������ɷ����ں�����ʼ��,li:firstȡֵ�Ǳ仯��
        var last = _wrap.find('li:last'); //�˱������ɷ����ں�����ʼ��,li:lastȡֵ�Ǳ仯��
        //last.prependTo(_wrap);
        var _h = last.height();
        $("#banner3 ol").css('marginTop', -_h + "px");
        last.prependTo(_wrap);
        $("#banner3 ol").animate({
            marginTop: 0
        },
        500,
        function() { //ͨ��ȡ��marginֵ,���ص�һ��
            //$("#banner3 ol").css('marginTop',0).prependTo(_wrap);//���غ�,�����е�marginֵ����,�����뵽���,ʵ���޷����
        })
    });
    $("#banner3").find(".mouse_bottom").click(function() {
        var _field = _wrap.find('li:first'); //�˱������ɷ����ں�����ʼ��,li:firstȡֵ�Ǳ仯��
        var _h = _field.height();
        _field.animate({
            marginTop: -_h + 'px'
        },
        500,
        function() { //ͨ��ȡ��marginֵ,���ص�һ��
            _field.css('marginTop', 0).appendTo(_wrap); //���غ�,�����е�marginֵ����,�����뵽���,ʵ���޷����
        })
    });
});


$(function() {
    var index = 0;
    var adtimer;
    var _wrap = $("#banner4 ol"); //
    var len = $("#banner4 ol li").length;
    //len=1;
    if (len > 1) {
        $("#banner4").hover(function() {
            clearInterval(adtimer);
        },
        function() {
            adtimer = setInterval(function() {

                var _field = _wrap.find('li:first'); //�˱������ɷ����ں�����ʼ��,li:firstȡֵ�Ǳ仯��
                var _h = _field.height(); //ȡ��ÿ�ι����߶�(���й��������,�˱����������ڿ�ʼ��,������м��ʱ����ʱ)
                _field.animate({
                    marginTop: -_h + 'px'
                },
                500,
                function() { //ͨ��ȡ��marginֵ,���ص�һ��
                    _field.css('marginTop', 0).appendTo(_wrap); //���غ�,�����е�marginֵ����,�����뵽���,ʵ���޷����
                })

            },
            5000);
        }).trigger("mouseleave");
        function showImg(index) {
            var Height = $("#banner4").height();
            $("#banner4 ol").stop().animate({
                marginTop: -_h + 'px'
            },
            5000);
        }

        $("#banner4").mouseover(function() {
            $("#banner4 .mouse_direction").css("display", "block");
        });
        $("#banner4").mouseout(function() {
            $("#banner4 .mouse_direction").css("display", "none");
        });
    }

    $("#banner4").find(".mouse_top").click(function() {
        var _field = _wrap.find('li:first'); //�˱������ɷ����ں�����ʼ��,li:firstȡֵ�Ǳ仯��
        var last = _wrap.find('li:last'); //�˱������ɷ����ں�����ʼ��,li:lastȡֵ�Ǳ仯��
        //last.prependTo(_wrap);
        var _h = last.height();
        $("#banner4 ol").css('marginTop', -_h + "px");
        last.prependTo(_wrap);
        $("#banner4 ol").animate({
            marginTop: 0
        },
        500,
        function() { //ͨ��ȡ��marginֵ,���ص�һ��
            //$("#banner4 ol").css('marginTop',0).prependTo(_wrap);//���غ�,�����е�marginֵ����,�����뵽���,ʵ���޷����
        })
    });
    $("#banner4").find(".mouse_bottom").click(function() {
        var _field = _wrap.find('li:first'); //�˱������ɷ����ں�����ʼ��,li:firstȡֵ�Ǳ仯��
        var _h = _field.height();
        _field.animate({
            marginTop: -_h + 'px'
        },
        500,
        function() { //ͨ��ȡ��marginֵ,���ص�һ��
            _field.css('marginTop', 0).appendTo(_wrap); //���غ�,�����е�marginֵ����,�����뵽���,ʵ���޷����
        })
    });
});