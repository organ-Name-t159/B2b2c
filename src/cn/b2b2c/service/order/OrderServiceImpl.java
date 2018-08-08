package cn.b2b2c.service.order;


import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.order.OrderMapper;
import cn.b2b2c.pojo.DistributionWay;
import cn.b2b2c.pojo.Order;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Resource
	private OrderMapper orderMapper;

	@Override
	public int addOrder(Integer userId, Integer userAddressId, Date createTime, float cost, String serialNumber,
			Integer deliveryTimeId, Integer paymentStatusId, Integer paymentWayId, Integer distributionWayId,
			Integer userTiscountCouponId, Integer invoiceTypeId, Integer invoiceContentId, String leaveWord)
			throws Exception {
		Order order=new Order();
		order.setUserId(userId);
		order.setUserAddressId(userAddressId);
		order.setCreateTime(createTime);
		order.setCost(cost);
		order.setSerialNumber(serialNumber);
		order.setDeliveryTimeId(deliveryTimeId);
		order.setPaymentStatusId(paymentStatusId);
		order.setPaymentWayId(paymentWayId);
		order.setDistributionWayId(distributionWayId);
		order.setUserTiscountCouponId(userTiscountCouponId);
		order.setInvoiceTypeId(invoiceTypeId);
		order.setInvoiceContentId(invoiceContentId);
		order.setLeaveWord(leaveWord);				
		
		return orderMapper.addOrder(order);
	}

	@Override
	public Integer getId(String serialNumber) throws Exception {
		
		return orderMapper.getId(serialNumber);
	}

	@Override
	public DistributionWay getDistributionWayId(Integer id) {
		
		return orderMapper.getDistributionWayId(id);
	}

	@Override
	public int updateOrder(String serialNumber) throws Exception {
		
		return orderMapper.updateOrder(serialNumber);
	}

	
	
	@Override
	public List<Order> getOrderById(Integer uid,String uNum) throws Exception {
		// TODO Auto-generated method stub
		return orderMapper.getOrderById(uid, uNum);
	}

	@Override
	public List<Order> getUserComm(Integer currentPageNo, Integer pageSize, Integer uid) {
		List<Order> orders=new ArrayList<Order>();
		currentPageNo=(currentPageNo-1)*pageSize;
		 orders= orderMapper.getUserComm(currentPageNo, pageSize, uid);
		return orders;
	}

	@Override
	public int getCountComm(Integer uid) {
		return orderMapper.getCountComm(uid);
	}

	@Override
	public List<Order> getOrderById(String uNum) {
		// TODO Auto-generated method stub
		return orderMapper.getOrderById(uNum);
	}

	@Override
	public List<Order> getOrderAll(Integer currentPageNo, Integer pageSize) {
		List<Order> orders=new ArrayList<Order>();
		currentPageNo=(currentPageNo-1)*pageSize;
		 orders= orderMapper.getOrderAll(currentPageNo, pageSize);
		 return orders;
	}

	@Override
	public int getCountComm() {
		// TODO Auto-generated method stub
		return orderMapper.getCountComm();
		}

	public List<Order> statisticalData() {
		
		return orderMapper.statisticalData();
	}

	@Override
	public int updateOrderDetail(Integer orderId, Integer productId) {
		
		return orderMapper.updateOrderDetail(orderId, productId);
	}
	
	
	
	
	

}
