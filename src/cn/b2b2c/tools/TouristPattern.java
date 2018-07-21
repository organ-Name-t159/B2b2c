package cn.b2b2c.tools;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class TouristPattern {
	
		public static String tp(){
			Calendar cal = new GregorianCalendar();
			for (int i = 0; i < 1; i++) {
				cal.set(Calendar.MILLISECOND, cal.get(Calendar.MILLISECOND) + 1);
				System.out.println(toDateString(cal));
			}
			return toDateString(cal);
		}
		
		public static String toDateString(Calendar calendar) {
		int year = calendar.get(Calendar.YEAR);
		int month = calendar.get(Calendar.MONTH)+1;
		int day = calendar.get(Calendar.DAY_OF_MONTH);
		int hh = calendar.get(Calendar.DAY_OF_WEEK);
		int msec = calendar.get(Calendar.MILLISECOND);
		return "v" + year + month + day + hh + msec;
	}

	
}
