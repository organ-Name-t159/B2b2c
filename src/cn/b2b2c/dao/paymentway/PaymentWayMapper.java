package cn.b2b2c.dao.paymentway;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.PaymentWay;

public interface PaymentWayMapper {
	
	/**
	 * 查询支付方式
	 * @return
	 */
	public List<PaymentWay> getAll();
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	public PaymentWay getId(@Param("pId")Integer id);

}
