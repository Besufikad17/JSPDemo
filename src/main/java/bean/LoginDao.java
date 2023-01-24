package bean;

public class LoginDao {

    public static boolean validate(LoginBean bean){
        System.out.println(bean.getUsername() + " " + bean.getPassword());
        boolean stats = true;
        if(bean.getUsername() != null && bean.getPassword() != null){
              stats = false;
//            try {
//                Connection con = Utils.getConnection("jdbc:mysql://localhost:3306/ASTU", "root", "");
//                PreparedStatement ps = con.prepareStatement("select * from Admin where username=? and password=?");
//                ps.setString(1,bean.getUsername());
//                ps.setString(2, bean.getPassword());
//
//                ResultSet rs=ps.executeQuery();
//                stats=rs.next();
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
//            }

        }
        return stats;
    }
}