package com.project.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.project.bean.Experiment;
import com.project.bean.Msg;
import com.project.bean.Paper;
import com.project.service.ExperimentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ExperimentController {
    @Autowired
    private ExperimentService experimentService;
    /**
     * 查询优秀实验
     */
    @RequestMapping(value = "exexp",method = RequestMethod.GET)
    @ResponseBody
    public Msg getExcellentExp(@RequestParam(value = "id")Integer id) throws ParseException {
        List<Experiment> experiments=new ArrayList<>();
        if (id>=2000){
            experiments=experimentService.TeacherGetExcellentExp(id);
        }else {
            experiments=experimentService.getExcellentExp(id);
        }
        PageInfo page=new PageInfo(experiments,5);
        return Msg.success().add("page",page);

    }
    /**
     * 根据id查询实验
     */
    @RequestMapping(value = "selectedexp",method = RequestMethod.GET)
    @ResponseBody
    public Msg getTheExperiment(@RequestParam(value = "id")Integer id){
        Experiment experiment = experimentService.getExperiment(id);
        return Msg.success().add("exp",experiment);
    }
    /**
     * 查询所有实验
     */
    @RequestMapping(value = "allexp",method = RequestMethod.GET)
    @ResponseBody
    public Msg getAllExperiment(HttpServletRequest req){
        HttpSession session = req.getSession();
        String number=session.getAttribute("user_number").toString();
        List<Experiment> allExperimentByNumber = experimentService.getAllExperimentByNumber(Integer.parseInt(number));
        return Msg.success().add("exp",allExperimentByNumber);

    }
    /**
     * 批量删除实验
     */
    @ResponseBody
    @RequestMapping(value = "/exp/{ids}",method = RequestMethod.DELETE)
    public Msg deleteExperimentById(@PathVariable("ids")String ids){
        if(ids.contains("-")){
            String[] split = ids.split("-");
            List<Integer> list=new ArrayList<>();
            for (String id:split){
                list.add(Integer.parseInt(id));
            }
            experimentService.deleteBatch(list);
        }else{
            Integer id=Integer.parseInt(ids);
            experimentService.deleteExperimentbyId(id);
        }
        return Msg.success();
    }

    /**
     * 更新实验
     */
    @RequestMapping(value = "/exp/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateExp(Experiment experiment){
        experimentService.updateExperiment(experiment);
        return Msg.success();
    }

    /**
     * 条件id查询实验
     */
    @RequestMapping(value = "/exp/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Msg getExp(@PathVariable("id") Integer id){
        Experiment experiment=experimentService.getExperiment(id);
        return Msg.success().add("exp", experiment);
    }

    /**
     * 新增实验
     */
    @RequestMapping(value = "exp", method = RequestMethod.POST)
    @ResponseBody
    public Msg saveExperiment(Experiment experiment){
        experimentService.saveExperiment(experiment);
        return Msg.success();
    }

    /**
     * 获得所有学生的实验信息
     */
    @RequestMapping(value = "exp", method = RequestMethod.GET)
    @ResponseBody
    public Msg getExperimentWithJson(@RequestParam(value = "pn",defaultValue = "1") Integer pn,
                                     @RequestParam(value = "expName")String expName,
                                     @RequestParam(value = "expStatus")String expStatus
                                     ,HttpServletRequest req){

        HttpSession session = req.getSession();
        String number=session.getAttribute("user_number").toString();
        if ("全部".equals(expStatus))
            expStatus="undefined";
        List<Experiment> experiments;
        if (Integer.parseInt(number)>=3000||Integer.parseInt(number)<2000) {
            PageHelper.startPage(pn, 5);
            experiments = experimentService.getAllExperiment(Integer.parseInt(number), expName, expStatus);
        }
        else
        {
            experiments = experimentService.getAllExperimentByStuNumber(Integer.parseInt(number),expName,expStatus,pn);
        }

        PageInfo page=new PageInfo(experiments,5);
        return Msg.success().add("page",page);
    }
}
