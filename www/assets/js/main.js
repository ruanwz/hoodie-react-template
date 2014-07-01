// initialize Hoodie
var hoodie  = new Hoodie()
$(document).ready(function () {
  $("#registerForm").submit(function(e){
    e.preventDefault();
    var username = $("#username").val();
    var password = $("#password").val();
    hoodie.account.signUp(username, password).done(function (user) {
        checkuser();
    });
  });
  $("#signout").click(function () {
      hoodie.account.signOut().done(function (user) {
          checkuser();
      });
  });
});
function checkuser() {
    if(hoodie.account.username){
        $("#registrationPage").hide();
        $("#userPage").show();
        $("#userPage h2").text("Welcome, "+hoodie.account.username+"!");
    }else{
        $("#registrationPage").show();
        $("#userPage").hide();
        $("#userPage h2").text("");
    }
}
