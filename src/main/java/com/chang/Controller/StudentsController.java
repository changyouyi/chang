package com.chang.Controller;

import com.chang.Entity.Students;
import com.chang.Service.StudentsService;
import com.chang.Utils.DateConverter;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author cyy
 * @date 2018/9/11 10:30
 */
@Controller
@RequestMapping("student")
public class StudentsController {

    @Resource
    private StudentsService studentsService;


    @RequestMapping(value = "addStudent", method = {RequestMethod.POST, RequestMethod.GET})
    public String addStudent(Students students) {
        try {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            students.setBirthday(formatter.parse(formatter.format(students.getBirthday())));
            studentsService.insertStudent(students);
            return "redirect:/admin/studentQuery.do";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "studentAdd";
    }

}
