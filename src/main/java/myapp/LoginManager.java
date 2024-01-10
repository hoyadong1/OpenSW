package myapp;

public class LoginManager {
	public boolean authenticate(UserBean user) {
		if(user.getUserid().equals("alice") && user.getPasswd().equals("1234")) {
			user.setEmail(user.getUserid()+"@myserver.com");
			return true;
		}else {
			user.setError("로그인 에러!!!");
			return false;
		}
	}
}
