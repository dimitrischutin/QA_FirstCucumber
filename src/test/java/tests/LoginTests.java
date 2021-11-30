package tests;

import org.junit.Before;
import org.junit.Test;

public class LoginTests {

    LoginPage login;

    @Before
    public void setUp(){
        login = new LoginPage();
    }

    @Test
    public void loginPositiveTest(){
        login.with("kroosss@gm.com", "Kroos12345~12");
    }

    @Test
    public void loginNegativeTest(){
        login.with("kroosss@gm.com", "roos12345~123");
        login.invalidLogin();
    }
}
