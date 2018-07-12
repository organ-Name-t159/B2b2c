package cn.b2b2c.dao.invoice;

import java.util.List;

import cn.b2b2c.pojo.InvoiceContent;

public interface InvoiceContentMapper {
	
	/**
	 * 查询
	 * @return
	 */
	public List<InvoiceContent> getInvoiceContent();

}
