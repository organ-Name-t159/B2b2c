package cn.b2b2c.pojo;

import java.io.Serializable;

public class InvoiceContent implements Serializable {
	//SELECT `id`,`content` FROM `invoice_content`
	private Integer id;//
	private String content;//发票内容
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

}
