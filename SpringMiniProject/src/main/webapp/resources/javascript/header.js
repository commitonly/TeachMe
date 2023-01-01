    $("#btnloginMain").click(function () {
    location.href="${root}/loginF";
});

    $("#btnlogoutMain").click(function () {
    $.ajax({
        type:"get",
        url:"${root}/logout",
        dataType:"text",
        success:function(res){
            location.reload();
        },
    });
});
