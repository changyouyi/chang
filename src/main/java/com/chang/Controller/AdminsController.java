package com.chang.Controller;

import com.chang.Entity.Admins;
import com.chang.Entity.Students;
import com.chang.Service.AdminsService;
import com.chang.Service.StudentClassService;
import com.chang.Service.StudentsService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author cyy
 * @date 2018/9/11 10:30
 */
@Controller
@RequestMapping("admin")
public class AdminsController {

    @Autowired
    private AdminsService adminsService;

    @Resource
    private StudentsService studentsService;

    @Resource
    private StudentClassService studentClassService;

    @RequestMapping(value = "adminLogin", method = {RequestMethod.POST})
    @ResponseBody
    public Map<String, Object> Login(@Param("username") String username, @Param("password") String password, HttpServletRequest request) {
        Admins admins = new Admins();
        admins.setLoginId(username);
        admins.setLoginPwd(password);
        Admins adminLogin = adminsService.AdminLogin(admins);
        Map<String, Object> map = new HashMap<>();
        if (adminLogin == null) {
            map.put("status", "userNameOrPwdError");
        } else {
            map.put("status", "ok");
            map.put("admin", adminLogin);
            request.getSession().setAttribute("admin", adminLogin);
        }
        return map;
    }

    @RequestMapping(value = "LoginToHome", method = {RequestMethod.GET})
    public ModelAndView LoginToHome() {
        ModelAndView modelAndView = new ModelAndView("home");
        Integer studentCount = studentsService.getCount();
        modelAndView.addObject("studentCount", studentCount);
        Integer classCount = studentClassService.getCount();
        modelAndView.addObject("classCount", classCount);
        return modelAndView;
    }

    @RequestMapping(value = "studentQuery", method = {RequestMethod.GET})
    public ModelAndView gotoStudentQuery() {
        ModelAndView modelAndView = new ModelAndView("studentQuery");
        List<Students> studentsList = studentsService.getAllStudent();
        modelAndView.addObject("itemList", studentsList);
        return modelAndView;
    }

    @RequestMapping(value = "studentAdd", method = {RequestMethod.GET})
    public ModelAndView studentAdd() {
        ModelAndView modelAndView = new ModelAndView("studentAdd");

        return modelAndView;
    }

}
