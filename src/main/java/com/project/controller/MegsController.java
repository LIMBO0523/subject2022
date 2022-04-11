package com.project.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.project.bean.Megs;
import com.project.bean.Msg;
import com.project.bean.TAS;
import com.project.service.MegsService;
import com.project.service.TASService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MegsController {
    @Autowired
    private MegsService megsService;

    /**
     * 显示为已读
     */
    @RequestMapping(value = "/msg/{id}", method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateMessage(Megs megs){
        Megs megs1=megsService.getMessage(megs.getId());
        megs1.setmStatus("y");
        megsService.updateMessage(megs1);
        return Msg.success();
    }

    /**
     * 单个删除/批量删除二合一
     * 批量删除：1-2-3
     * 单个删除：1
     */
    @RequestMapping(value = "/msg2/{ids}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteMessagebyId(@PathVariable("ids")String ids){
        if(ids.contains("-")){
            String[] split = ids.split("-");
            List<Integer> list=new ArrayList<>();
            for (String id:split){
                list.add(Integer.parseInt(id));
            }
            megsService.deleteBatch(list);
        }else{
            Integer id=Integer.parseInt(ids);
            megsService.deleteMessagebyId(id);
        }

        return Msg.success();
    }
    /**
     * 新增一条回复消息
     */
    @RequestMapping(value = "/msg", method = RequestMethod.POST)
    @ResponseBody
    public Msg addMessage(Megs megs){
        megsService.addMessage(megs);
        return Msg.success();
    }
    /**
     * 条件ID查询消息
     */
    @RequestMapping(value = "/msg/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Msg getMessage(@PathVariable("id") Integer id){
        Megs meg=megsService.getMessage(id);
        return Msg.success().add("meg",meg);
    }

    /**
     * 获得所有已收消息
     */
    @RequestMapping(value = "/msg",method = RequestMethod.GET)
    @ResponseBody
    public Msg getMegsWithJson(@RequestParam(value = "pn",defaultValue = "1") Integer pn, HttpServletRequest req){
        PageHelper.startPage(pn,5);
        HttpSession session = req.getSession();
        String number=session.getAttribute("user_number").toString();
        List<Megs> megs = megsService.getAllMegsByRecipient(Integer.parseInt(number));
        PageInfo page=new PageInfo(megs,5);
        return Msg.success().add("page",page);
    }

    /**
     * 获得所有已发消息
     */
    @RequestMapping(value = "/msg2",method = RequestMethod.GET)
    @ResponseBody
    public Msg getMegs(@RequestParam(value = "pn",defaultValue = "1") Integer pn, HttpServletRequest req){
        PageHelper.startPage(pn,5);
        HttpSession session = req.getSession();
        String number=session.getAttribute("user_number").toString();
        List<Megs> megs = megsService.getAllMegsBySend(Integer.parseInt(number));
        PageInfo page=new PageInfo(megs,5);
        return Msg.success().add("page",page);
    }
}
