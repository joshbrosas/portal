$(document).ready(function(){

    $('ul#nav li a').click(function(){
        var page = $(this).attr('href');
        $('#content1').html('<img src="images/159.GIF" id="loading" />');
        $('#content').load(page+'.php');
        return false;
    });
    $(".tip-top").tooltip({
        placement : 'top'
    });
});
$(document).ready(function(){
    $('#compose').click(function(){
        $('#message').toggle('slide', 'slow');
    })
});
$('.delbutton').click(function(e){
    var id = $(this).attr('id');
    $.ajax({
        type:'GET',
        url: 'delmessage.php',
        data: 'ID='+id,
        success: function(){
        }
    });
    $('#content1').html('<img src="images/159.GIF" id="loading"/>');
    $('#content').load('message.php');
    return false;
});