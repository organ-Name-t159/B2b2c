package cn.b2b2c.dao.paymentway;

import java.util.List;

import cn.b2b2c.pojo.PaymentWay;

public interface PaymentWayMapper {
	
	/**
	 * 查询支付方式
	 * @return
	 */
	public List<PaymentWay> getAll();

}
