package cn.b2b2c.service.deliverytime;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.b2b2c.dao.deliverytime.DeliveryTimeMapper;
import cn.b2b2c.pojo.DeliveryTime;

@Service
public class DeliveryTimeServiceImpl implements DeliveryTimeService {
	
	@Autowired
	private DeliveryTimeMapper deliveryTimeMapper;
	
	
	@Override
	public List<DeliveryTime> getAll() throws Exception {		
		return deliveryTimeMapper.getAll();
	}


	@Override
	public DeliveryTime getId(Integer id) throws Exception {
		
		return deliveryTimeMapper.getId(id);
	}

}
