package cn.b2b2c.service.order;

import java.util.Date;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.DistributionWay;

public interface OrderService {
	
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
	
	
	

}
