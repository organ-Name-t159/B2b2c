package cn.b2b2c.pojo;

import java.io.Serializable;

public class InvoiceType implements Serializable {
	//SELECT `id`,`invoiceType`FROM `invoice_type`
	private Integer id;//
	private String invoiceType;//发票类型
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getInvoiceType() {
		return invoiceType;
	}
	public void setInvoiceType(String invoiceType) {
		this.invoiceType = invoiceType;
	}

}
