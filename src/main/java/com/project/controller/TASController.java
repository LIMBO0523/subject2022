package com.project.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.project.bean.Msg;
import com.project.bean.TAS;
import com.project.service.TASService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 *处理老师和学生有关的请求
 */
@Controller
public class TASController {
    @Autowired
    private TASService tasService;
    /**
     * 查询信息发送者和接收者姓名
     */
    @RequestMapping(value = "/tas",method = RequestMethod.GET)
    @ResponseBody
    public Msg getSenderAndRecipient(@RequestParam(value = "sender")Integer sender,
                                     @RequestParam(value = "recipient")Integer recipient){
        TAS stu = tasService.getStu(sender);
        TAS stu1 = tasService.getStu(recipient);
        List<String> name=new ArrayList<>();
        name.add(stu.getName());
        name.add(stu1.getName());
        return Msg.success().add("name",name);
    }
    /**
     * 单个删除/批量删除学生二合一
     */
    @RequestMapping(value = "/stu/{ids}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deletePaperbyIds(@PathVariable("ids")String ids){
        if(ids.contains("-")){
            String[] split = ids.split("-");
            List<Integer> list=new ArrayList<>();
            for (String id:split){
                list.add(Integer.parseInt(id));
            }
            tasService.deleteBatch(list);
        }else{
            Integer id=Integer.parseInt(ids);
            tasService.deleteTASbyId(id);
        }
        return Msg.success();
    }

    /**
     *更新学生信息
     */
    @RequestMapping(value = "/stu/{id}" , method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateStu(TAS tas){
        tasService.updateStu(tas);
        return Msg.success();
    }
    /**
     * 条件id查询学生信息
     */
    @RequestMapping(value = "/stu/{id}" , method = RequestMethod.GET)
    @ResponseBody
    public Msg getStu(@PathVariable("id") Integer id){
        TAS tas=tasService.getStu(id);
        return Msg.success().add("tas",tas);
    }

    /**
     * 新增学生保存
     * @return
     */
    @RequestMapping(value = "/stu",method = RequestMethod.POST)
    @ResponseBody
    public Msg saveStu(TAS tas){
        tasService.saveStu(tas);
        return Msg.success();
    }

    /**
     * 获得所有教师信息
     */
    @RequestMapping(value = "/teacher",method = RequestMethod.GET)
    @ResponseBody
    public Msg getTeacher(@RequestParam(value = "pn",defaultValue = "1")Integer pn,
                          @RequestParam(value = "stuId")String stuId){
        PageHelper.startPage(pn,5);
        List<TAS> teahers;
        if ("undefined".equals(stuId)){
            teahers=tasService.getTeachers();
        }else {
            int n=0,id;
            char[] num =stuId.toCharArray();
            for (char c : num) {
                if (Character.isDigit(c))
                    n++;
            }
            if (n==num.length) {
                id = Integer.parseInt(stuId);
                teahers = tasService.getTeachersById(id);
            }
            else
                teahers=tasService.getTeacherByName(stuId);
        }
        PageInfo page=new PageInfo(teahers,5);
        return Msg.success().add("page",page);
    }

    /**
     * 获得所有学生信息
     */
    @RequestMapping(value = "/stu",method = RequestMethod.GET)
    @ResponseBody
    public Msg getStuWithJson(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
            @RequestParam(value="stuId") String stuId
            ,HttpServletRequest req){
        PageHelper.startPage(pn,5);
        HttpSession session = req.getSession();
        String number=session.getAttribute("user_number").toString();
        List<TAS> stu;
        if ("undefined".equals(stuId))
            stu = tasService.getStus(Integer.parseInt(number));
        else {
            int n=0,id;
            char[] num =stuId.toCharArray();
            for (char c : num) {
                if (Character.isDigit(c))
                    n++;
            }
            if (n==num.length) {
                id = Integer.parseInt(stuId);
                stu = tasService.getStusById(Integer.parseInt(number), id);
            }
            else
                stu=tasService.getStusByName(Integer.parseInt(number),stuId);
        }

        PageInfo page=new PageInfo(stu,5);
        return Msg.success().add("page",page);
    }

    /**
     * 处理登录
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public ModelAndView login(String luser, String lpass , HttpServletRequest req){

        TAS tas=tasService.getPassWithNumber(luser);
        HttpSession session = req.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (Objects.equals(tas.getPassword(), lpass))
        {
            session.setAttribute("user_id",tas.getName());
            session.setAttribute("user_number",tas.getNumber());
            if(tas.getNumber()>=3000)
                modelAndView.setViewName("redirect:check/admin_index.jsp");
            else if (tas.getNumber()<2000)
            modelAndView.setViewName("redirect:check/student_index.jsp");
            else if(tas.getNumber()>=2000&&tas.getNumber()<3000)
                modelAndView.setViewName("redirect:check/teacher_index.jsp");
        }
        else
            modelAndView.setViewName("forward:/index.jsp?meg=账户或密码不对");
        return modelAndView;
    }
    /**
     * 处理注册
     */
    @RequestMapping(value = "/regist",method = RequestMethod.POST)
    public ModelAndView regist(TAS tas ,String password2,HttpServletRequest req){
        boolean b = tas.getPassword().equals(password2);
        HttpSession session = req.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (b)
        {
            boolean i;
            i= tasService.getStu(tas.getNumber()) == null;
            if (i)
            {
                session.setAttribute("user_id",tas.getName());
                session.setAttribute("user_number",tas.getNumber());
                if(tas.getNumber()>=3000)
                    modelAndView.setViewName("redirect:check/admin_index.jsp");
                else if (tas.getNumber()<2000)
                    modelAndView.setViewName("redirect:check/student_index.jsp");
                else
                    modelAndView.setViewName("redirect:check/teacher_index.jsp");
            }else {
                modelAndView.setViewName("forward:/index.jsp?mesg=用户已经存在");
            }
        }
        else{
            modelAndView.setViewName("forward:/index.jsp?mesg=两次密码不同");
        }
        return modelAndView;
    }
}
