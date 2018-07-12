package cn.b2b2c.dao.order;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.Order;

public interface OrderMapper {
	
	public int addOrder(Order order);
	
	/**
	 * 根据订单号查询id
	 * @param serialNumber
	 * @return
	 * @throws Exception
	 */
	public int getId(@Param("number")String serialNumber);

}
