package com.project.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.project.bean.Msg;
import com.project.bean.Paper;
import com.project.bean.TAS;
import com.project.service.PaperService;
import com.project.service.TASService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Controller
public class PaperController {
    @Autowired
    private PaperService paperService;
    /**
     * 查询本周优秀文献学习
     */
    @RequestMapping(value = "expaper",method = RequestMethod.GET)
    @ResponseBody
    public Msg getExcellentPaper(@RequestParam("id")Integer id) throws ParseException {
        List<Paper> paper=new ArrayList<>();
        if (id>=2000){
            paper=paperService.TeacherGetExcellentPaper(id);
        }else {
            paper=paperService.getExcellentPaper(id);
        }
        PageInfo page=new PageInfo(paper,5);
        return Msg.success().add("page",page);
    }

    /**
     * 根据id查询文献
     */
    @RequestMapping(value = "selectedpaper",method = RequestMethod.GET)
    @ResponseBody
    public Msg getSelectedPaper(@RequestParam(value = "id")Integer id){
        Paper paper = paperService.getPaper(id);
        return Msg.success().add("paper",paper);
    }
    /**
     * 获得所有文献
     */
    @RequestMapping(value = "allpaper",method = RequestMethod.GET)
    @ResponseBody
    public Msg getAllPaper(HttpServletRequest req){
        HttpSession session = req.getSession();
        String number=session.getAttribute("user_number").toString();
        List<Paper> allMyPaper = paperService.getAllMyPaper(Integer.parseInt(number));
        return Msg.success().add("paper",allMyPaper);
    }

    /**
     * 批量删除文献
     */
    @RequestMapping(value = "/paper/{ids}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deletePaperbyIds(@PathVariable("ids")String ids){
        if(ids.contains("-")){
            String[] split = ids.split("-");
            List<Integer> list=new ArrayList<>();
            for (String id:split){
                list.add(Integer.parseInt(id));
            }
            paperService.deleteBatch(list);
        }else{
            Integer id=Integer.parseInt(ids);
            paperService.deletePaperbyId(id);
        }
        return Msg.success();
    }

    /**
     * 更新学习文献
     */
    @RequestMapping(value = "/paper/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public Msg updatePaper(Paper paper){
        paperService.updatePaper(paper);
        return Msg.success();
    }


    /**
     * 条件id查询学习文献
     */
    @RequestMapping(value = "/paper/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Msg getPaper(@PathVariable("id") Integer id){
        Paper paper=paperService.getPaper(id);
        return Msg.success().add("paper",paper);
    }
    /**
     * 保存新的学习文献
     */
    @RequestMapping(value = "paper",method = RequestMethod.POST)
    @ResponseBody
    public Msg savePaper(Paper paper){
        paperService.savePaper(paper);
        return Msg.success();
    }

    /**
     * 获得所有学生论文学习信息
     */
    @RequestMapping(value = "/paper",method = RequestMethod.GET)
    @ResponseBody
    public Msg getPaperWithJson(@RequestParam(value = "pn",defaultValue = "1") Integer pn
            ,@RequestParam(value = "paperName")String paperName
            ,@RequestParam(value = "paperStatus")String paperStatus
            ,@RequestParam(value = "paperKeyWord")String paperKeyWord
            , HttpServletRequest req){
        PageHelper.startPage(pn,5);
        HttpSession session = req.getSession();
        String number=session.getAttribute("user_number").toString();
        List<Paper> papers=new ArrayList<>();
        if (Objects.equals(paperStatus, "全部")){
            paperStatus="undefined";
        }
        if (Integer.parseInt(number)>=3000||Integer.parseInt(number)<2000)
            papers = paperService.getAllPaper(Integer.parseInt(number),paperName,paperStatus,paperKeyWord);
        else
            papers=paperService.getAllPaperbyStuNumber(Integer.parseInt(number),paperName,paperStatus,paperKeyWord);

        PageInfo page=new PageInfo(papers,5);
        return Msg.success().add("page",page);
    }
}
