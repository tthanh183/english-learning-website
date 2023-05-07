package vn.pbl.controller.admin;

import vn.pbl.core.web.utils.SingletonServiceUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/admin-user-statistic.html")
public class StatisticController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        Map<String, Object> maleMap = buildMapPropertiesMale();
//        Map<String, Object> femaleMap = buildMapPropertiesFeMale();
//        Object[] objects1 = SingletonServiceUtil.getUserServiceInstance().findByProperty(maleMap,null,null,null,null);
//        Long male = (Long)objects1[0];
        Long male = SingletonServiceUtil.getUserServiceInstance().maleCount(null,null,null,null,null);
//        Object[] objects2 = SingletonServiceUtil.getUserServiceInstance().findByProperty(femaleMap,null,null,null,null);
//        Long female = (Long)objects2[0];
        Long female = SingletonServiceUtil.getUserServiceInstance().femaleCount(null,null,null,null,null);
        request.setAttribute("maleCount", male);
        request.setAttribute("femaleCount",female );
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/statistics/userstatistic.jsp");
        rd.forward(request, response);
    }
//    private Map<String,Object> buildMapPropertiesMale() {
//        Map<String, Object> properties = new HashMap<String, Object>();
//        String male = null;
//        properties.put("gender",male);
//        return properties;
//    }
//    private Map<String,Object> buildMapPropertiesFeMale() {
//        Map<String, Object> properties = new HashMap<String, Object>();
//        String female = null;
//        properties.put("gender",female);
//        return properties;
//    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
