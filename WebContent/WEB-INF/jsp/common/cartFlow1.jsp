<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<div class="header w990">
	<div class="mall-logo">
		<a href="${ctx}/product/indexStatus.html"><img
			src="${ctx}/statics/images/logo.gif"></a>
	</div>
</div>
<div class="blank15"></div>
<div class="block_jm">
	<div id="bg" class="bg" style="display: none;"></div>
	<div class="flowstep">
		<ol class="flowstep-5">
			<li class="step-first">
				<div class="step-done">
					<div class="step-name">查看购物车</div>
					<div class="step-no"></div>
				</div>
			</li>
			<li>
				<div class="step-name">拍下商品</div>
				<div class="step-no">2</div>
			</li>
			<li>
				<div class="step-name">付款</div>
				<div class="step-no">3</div>
			</li>
			<li>
				<div class="step-name">确认收货</div>
				<div class="step-no">4</div>
			</li>
			<li class="step-last">
				<div class="step-name">评价</div>
				<div class="step-no">5</div>
			</li>
		</ol>
	</div>


	<script type="text/javascript" src="${ctx}/statics/js/showdiv.js">
  </script>
	<div>
		<!-- <script>document.write(unescape('%3Cscript id="_ju_" src="#js/showdiv.js?_t=1527673572045" %3E%3C/script%3E') );
  </script> -->
		<script id="_ju_" src="${ctx}/statics/images/showdiv1.js"></script>
	</div>
	<!-- <script type="text/javascript">
      var user_name_empty = "请输入您的用户名！";
      var email_address_empty = "请输入您的电子邮件地址！";
      var email_address_error = "您输入的电子邮件地址格式不正确！";
      var new_password_empty = "请输入您的新密码！";
      var confirm_password_empty = "请输入您的确认密码！";
      var both_password_error = "您两次输入的密码不一致！";
      var show_div_text = "请点击更新购物车按钮";
      var show_div_exit = "关闭";
    </script> -->
	<div class="blank15"></div>

	<div class="flowBox_jm">
		<div class="title_jm">
			<table cellpadding="0" cellspacing="0" width="100%" border="0">
				<tbody>
					<tr>
						<td width="8%" align="center"><input type="checkbox"
							autocomplete="off" id="chkAll" name="chkAll" checked="true"
							onclick="return chkAll_onclick()"
							style="height: 28px; vertical-align: middle;"> 全选</td>

						<td width="37%" align="center">产品</td>
						<td width="15%" align="center">数量</td>
						<td width="15%" align="center">本店价</td>
						<td width="15%" align="center">小计</td>
						<td width="10%" align="center">操作</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- <form id="formCart1" name="formCart" method="post" action=""> -->
			<table align="center" cellpadding="0" cellspacing="0"
				style="height: auto; width: 100%;">
				<tbody>
					<tr height="35">
						<td
							style="text-indent: 19px; background: #FAFAFA; font-weight: bold; color: #C81623">网站自营
							<input type="hidden" name="supplierid" id="supplierid" value="0">
						</td>
					</tr>
				</tbody>
			</table>
			<table align="center" cellpadding="0" cellspacing="0"
				style="height: auto; width: 100%;">
				<tbody>
					<tr>
						<td style="width: 100%;">
							<table cellpadding="5" cellspacing="1" border="0" width="100%">
								<tbody>
								<c:forEach items="${sessionScope.cart.items}" var="temp">
									<tr>
										<td align="center" width="5%"><input type="checkbox"
											checked="checked" autocomplete="off" name="sel_cartgoods[]"
											value="936" id="sel_cartgoods_936"
											onclick="select_cart_goods();">
										</td>
										<td align="center" width="40%">

											<div class="thumb_name">
												<dl>
													<dt>
														<a href="" target="_blank"><img
															src="${ctx}/statics/images/${temp.product.fileName}"
															border="0" title="${temp.product.name}"></a>
													</dt>
													<dd>
														<a href="" target="_blank" class="f6">${temp.product.name}</a> <br> <font class="attrname">${temp.product.model}
															<br>${temp.product.colour}<br>
														</font>


													</dd>
												</dl>
											</div>
										</td>
										<td align="center" width="15%">
											<div class="jm_cartnum">
												<span class="jmminu" onclick="updateCar(${temp.product.id},${temp.quantity-1})">-</span>
												<input type="text" name="goods_number[${temp.product.id}]"
													id="goods_number_${temp.product.id}" value="${temp.quantity}" size="4" class="jminputBg"
													onkeydown=""
													onblur="updateCarS(${temp.product.id})"> <input
													type="hidden" id="hidden_936" value="${temp.quantity}"> <span
													class="jmadd" onclick="updateCar(${temp.product.id},${temp.quantity+1})">+</span>
											</div>
										</td>
										<td align="center" width="15%"><font class="cart_jmprice"
											id="goods_price_936">¥${temp.product.price}</font>
										</td>
										<td align="center" width="15%"><font class="cart_jmprice"
											id="subtotal_936">¥${temp.cost}</font>
										</td>
										<td align="center" width="10%"><a
											href="#" class="f6" onclick="deleteCar('${temp.product.id}')">删除</a>
										</td>
									</tr>
								</c:forEach>
									
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
			<table width="100%" align="center" border="0" cellpadding="5"
				cellspacing="0" bgcolor="#ffffff"
				style="border-top: 1px dashed #eee; margin-bottom: 10px;">
				<tbody>
					<tr>
						<td bgcolor="#ffffff" align="right"
							style="padding: 10px 15px 0 0;"><span id="zk_0">根据优惠活动<a
								href=""><font color="red"></font></a>，您可以享受折扣 ¥0.0
						</span></td>
					</tr>
				</tbody>
			</table>

			<input type="hidden" name="step" id="actname" value="update_cart">
		<!-- </form> -->
		<table width="100%" align="center" border="0" cellpadding="5"
			cellspacing="6" style="border-top: 1px solid #eee;">
			<tbody>
				<tr>
					<td width="150"><a href="${ctx}/product/index.html"
						class="continue_buy">继续购物</a></td>
					<td align="right" width="80"><a href="javascript:void(0);" class="jmclear" onclick="deleteCarAll()"><font
							color="#aaaaaa">清空购物车 </font></a></td>
					<td align="right" id="cart_money_info">应付总额： <span>¥${sessionScope.cart.sum}</span>，比市场价
						¥${sessionScope.cart.sum} 节省了 ¥716.70 (26%)
					</td>
					<td align="right" width="150"><a href="javascript:void(0);"
						onclick="cartFlow2()" class="jmcheckout"
						style="color: #ffffff">去结算</a></td>
				</tr>
			</tbody>
		</table>

		<script type="text/javascript" charset="utf-8">
	/* function chkAll_onclick(){
		var obj = document.getElementById('chkAll');
		var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
		for (var i=0;i<obj_cartgoods.length;i++){
            if(!obj_cartgoods[i].disabled){
                var e = obj_cartgoods[i];

                if (e.name != 'chkAll'){
                    e.checked = obj.checked;
                }
            }
		}
		select_cart_goods();
	}
	function select_cart_goods(){
	      var sel_goods = new Array();
	      var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
	      var suppid = document.getElementById('supplierid');
	      var j=0;
	      var c = true;
	      for (i=0;i<obj_cartgoods.length;i++){
			if(obj_cartgoods[i].checked == true){	
				sel_goods[j] = obj_cartgoods[i].value;
				j++;
			}else{
				c = false;
			}
	      }
	      document.getElementById('chkAll').checked = c;
	      Ajax.call('', 'act=selcart&sel_goods=' + sel_goods + '&suppid=' + suppid, selcartResponse, 'GET', 'JSON');
	}
	function selcartResponse(res){
	  if (res.err_msg.length > 0){
            alert(res.err_msg);
	  }else{
	     document.getElementById('cart_money_info').innerHTML = res.result;
		 if(document.getElementById('zk_'+res.suppid)){
	     	document.getElementById('zk_'+res.suppid).innerHTML = res.your_discount;
		 }
	  }
	} */
	/* function selcart_submit(){
	      var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
	      var formobj = document.getElementById('formCart1');
	      var j=0;
	      for (i=0;i<obj_cartgoods.length;i++){
			if(obj_cartgoods[i].checked == true){	
				j++;
			}
	      }
	      if (j>0){
		
			formobj.action='flow.php?step=checkout';
			document.getElementById('actname').value='checkout';
			formobj.submit();
			return true;
	      }else{	
			$('.pop-mask,.pop-compare').show();	
			$('.pop-compare .pop-text').html('您还没有选择商品哦！').css('padding-top',10);
			$('.pop-compare').css({'top':($(window).height()-$('.pop-compare').outerHeight())/2});	
			return false;
	     }
	} */
	</script>


		<!-- <script>
	function add_num(rec_id,goods_id,supp_id,is_package){
		document.getElementById("goods_number_"+rec_id+"").value++;
		var sel_goods = new Array();
		var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
		var j=0;
	      for (i=0;i<obj_cartgoods.length;i++){
			if(obj_cartgoods[i].checked == true){	
				sel_goods[j] = obj_cartgoods[i].value;
				j++;
			}
	      }
		var number = document.getElementById("goods_number_"+rec_id+"").value;
		Ajax.call('', 'step=update_group_cart&sel_goods='+ sel_goods +'&rec_id=' + rec_id +'&number=' + number+'&goods_id=' + goods_id + '&suppid=' + supp_id + '&is_package=' + is_package, changePriceResponse, 'GET', 'JSON');
	 }

	function minus_num(rec_id,goods_id,supp_id,is_package){
		if (document.getElementById("goods_number_"+rec_id+"").value>1){
			document.getElementById("goods_number_"+rec_id+"").value--;
		}
		var sel_goods = new Array();
		var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
		var j=0;
	      for (i=0;i<obj_cartgoods.length;i++){
			if(obj_cartgoods[i].checked == true){	
				sel_goods[j] = obj_cartgoods[i].value;
				j++;
			}
	      }
		var number = document.getElementById("goods_number_"+rec_id+"").value;
		Ajax.call('', 'step=update_group_cart&sel_goods='+ sel_goods +'&rec_id=' + rec_id +'&number=' + number+'&goods_id=' + goods_id + '&suppid=' + supp_id + '&is_package=' + is_package, changePriceResponse, 'GET', 'JSON');
	}

function change_price(rec_id,goods_id,is_package){	
	var r = /^[1-9]+[0-9]*]*$/;
	var number = document.getElementById("goods_number_"+rec_id+"").value;
	if (!r.test(number)){
		alert("您输入的格式不正确！");
		document.getElementById("goods_number_"+rec_id+"").value=document.getElementById("hidden_"+rec_id+"").value;
	}else{	
		var sel_goods = new Array();
		var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
		var j=0;
	      for (i=0;i<obj_cartgoods.length;i++){
			if(obj_cartgoods[i].checked == true){	
				sel_goods[j] = obj_cartgoods[i].value;
				j++;
			}
	      }
		Ajax.call('flow.php','step=update_group_cart&sel_goods='+ sel_goods +'&rec_id=' + rec_id +'&number=' + number+'&goods_id=' + goods_id + '&is_package=' + is_package, changePriceResponse, 'GET', 'JSON');
	}
}

function changePriceResponse(result){
if(result.error == 1){
	//alert(result.content);
	$('.pop-mask,.pop-compare').show();	
	$('.pop-compare .pop-text').html(result.content).css('padding-top',10);
	$('.pop-compare').css({'top':($(window).height()-$('.pop-compare').outerHeight())/2});	
	document.getElementById("goods_number_"+result.rec_id+"").value =result.number;
	document.getElementById("hidden_"+result.rec_id+"").value =result.number;
}else if (result.error == 999 ){
	/*if (confirm(result.message)){
		location.href = 'user.php';
	}*/
	$('.pop-mask,.pop-login').show();
}else if (result.error == 888 ){
	//alert(result.message);
	$('.pop-mask,.pop-compare').show();	
	$('.pop-compare .pop-text').html(result.message).css('padding-top',10);
	$('.pop-compare').css({'top':($(window).height()-$('.pop-compare').outerHeight())/2});	
	document.getElementById("goods_number_"+result.rec_id+"").value =result.number;
	document.getElementById("hidden_"+result.rec_id+"").value =result.number;
}else{
	document.getElementById("sel_cartgoods_"+result.rec_id).checked = true;//被操作商品选中
	document.getElementById("hidden_"+result.rec_id+"").value =result.number;
	document.getElementById("goods_price_"+result.rec_id).innerHTML = result.goods_price;//商品价格
	document.getElementById('subtotal_'+result.rec_id).innerHTML = result.subtotal;//商品总价
	document.getElementById('cart_money_info').innerHTML = result.market_amount_desc;//购物车商品总价说明
	document.getElementById('zk_'+result.suppid).innerHTML = result.your_discount;//折扣活动说明
	show_div_text = "恭喜您！ 商品数量修改成功！ ";
	showdiv(document.getElementById("goods_number_"+result.rec_id));
}

}
</script> -->



		<!-- <script type="text/javascript" charset="utf-8">
        function collect_to_flow(goodsId){
          var goods        = new Object();
          var spec_arr     = new Array();
          var fittings_arr = new Array();
          var number       = 1;
          goods.spec     = spec_arr;
          goods.goods_id = goodsId;
          goods.number   = number;
          goods.parent   = 0;
          Ajax.call('flow.php?step=add_to_cart', 'goods=' + goods.toJSONString(), collect_to_flow_response, 'POST', 'JSON');
        }
        function collect_to_flow_response(result){
          if (result.error > 0){
            // 如果需要缺货登记，跳转
            if (result.error == 2){
              if (confirm(result.message)){
                location.href = 'user.php?act=add_booking&id=' + result.goods_id;
              }
	    }else if (result.error == 6){
              openSpeDiv(result.message, result.goods_id);
	    }else{
              alert(result.message);
            }
	  }else{
            location.href = 'flow.php';
          }
        }
      </script> -->

	</div>
	<div class="blank15"></div>


	<!-- <script type="text/javascript">
	var hotboxtit = document.getElementById("HotBoxTit");
	var hotbox = document.getElementById("HotBox");
	var hottlist = hotboxtit.getElementsByTagName("li");
	var hotlist = hotbox.getElementsByTagName("ul");
	var hottlen = hottlist.length;
	for(var i = 0; i < hottlen; i++){ 
		hottlist[i].pai=i;
		hottlist[i].onmouseover = function(){	
		for(var j=0; j < hottlen; j++){
				var _hott = hottlist[j];
				var _hot =  hotlist[j];
				var ison  =  j==this.pai;
				_hott.className=(ison ? "curr" : "");
				_hot.className= (ison  ?  "curr" : "");
		}
		}
	}
	</script> -->







	<div class="blank15"></div>
</div>