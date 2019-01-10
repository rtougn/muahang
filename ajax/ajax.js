$(document).ready(function() {  
    loadtien();
    loadtui();
    var explode = function(){
                  $("#kq").text("");
                };
    function loadtien(){
        $.ajax({
            url: 'php/tien.php',
            type: "POST",
            data: ({}),
            success: function(data){
                $("#tien").html(data);
            }
        });
    }
    function loadtui(){
        $.ajax({
            url: 'php/tui.php',
            type: "POST",
            data: ({}),
            success: function(data){
                $("#tui").html(data);
            }
        });
    }
    $("#btn").click(function(){ 
        $.ajax({
            url: 'php/mua.php',
            type: "POST",
            data: ({ten: $("input[name=txtten]:checked").val(),soluong: $('#sl').val()}),
            success: function(data){
                $("#kq").text(data);
                loadtien();
                loadtui();
                setTimeout(explode, 3000);
            }
        });        
    });
});
$("input[name=interview]:checked").val()