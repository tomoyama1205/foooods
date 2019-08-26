$(function() {

  $(".shop-box").hover(function() {

    // カーソルが当たった時の処理
    $(this).css("background-color", "rgb(245,245,245)");

  }, function() {

    // カーソルが離れた時の処理
    $(this).css("background-color", "white");

  });
});