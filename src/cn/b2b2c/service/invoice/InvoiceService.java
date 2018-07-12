package cn.b2b2c.service.invoice;

import java.util.List;

import cn.b2b2c.pojo.InvoiceContent;
import cn.b2b2c.pojo.InvoiceType;

public interface InvoiceService {
	
	/**
	 * 查询
	 * @return
	 */
	public List<InvoiceType> getInvoiceType()throws Exception;
	
	/**
	 * 查询
	 * @return
	 */
	public List<InvoiceContent> getInvoiceContent()throws Exception;
	

}
