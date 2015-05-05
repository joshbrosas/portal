$(document).ready(function(){

    $('ul#nav li a').click(function(){
        var page = $(this).attr('href');
        $('#content1').html('<img src="images/159.GIF" id="loading" />');
        $('#content').load(page+'.php');
        return false;
    });
});