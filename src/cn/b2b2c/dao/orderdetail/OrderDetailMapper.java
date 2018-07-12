package cn.b2b2c.dao.orderdetail;

import cn.b2b2c.pojo.OrderDetail;

public interface OrderDetailMapper {
	
	/**
	 * 新增订单-商品
	 * @param oDetail
	 * @return
	 */
	public int addOrderDetail(OrderDetail oDetail);

}
