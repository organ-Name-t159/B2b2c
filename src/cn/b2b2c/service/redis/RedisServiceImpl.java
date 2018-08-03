package cn.b2b2c.service.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.stereotype.Service;

import redis.clients.jedis.Jedis;

@Service
public class RedisServiceImpl {

	@Autowired
	private JedisConnectionFactory jedisConnectionFactory;

	private Jedis jedis = null;
	
	

	/**
	 * 从redis 中获得数据
	 * 
	 * @return
	 */
	public String getHello() {
		jedis = getJedis();
		return jedis.get("userName");

	}

	private Jedis getJedis() {

		System.out.println(jedisConnectionFactory);

		// 从工厂里边获取 jedis
		if (jedis == null) {
			return jedisConnectionFactory.getShardInfo().createResource(); //
		}
		return jedis;

	}

}
