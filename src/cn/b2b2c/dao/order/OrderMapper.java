package cn.b2b2c.dao.order;

import java.util.LinkedList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.DistributionWay;
import cn.b2b2c.pojo.Order;
import cn.b2b2c.pojo.Product;

public interface OrderMapper {
	
	/**
	 * 修改评价状态
	 * @param orderId
	 * @param productId
	 * @return
	 */
	public int updateOrderDetail(@Param("oId")Integer orderId,@Param("pId")Integer productId);
	
	/**
	 * 统计数据
	 * @return
	 */
	public List<Order> statisticalData(); 
	
	
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
	public List<Order> getOrderById(@Param("uid")Integer uid,@Param("uNum")String uNum);
	public List<Order> getOrderById(@Param("uNum")String uNum);

	/**
	 * 订单分页
	 */
	public List<Order> getUserComm(@Param("from")Integer currentPageNo,
			@Param("pageSize")Integer pageSize,
			@Param("uid")Integer uid);
	public List<Order> getOrderAll(@Param("from")Integer currentPageNo,@Param("pageSize")Integer pageSize);
	/**
	 * 订单总条数
	 */
	public int getCountComm(@Param("uid")Integer uid);
	public int getCountComm();
	
}
