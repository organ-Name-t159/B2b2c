package cn.b2b2c.service.deliverytime;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.DeliveryTime;

public interface DeliveryTimeService {
	
	
	public List<DeliveryTime> getAll()throws Exception;
	
	
	public DeliveryTime getId(Integer id)throws Exception;


}
