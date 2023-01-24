package bean;
import java.sql.*;
public class LoginDao {

    public static boolean validate(LoginBean bean){
        System.out.println(bean.getUsername() + " " + bean.getPassword());
        return bean.getUsername() == null || bean.getPassword() == null;
    }
}