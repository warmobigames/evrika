<script type="text/javascript">
    jQuery(document).ready(function(){

        $('.addCategory-input').keyup(function(event){
            if(event.keyCode === 13){
                cat = $('.addCategory-input').val();

                var color = ['f5f4e4; color:#000;','51cdc8','fbb963','f45673','65556e'];
                //var color = ['027b7f', 'ffa588', 'd62957', 'bf1e62', '572e4f']
                var color2 = color[Math.floor(Math.random() * color.length)];

                if(cat == 0){}else{
                    $('.cats').append('<div class="cat1" style="background:#'+ color2 +'">'+ cat + '<span>Удалить</span></div>');
                    $('.addCategory-input').val('');
                }
            }
            $('.cats div span').click(function(){
                $(this).parent().remove();
            })
        });

        $(window).bind("load", function() {
            fontSize();
            $(window).resize(function() { fontSize(); });
        });

        function fontSize() {
            var width = 320; // ширина, от которой идет отсчет
            var fontSize56 = 56; // минимальный размер шрифта
            var maxfontSize56 = 200; // максимальный размер шрифта
            var bodyWidth = $('html').width();
            var multiplier = bodyWidth / width;
            if ($('html').width() >= width)
                fontSize56 = Math.floor(fontSize56 * multiplier);
            $('#logo').css({fontSize: fontSize56+'px'});
            if(fontSize56 >= maxfontSize56)
                $('#logo').css({fontSize: maxfontSize56+'px'});
        };

    });
</script>
<body>
<div id="alert"></div>
<div id="logo">eureka</div>
<form id="search" onsubmit="return false;" method="post" action="">
    <div class="cats-wrap">
        <div class="cats">
        </div>
    </div>
    <input type="text" class="addCategory-input" name="addCategory">
    <textarea class="search_input" placeholder="Введите вопрос" autofocus="true" name="search"></textarea>
    <div class="addCategory btn"></div>
    <div class="addFile btn"></div>
    <input type="button" class="search_btn btn"></div>
</form>
<script>
    $(document).click(function(event){
        if($(event.target).closest('.addCategory, .addCategory-input, .search_btn').length)
            return;
        $('.addCategory-input').css({
            'width':'0',
            'opacity':'0'
        }).val('')

        $('.addCategory').css('background-image','url(/img/ico_addCategory.png)')
        event.stopPropagation();
    });
    $('.addCategory').click(function(){
        $('.addCategory-input').css({
            'width':'50%',
            'opacity':'1',
        }).focus();
        $('.addCategory').css('background-image','url(/img/ico_addCategory-hover.png)')
    });

</script>