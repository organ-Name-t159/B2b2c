package cn.b2b2c.dao.invoice;

import java.util.List;

import cn.b2b2c.pojo.InvoiceType;

public interface InvoiceTypeMapper {
	
	/**
	 * 查询
	 * @return
	 */
	public List<InvoiceType> getInvoiceType();

}
