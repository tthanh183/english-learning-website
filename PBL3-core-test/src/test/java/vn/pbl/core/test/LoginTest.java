//package vn.pbl.core.test;
//
//import org.apache.log4j.Logger;
//import org.testng.annotations.Test;
//import vn.pbl.core.dao.UserDao;
//import vn.pbl.core.daoimpl.UserDaoImpl;
//import vn.pbl.core.persistence.entity.UserEntity;
//
//public class LoginTest {
//    private final Logger log = Logger.getLogger(this.getClass());
//    @Test
//    public void checkIsUserExist() {
//        UserDao userDao = new UserDaoImpl();
//        String email="trantant88@gmail.com";
//        String password="12345678";
//        UserEntity entity = userDao.findUserByEmailAndPassword(email, password);
//        if(entity != null) {
//            log.error("login success");
//        }else {
//            log.error("login fail");
//        }
//    }
//    @Test
//    public void FindRoleByUser() {
//        UserDao userDao = new UserDaoImpl();
//        String email = "trantant88@gmail.com";
//        String password = "12345678";
//        UserEntity entity = userDao.findUserByEmailAndPassword(email,password);
//        log.error(entity.getRoleEntity().getRoleId()+"-"+entity.getRoleEntity().getRoleName());
//    }
//}
