package cn.b2b2c.service.invoice;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.b2b2c.dao.invoice.InvoiceContentMapper;
import cn.b2b2c.dao.invoice.InvoiceTypeMapper;
import cn.b2b2c.pojo.InvoiceContent;
import cn.b2b2c.pojo.InvoiceType;

@Service
public class InvoiceServiceImpl implements InvoiceService {
	
	@Resource
	private InvoiceTypeMapper invoiceTypeMapper;
	
	@Resource
	private InvoiceContentMapper invoiceContentMapper;
	

	@Override
	public List<InvoiceType> getInvoiceType() throws Exception {
		// TODO Auto-generated method stub
		return invoiceTypeMapper.getInvoiceType();
	}

	@Override
	public List<InvoiceContent> getInvoiceContent() throws Exception {
		// TODO Auto-generated method stub
		return invoiceContentMapper.getInvoiceContent();
	}
	
}
