package bean;

public class SignupDao {

    public static boolean signup(SignupBean bean){
        System.out.println(bean.getUsername() + " " + bean.getEmail() + " " + bean.getPassword());
        boolean stats = false;
//        if(bean.getUsername() != null && bean.getPassword() != null){
//            try {
//                Connection con = Utils.getConnection("mysql://localhost:3306/ASTU", "root", "");
//                PreparedStatement ps = con.prepareStatement("INSERT INTO Admin(username,password) VALUES(?,?)");
//                ps.setString(1, bean.getUsername());
//                ps.setString(2, bean.getPassword());
//                ps.executeUpdate();
//                stats = true;
//            } catch (SQLException e) {
//                throw new RuntimeException(e);
//            }
//        }
        return stats;
    }

}
