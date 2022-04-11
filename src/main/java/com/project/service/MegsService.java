package com.project.service;

import com.project.bean.Megs;
import com.project.bean.MegsExample;
import com.project.bean.Msg;
import com.project.dao.MegsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class MegsService {
    @Autowired
    private MegsMapper megsMapper;
    /**
     * 批量删除
     */
    public void deleteBatch(List<Integer> ids){
        MegsExample megsExample=new MegsExample();
        MegsExample.Criteria criteria=megsExample.createCriteria();
        criteria.andIdIn(ids);
        megsMapper.deleteByExample(megsExample);
    }
    /**
     * 删除消息
     */
    public void deleteMessagebyId(Integer id){
        megsMapper.deleteByPrimaryKey(id);
    }
    /**
     * 新增消息
     */
    public void addMessage(Megs megs){
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String dateNowStr = sdf.format(d);
        megs.setmStatus("n");
        megs.setmTime(dateNowStr);
        megsMapper.insertSelective(megs);
    }
    /**
     * 查询消息
     */
    public Megs getMessage(Integer id){
        return megsMapper.selectByPrimaryKey(id);
    }
    /**
     * 获取所有已收消息
     */
    public List<Megs>  getAllMegsByRecipient(Integer number){
        MegsExample megsExample=new MegsExample();
        MegsExample.Criteria criteria=megsExample.createCriteria();
        criteria.andMRecipientEqualTo(number);
        if (number<3000)
            return megsMapper.selectByExample(megsExample);
        else
            return megsMapper.selectByExample(null);
    }
    /**
     * 获取所有已发消息
     */
    public List<Megs>  getAllMegsBySend(Integer number){
        MegsExample megsExample=new MegsExample();
        MegsExample.Criteria criteria=megsExample.createCriteria();
        criteria.andMSenderEqualTo(number);
        if (number<3000)
            return megsMapper.selectByExample(megsExample);
        else
            return megsMapper.selectByExample(null);
    }

    /**
     * 更新信息状态
     */
    public void updateMessage(Megs megs) {
        megsMapper.updateByPrimaryKeySelective(megs);
    }
}
