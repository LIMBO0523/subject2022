package com.project.controller;

import com.project.bean.Curriculum;
import com.project.bean.Msg;
import com.project.bean.TAS;
import com.project.service.CurriculumService;
import com.project.service.TASService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class CurriculumController {
    @Autowired
    private TASService tasService;
    @Autowired
    private CurriculumService curriculumService;

    /**
     * 修改课程
     */
    @RequestMapping(value = "/curriculum/{id}",method = RequestMethod.PUT)
    @ResponseBody
    public Msg updateCurriculum(Curriculum curriculum){
        curriculumService.updateCurriculum(curriculum);
        return Msg.success();
    }
    /**
     *获得该课程
     */
    @RequestMapping(value = "/curriculum",method = RequestMethod.GET)
    @ResponseBody
    public Msg getCurriculum(@RequestParam(value = "number")Integer number){
        if (number>=2000&&number<3000){
            Curriculum curriculum = curriculumService.getCurriculum(number);
            return Msg.success().add("curriculum",curriculum);

        }else if (number<2000) {
            TAS stu = tasService.getStu(number);
            Curriculum curriculum = curriculumService.getCurriculum(stu.gettNumber());
            return Msg.success().add("curriculum", curriculum);
        }else {
            return Msg.success();
        }
    }
}
