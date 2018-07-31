package cn.b2b2c.dao.order;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.DistributionWay;
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
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public DistributionWay getDistributionWayId(@Param("dId")Integer id);
	
	
	/**
	 * 根据订单号修改付款状态
	 * @param serialNumber
	 * @return
	 */
	public int updateOrder(@Param("su")String serialNumber);
	
	/**
	 * 根据用户id查订单
	 */
	public List<Order> getOrderById(@Param("uid")Integer uid);

}
