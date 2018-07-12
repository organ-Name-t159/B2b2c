package cn.b2b2c.service.discountcoupon;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.discountcoupon.DiscountCouponMapper;
import cn.b2b2c.pojo.DiscountCoupon;

@Service
public class DiscountCouponServiceImpl implements DiscountCouponService {
	
	@Resource
	private DiscountCouponMapper discountCouponMapper;

	@Override
	public List<DiscountCoupon> getDiscountCoupon(Integer UserId, Integer stateId) {
				
		return discountCouponMapper.getDiscountCoupon(UserId, stateId);
	}

	@Override
	public DiscountCoupon getAll(Integer dcId) {
		
		return discountCouponMapper.getAll(dcId);
	}

}
