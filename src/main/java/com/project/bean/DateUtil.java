package com.project.bean;

import org.junit.jupiter.api.Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
    //判断选择的日期是否是本周
    public static boolean isThisWeek(long time)
    {
        Calendar calendar = Calendar.getInstance();
        int currentWeek = calendar.get(Calendar.WEEK_OF_YEAR);
        calendar.setTime(new Date(time));
        int paramWeek = calendar.get(Calendar.WEEK_OF_YEAR);
        if(paramWeek==currentWeek){
            return true;
        }
        return false;
    }
    //判断选择的日期是否是今天
    public static boolean isToday(long time)
    {
        return isThisTime(time,"yyyy-MM-dd");
    }
    //判断选择的日期是否是本月
    public static boolean isThisMonth(long time)
    {
        return isThisTime(time,"yyyy-MM");
    }
    private static boolean isThisTime(long time,String pattern) {
        Date date = new Date(time);
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        String param = sdf.format(date);//参数时间
        String now = sdf.format(new Date());//当前时间
        if(param.equals(now)){
            return true;
        }
        return false;
    }
    public static long StringTimeTurnToLongTime(String time) throws ParseException {
        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //设置要读取的时间字符串格式
        Date date = format.parse(time);
        //转换为Date类
        Long timestamp=date.getTime();
        return timestamp;
    }
    @Test
    public void testTime() throws ParseException {
        String time="2022-4-14 00:00:00";
        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //设置要读取的时间字符串格式
        Date date = format.parse(time);
        //转换为Date类
        Long timestamp=date.getTime();
        System.out.print(timestamp);
        //获得时间戳
        isToday(20220414170700L);
        isThisMonth(1416360654000L);
        isThisWeek(1416360654000L);
    }
}
