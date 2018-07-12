package cn.b2b2c.service.discountcoupon;

import java.util.List;


import cn.b2b2c.pojo.DiscountCoupon;

public interface DiscountCouponService {
	/**
	 * 查询用户拥有的优惠券
	 * @param UserId
	 * @param stateId
	 * @return
	 */
	public List<DiscountCoupon> getDiscountCoupon(Integer UserId,Integer stateId);
	
	/**
	 * 根据id查询数据
	 * @param dcId
	 * @return
	 */
	public DiscountCoupon getAll(Integer dcId);


}
