package cn.b2b2c.service.paymentway;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.PaymentWay;

public interface PaymentWaySerivce {
	
	/**
	 * 查询支付方式
	 * @return
	 */
	public List<PaymentWay> getAll()throws Exception ;
	
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public PaymentWay getId(Integer id)throws Exception;

}
