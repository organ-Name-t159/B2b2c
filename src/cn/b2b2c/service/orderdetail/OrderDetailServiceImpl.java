package cn.b2b2c.service.orderdetail;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.orderdetail.OrderDetailMapper;
import cn.b2b2c.pojo.OrderDetail;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {
	
	@Resource
	private OrderDetailMapper orderDetailMapper;

	@Override
	public int addOrderDetail(Integer orderId, Integer productId, Integer quantity, float cost) throws Exception {
		OrderDetail oDetail=new OrderDetail();
		oDetail.setOrderId(orderId);
		oDetail.setProductId(productId);
		oDetail.setQuantity(quantity);
		oDetail.setCost(cost);				
		return orderDetailMapper.addOrderDetail(oDetail);
	}

}
