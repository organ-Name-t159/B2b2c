package cn.b2b2c.dao.deliverytime;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.DeliveryTime;

public interface DeliveryTimeMapper {
	
	public List<DeliveryTime> getAll();
	
	
	public DeliveryTime getId(@Param("dId")Integer id);
}
