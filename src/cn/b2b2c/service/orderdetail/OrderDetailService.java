package cn.b2b2c.service.orderdetail;


public interface OrderDetailService {
	
	/**
	 * 新增订单-商品
	 * @param oDetail
	 * @return
	 */
	public int addOrderDetail(Integer orderId,Integer productId,Integer quantity,float cost)throws Exception;

}
