package cn.b2b2c.service.paymentway;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.paymentway.PaymentWayMapper;
import cn.b2b2c.pojo.PaymentWay;

@Service
public class PaymentWaySerivceImpl implements PaymentWaySerivce {
	
	@Resource
	private PaymentWayMapper paymentWayMapper;

	@Override
	public List<PaymentWay> getAll() throws Exception {
		
		return paymentWayMapper.getAll();
	}

	@Override
	public PaymentWay getId(Integer id) throws Exception {
		
		return paymentWayMapper.getId(id);
	}
	
}
