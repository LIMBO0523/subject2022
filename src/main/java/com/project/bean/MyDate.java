package com.project.bean;

import java.util.Calendar;

public class MyDate {
    public static String get_date() {
        String date=null;
        Calendar cal=Calendar.getInstance();
        int y=cal.get(Calendar.YEAR);
        int m=cal.get(Calendar.MONTH)+1;
        int d=cal.get(Calendar.DATE);
        int h=cal.get(Calendar.HOUR_OF_DAY);
        int min=cal.get(Calendar.MINUTE);
        date=y+"-"+m+"-"+d+"T"+h+":"+min;
        return date;
    }
}
