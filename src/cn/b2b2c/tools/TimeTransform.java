package cn.b2b2c.tools;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeTransform implements Serializable {
	
	static DateFormat dFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	static DateFormat dFormatOne=new SimpleDateFormat("yyyy-MM-dd");		
	
	public static String isTime(Date date) {
		String time="";
		time=dFormat.format(date);
		return time;
	}
	
	public static String isTimeOne(Date date) {
		String time="";
		time=dFormatOne.format(date);
		return time;
	}
	
	public static Date isDate(String time)throws Exception {
		
		return dFormat.parse(time);
	}
	
	public static Date isDateOne(String time)throws Exception {		
		
		return dFormatOne.parse(time);
	}

}
