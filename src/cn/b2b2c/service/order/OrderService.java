package cn.b2b2c.service.order;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;


import cn.b2b2c.pojo.DistributionWay;
import cn.b2b2c.pojo.Order;

public interface OrderService {
	
	/**
	 * 修改评价状态
	 * @param orderId
	 * @param productId
	 * @return
	 */
	public int updateOrderDetail(Integer orderId,Integer productId);
	
	
	
	/**
	 * 统计数据
	 * @return
	 */
	public List<Order> statisticalData(); 
	
	/**
	 * 新增订单
	 * @param userId
	 * @param userAddressId
	 * @param createTime
	 * @param cost
	 * @param serialNumber
	 * @param deliveryTimeId
	 * @param paymentStatusId
	 * @param paymentWayId
	 * @param distributionWayId
	 * @param userTiscountCouponId
	 * @param invoiceTypeId
	 * @param invoiceContentId
	 * @param leaveWord
	 * @return
	 * @throws Exception
	 */
	public int addOrder(Integer userId
						,Integer userAddressId
						,Date createTime
						,float cost
						,String serialNumber
						,Integer deliveryTimeId
						,Integer paymentStatusId
						,Integer paymentWayId
						,Integer distributionWayId
						,Integer userTiscountCouponId
						,Integer invoiceTypeId
						,Integer invoiceContentId
						,String leaveWord)throws Exception;
	
	
	
	/**
	 * 根据订单号查询id
	 * @param serialNumber
	 * @return
	 * @throws Exception
	 */
	public Integer getId(String serialNumber)throws Exception;
	
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public DistributionWay getDistributionWayId(Integer id);
	
	
	/**
	 * 根据订单号修改付款状态
	 * @param serialNumber
	 * @return
	 */
	public int updateOrder(String serialNumber)throws Exception;
	
	/**
	 * 根据用户id查订单
	 */
	public List<Order> getOrderById(Integer uid,String uNum)throws Exception;
	public List<Order> getOrderById(String uNum);
	/**
	 * 订单分页
	 * @param currentPageNo
	 * @param pageSize
	 * @param categoryId
	 * @return
	 */
			
	public List<Order> getUserComm(Integer currentPageNo,Integer pageSize,Integer uid);
	public List<Order> getOrderAll(Integer currentPageNo,Integer pageSize);
	/**
	 * 订单总条数
	 */
	public int getCountComm(Integer uid);
	public int getCountComm();
}
