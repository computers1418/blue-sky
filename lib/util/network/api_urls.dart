class ApiUrls{

  String ipAddress = "http://65.1.216.213:9091";
  
  //SIGNUP
  String registerUser =  "/api/user/register";
  String validateOtpToRegister = "/api/user/validateToReg";

  //LOGIN
  String verifyOtpAtLogin = "/login/local";
  String login_generateOtp = "/login/generateOtp";

  //CHANGE PASSWORD
  String reset_password = "/login/reset/password";
  String send_otp_for_reset_pass = "/login/otp";
}