package cn.b2b2c.back.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.b2b2c.pojo.Order;
import cn.b2b2c.service.order.OrderService;
import cn.b2b2c.tools.TimeTransform;


@Controller
@RequestMapping("/echarts")
public class BackEcharts {
	
	@Resource
	private OrderService orderService;
	
	@RequestMapping(value="/echarts2.view")
	public String echarts2() {
		
		return "back/echarts2";
	}
	
	
	@RequestMapping(value="/echarts1Date.view",method=RequestMethod.POST)
	@ResponseBody
	public Object echarts1Date() {
		Map<String, Object> map=new HashMap<String,Object>();
		List<Order> oList=orderService.statisticalData();
		Calendar calendar=Calendar.getInstance();//获取当前时间，前一周
		Calendar calendar2=Calendar.getInstance();
		String[] dataTime=new String[7];
		int[] dataNumber=new int[7];
		//calendar.add(Calendar.DATE, +1);
		//Date date=calendar.getTime();
		for (int i = 6; i >= 0; i--) {
			calendar.setTime(new Date());//获取今天时间
			calendar.set(Calendar.HOUR, 0);
			calendar.set(Calendar.MINUTE, 0);
			calendar.set(Calendar.SECOND, 0);
			calendar.add(Calendar.DATE, -i);			
			Date tempDate=calendar.getTime();
			//System.out.println("一临时"+tempDate);
			
			calendar2.setTime(new Date());
			calendar2.set(Calendar.HOUR, 0);
			calendar2.set(Calendar.MINUTE, 0);
			calendar2.set(Calendar.SECOND, 0);
			calendar2.add(Calendar.DATE, -i+1);
			Date tempGDate=calendar2.getTime();
			//System.out.println("二临时"+tempGDate);
			
			dataTime[6-i]=TimeTransform.isTimeOne(tempDate);
			//System.out.println("时间"+dataTime[6-i]);
			int num=0;
			for (Order order : oList) {
				
				if(tempDate.before(order.getCreateTime())&&order.getCreateTime().before(tempGDate)) {
					num++;					
				}else {
					
				}
				
			}
			dataNumber[6-i]=num;
			//System.out.println("量"+dataNumber[6-i]);
			
		}
		
		map.put("dataTime", dataTime);
		map.put("dataNumber", dataNumber);
		//System.out.println(map);
		return JSON.toJSON(map);
	}
	
	
	@RequestMapping(value="/echarts1.view")
	public String echarts1() {
		
		return "back/echarts1";
	}

}
