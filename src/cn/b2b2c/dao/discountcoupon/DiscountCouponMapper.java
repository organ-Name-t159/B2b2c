package cn.b2b2c.dao.discountcoupon;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.b2b2c.pojo.DiscountCoupon;

public interface DiscountCouponMapper {
	
	/**
	 * 根据id修改优惠券状态
	 * @param UserId
	 * @param dcId
	 * @param stateId
	 * @return
	 */
	public int updateDiscountCouponStatic(@Param("uId")Integer UserId,@Param("id")Integer Id,@Param("sId")Integer stateId);
	
	/**
	 * 查询用户拥有的优惠券
	 * @param UserId
	 * @param stateId
	 * @return
	 */
	public List<DiscountCoupon> getDiscountCoupon(@Param("uId")Integer UserId,@Param("sId")Integer stateId);
	
	
	
	/**
	 * 根据id查询数据
	 * @param dcId
	 * @return
	 */
	public DiscountCoupon getAll(@Param("dcId")Integer dcId);
	
	public List<DiscountCoupon> getQueryById(@Param("userId")Integer userId);
	
}
