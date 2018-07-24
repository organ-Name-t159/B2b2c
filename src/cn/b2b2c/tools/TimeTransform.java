package cn.b2b2c.tools;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeTransform implements Serializable {
	
	public static Object isTime(Object obj) {
		Date date=new Date();
		String timeStr="";
		DateFormat dFormat=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		DateFormat dFormatOne=new SimpleDateFormat("yyyy-MM-dd");
		if(obj instanceof String) {
			try {
				date=dFormat.parse((String)obj);
				System.out.println(date);
			} catch (ParseException e) {				
				e.printStackTrace();
				System.err.println("转换错误");
			}			
			return date;
		}else if(obj instanceof Date) {
			timeStr=dFormatOne.format((Date)obj);
			return timeStr;
		}
		
		return null;
	}
	
	

}