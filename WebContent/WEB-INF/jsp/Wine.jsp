<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>家家商城</title>            
<%@include file="userhead.jsp"%>

<script type="text/javascript" src="${ctx}/statics/js/nav.js"></script>
  <div class="blank"></div>
  <div class="w1210">
  	<div id="hotsale">
    <div class="hd">热卖推荐</div>
    <div class="mc">
            <dl>
        <dt><a target="_blank" href="##"><img src="${ctx}/statics/images/271_thumb_G_1456452775873.jpg" width="100" height="100" alt="江口醇 方形蓝色马六甲 52度500ml*2瓶装 高度浓香型国产白酒 纯粮酒水特价包邮"></a></dt>
        <dd>
          <div class="p-name"><a target="_blank" href="##">江口醇 方形蓝色马六甲 52度500ml...</a></div>
          <div class="p-price">特价：<font class="shop-price">
                        ¥198.0                        </font></div>
          <div class="btns"><a target="_blank" href="##">查看详情</a></div>
        </dd>
      </dl>
            <dl>
        <dt><a target="_blank" href="##"><img src="${ctx}/statics/images/287_thumb_G_1457592139010.jpg" width="100" height="100" alt="韩国原装进口lotte乐天 2%富足水蜜桃果汁饮料240ml听装 夏季饮料"></a></dt>
        <dd>
          <div class="p-name"><a target="_blank" href="##">韩国原装进口lotte乐天 2%富足水蜜...</a></div>
          <div class="p-price">特价：<font class="shop-price">
                        ¥5.3                        </font></div>
          <div class="btns"><a target="_blank" href="##">查看详情</a></div>
        </dd>
      </dl>
            <dl>
        <dt><a target="_blank" href="##"><img src="${ctx}/statics/images/272_thumb_G_1456452879681.jpg" width="100" height="100" alt="江鼎 白酒衡水老白干大青花50度高度白酒500ML"></a></dt>
        <dd>
          <div class="p-name"><a target="_blank" href="##">江鼎 白酒衡水老白干大青花50度高度白酒...</a></div>
          <div class="p-price">特价：<font class="shop-price">
                        ¥118.0                        </font></div>
          <div class="btns"><a target="_blank" href="##">查看详情</a></div>
        </dd>
      </dl>
            <dl>
        <dt><a target="_blank" href="##"><img src="${ctx}/statics/images/273_thumb_G_1456452987184.jpg" width="100" height="100" alt="康师傅优悦水550ml*24瓶（整箱）"></a></dt>
        <dd>
          <div class="p-name"><a target="_blank" href="##">康师傅优悦水550ml*24瓶（整箱）</a></div>
          <div class="p-price">特价：<font class="shop-price">
                        ¥19.9                        </font></div>
          <div class="btns"><a target="_blank" href="##">查看详情</a></div>
        </dd>
      </dl>
          </div>
</div>
	<div class="w">
  <div class="breadcrumb clearfix"><a href="##">首页</a> <span class="crumbs-arrow">&gt;</span> <div class="crumbs-nav crumbs-nav0"><a class="crumbs-title" href="##">酒类饮料<i class="icon"></i></a><div class="crumbs-drop"><ul class="crumbs-drop-list"><li><a href="##">食品、酒类、生鲜、特产</a></li><li><a href="##">男装、女装、内衣、珠宝</a></li><li><a href="##">个护化妆、清洁用品</a></li><li><a href="##">手机、数码、通信</a></li><li><a href="##">家用电器</a></li><li><a href="##">家居、家具、家装、厨具</a></li><li><a href="##">酒类饮料</a></li><li><a href="##">母婴、玩具乐器</a></li><li><a href="##">虚拟商品</a></li><li><a href="##">电脑、办公</a></li><li><a href="##">鞋靴、箱包、钟表、奢侈品</a></li><li><a href="##">运动户外</a></li><li><a href="##">汽车、汽车用品</a></li><li><a href="##">营养保健</a></li><li><a href="##">图书、音像、电子书</a></li><li><a href="##">彩票、旅行、充值、票务</a></li><li><a href="##">理财、众筹、白条、保险</a></li></ul></div></div></div>
</div>
<div class="blank"></div>
<script>
$(function(){
	$('.breadcrumb .crumbs-nav').hover(function(){
		$(this).toggleClass('curr');	
	})
})
</script>
     
     
    <script type="text/javascript">
	var begin_hidden=0;
	function init_position_left(){
		var kuan1=document.getElementById('attr-list-ul').clientWidth;
		var kuan2=document.getElementById('attr-group-more').clientWidth;
		var kuan =(kuan1-kuan2)/2;
		document.getElementById('attr-group-more').style.marginLeft=kuan+"px";
	}
	function getElementsByName(tagName, eName){  
		var tags = document.getElementsByTagName(tagName);  
		var returns = new Array();  
      	if (tags != null && tags.length > 0) {  
			for (var i = 0; i < tags.length; i++) {  
				if (tags[i].getAttribute("name") == eName) {  
					returns[returns.length] = tags[i];  
				}  
			}  
		}  
		return returns;  
	}
	function Show_More_Attrgroup(){
		var attr_list_dl = getElementsByName('dl','attr-group-dl');
		var attr_group_more_text = document.getElementById('attr-group-more-text');
		if(begin_hidden==2){
			for(var i=0;i<attr_list_dl.length;i++){
				attr_list_dl[i].style.display= i >= begin_hidden ? 'none' : 'block';
			}
			attr_group_more_text.innerHTML="更多选项（" + attr_group_more_txt + "）";
			init_position_left();
			begin_hidden=0;
		}else{
			for(var i=0;i<attr_list_dl.length;i++){
				attr_list_dl[i].style.display='block';				
			}
			attr_group_more_text.innerHTML="收起";
			init_position_left();
			begin_hidden=2;
		}
	}
	// 是否显示“更多”__初始化
	function init_more(boxid, moreid, height){
	     var obj_brand=document.getElementById(boxid);
	     var more_brand = document.getElementById(moreid);
	     if (obj_brand.clientHeight > height){
			obj_brand.style.height= height+ "px";
			obj_brand.style.overflow="hidden";
			more_brand.innerHTML='<a href="##">更多</a>';
	     }
	 }
	 function slideDiv(thisobj, divID,Height){  
	     var obj=document.getElementById(divID).style;  
	     if(obj.height==""){  
         	obj.height= Height+ "px";  
         	obj.overflow="hidden";
	     	thisobj.innerHTML="更多";
	     	thisobj.className="more-wrzc-1";
	        // 如果是品牌，额外处理
			if(divID=='brand-abox'){
			   //obj.width="456px";
			   getBrand_By_Zimu(document.getElementById('brand-zimu-all'),'');
			   document.getElementById('brand-sobox').style.display = "none";
			   document.getElementById('brand-zimu').style.display = "none";
			   document.getElementById('brand-abox-father').className="";
			}
         }else{  
         	obj.height="";  
         	obj.overflow="";  
	     	thisobj.innerHTML="收起";
	     	thisobj.className="more-wrzc-2";
	        // 如果是品牌，额外处理
			if(divID=='brand-abox'){
			   //obj.width="456px";
				   document.getElementById('brand-sobox').style.display = "block";
			   document.getElementById('brand-zimu').style.display = "block";
			   //getBrand_By_Zimu(document.getElementById('brand-zimu-all'),'');
			   document.getElementById('brand-abox-father').className="brand-more-wygk";
			 }
	     }  
	}
	function getBrand_By_Name(val){
	    val =val.toLocaleLowerCase();
	    var brand_list = document.getElementById('brand-abox').getElementsByTagName('li');    
	    for(var i=0;i<brand_list.length;i++){
			//document.getElementById('brand-abox').style.width="auto";
			var name_attr_value= brand_list[i].getAttribute("name").toLocaleLowerCase();
			if(brand_list[i].title.indexOf(val)==0 || name_attr_value.indexOf(val)==0 || val==''){
				brand_list[i].style.display='block';
			}else{
				brand_list[i].style.display='none';
			}
	    }
	}
	//点击字母切换品牌
	function getBrand_By_Zimu(obj, zimu)
	{
		document.getElementById('brand-sobox-input').value="可搜索拼音、汉字查找品牌";
		obj.focus();
		var brand_zimu=document.getElementById('brand-zimu');
		var zimu_span_list = brand_zimu.getElementsByTagName('span');
		for(var i=0;i<zimu_span_list.length;i++){
			zimu_span_list[i].className='';
		}
		var thisspan=obj.parentNode;
		thisspan.className='span';
		var brand_list = document.getElementById('brand-abox').getElementsByTagName('li');			
		for(var i=0;i<brand_list.length;i++){	
			//document.getElementById('brand-abox').style.width="auto";
			if(brand_list[i].getAttribute('rel') == zimu || zimu==''){
				brand_list[i].style.display='block';
			}else{
				brand_list[i].style.display='none';
			}
		}
	}
	var duoxuan_a_valid=new Array();
	// 点击多选， 显示多选区
	function showDuoXuan(dx_divid, a_valid_id){	     
	     var dx_dl_wrzc = document.getElementById('attr-list-ul').getElementsByTagName('dl');
	     for(var i=0;i<dx_dl_wrzc.length;i++){
			dx_dl_wrzc[i].className='';
			dx_dl_wrzc[0].className='selected-attr-dl';
	     }
	     var dxDiv=document.getElementById(dx_divid);
	     dxDiv.className ="duoxuan";
	     duoxuan_a_valid[a_valid_id]=1;
	     
	}
	function hiddenDuoXuan(dx_divid, a_valid_id){
		var dxDiv=document.getElementById(dx_divid);
		dxDiv.className ="";
		duoxuan_a_valid[a_valid_id]=0;
		if(a_valid_id=='brand'){
			var ul_obj_wrzc = document.getElementById('brand-abox');
			var li_list_wrzc = ul_obj_wrzc.getElementsByTagName('li');
			if(li_list_wrzc){
				for(var j=0;j<li_list_wrzc.length;j++){
					li_list_wrzc[j].className="";
				}
			}
		}else{
			var ul_obj_wrzc = document.getElementById('attr-abox-'+a_valid_id);
		}
		var input_list = ul_obj_wrzc.getElementsByTagName('input');
		var span_list = ul_obj_wrzc.getElementsByTagName('span');
		for(var j=0;j<input_list.length;j++){
			input_list[j].checked=false;
		}
		if(span_list.length){
			for(var j=0;j<span_list.length;j++){
				span_list[j].className="color-wygk";
			}
		}
	}
	function duoxuan_Onclick(a_valid_id, idid, thisobj)
	{			
		if (duoxuan_a_valid[a_valid_id]){
			if (thisobj){	
				var fatherObj = thisobj.parentNode;
				if (a_valid_id =="brand"){
					fatherObj.className = fatherObj.className == "brand-seled" ? "" : "brand-seled";
					}else{
					fatherObj.className =   fatherObj.className == "color-wygk" ? "color-wygk-seled" : "color-wygk";
				}
			}
			document.getElementById('chk-'+a_valid_id+'-'+idid).checked= !document.getElementById('chk-'+a_valid_id+'-'+idid).checked;
			return false;
		}
	}
	
	function duoxuan_Submit(dxid, indexid, attr_count, category, brand_id, price_min, price_max,  filter_attr,filter)
	{		
		var theForm =document.forms['theForm'];
		var chklist=theForm.elements['checkbox_'+ dxid+'[]'];
		var newpara="";
		var mm=0;
		for(var k=0;k<chklist.length;k++){
			if(chklist[k].checked){
				//alert(chklist[k].value);
				newpara += mm>0 ? "_" : "";
				newpara += chklist[k].value;
				mm++;
			}
		}
		if (mm==0){
			return false;
		}
		if(dxid=='brand'){
			brand_id = newpara;
		}else{
			var attr_array = new Array();
			filter_attr = filter_attr.replace(/\./g,",");
			attr_array=filter_attr.split(',');
			for(var h=0;h<attr_count;h++){
				if(indexid == h){
					attr_array[indexid] = newpara;
				}else{
					if(attr_array[h]){
					}else{
					 attr_array[h] = 0;
					}
				}
			}
			filter_attr = attr_array.toString();
		}
		filter_attr = filter_attr.replace(/,/g,".");
		var url="other.php";
		//var url="category.php";
		url += "?id="+ category;
		url += brand_id ? "&brand="+brand_id : "";
		url += price_min ? "&price_min="+price_min : "&price_min=0";
		url += price_max ? "&price_max="+price_max : "&price_max=0";
		url += filter_attr ? "&filter_attr="+filter_attr : "&filter_attr=0";
		url += filter ? "&filter="+filter : "&filter=0";
		//location.href=url;
		return_url(url,dxid);
	}
	function return_url(url,dxid){
	  $.ajax({    
		    url:url,   
		    type:'get',
		    cache:false,
		    dataType:'text',
		    success:function(data){
		        var obj = document.getElementById('button-'+dxid);
		        obj.href = data;
			obj.click();
			//location.href=data;
		     }
		});
	}
	
	</script> 
        <form action="##" method="post" name="theForm">
      <div class="box-attr-wygk" id="attr-list-ul"> 
         
        
         
        
                <dl>
          <dt>价格：</dt>
          <dd class="moredd">&nbsp;</dd>
          <dd>
            <ul>
               
               
               
                            <li><a href="##">0&nbsp;-&nbsp;60</a></li>
               
               
                            <li><a href="##">60&nbsp;-&nbsp;120</a></li>
               
               
                            <li><a href="##">120&nbsp;-&nbsp;180</a></li>
               
               
                            <li><a href="##">180&nbsp;-&nbsp;240</a></li>
               
               
                            <li><a href="##">240&nbsp;-&nbsp;300</a></li>
               
                            <li> 
                
                
                <input type="text" name="price_min" id="price_min" value="0" class="price-wrzc"   autocomplete="off">
                <i></i>
                <input type="text" name="price_max" id="price_max" value="0" class="price-wrzc"   autocomplete="off">
                
                 
                <a class="select-button" href="##">确定</a> </li>
            </ul>
          </dd>
        </dl>
         
        
         
      </div>
       
      <script type="text/javascript">init_position_left(); </script>
    </form>
    <script type="text/javascript">
      $(function(){
		 $('.color-wygk-li span').click(function(){
			var seled_num = $(this).parents('ul').find('.color-wygk-seled').length;
			if(seled_num > 0){
				$(this).parents('dd').find('.select-button').eq(0).attr('class','select-button select-button-sumbit');	
			}else if(seled_num == 0){
				$(this).parents('dd').find('.select-button').eq(0).attr('class','select-button disabled');	
			}
		 })
		 $('.other-wygk-li input[type="checkbox"]').bind('click',function(){
			 var seled_input_num = $(this).parents('ul').find('input[type="checkbox"]:checked').length;
			 if(seled_input_num>0){
				 $(this).parents('dd').find('.select-button').eq(0).attr('class','select-button select-button-sumbit');	
			 }else if(seled_input_num == 0){
				 $(this).parents('dd').find('.select-button').eq(0).attr('class','select-button disabled');
			 }
		 })  
	  })
      </script> 
         
     
    
    <div class="blank15"></div>
    <div class="content-wrap category-wrap clearfix">
        <div class="aside">
        	<span class="slide-aside"></span>
            <div class="aside-inner">
                                <div class="aside-con">
                    <h2 class="aside-tit">新品推荐</h2>
                    <ul class="aside-list">
                         
                                                <li>
                            <div class="p-img">
                                <a target="_blank" title="江口醇 方形蓝色马六甲 52度500ml*2瓶装 高度浓香型国产白酒 纯粮酒水特价包邮" href="##"><img alt="江口醇 方形蓝色马六甲 52度500ml*2瓶装 高度浓香型国产白酒 纯粮酒水特价包邮" data-original="${ctx}/statics/images/271_thumb_G_1456452775873.jpg" src="${ctx}/statics/images/271_thumb_G_1456452775873.jpg" style="display: inline;"></a> 
                            </div>
                            <div class="p-name">
                                <a target="_blank" title="江口醇 方形蓝色马六甲 52度500ml*2瓶装 高度浓香型国产白酒 纯粮酒水特价包邮" href="##">江口醇 方形蓝色马六甲 52度500ml*2瓶装 高度浓香型国产白酒 纯粮酒水特价包邮</a>
                            </div>
                            <div class="p-price">
                                <span class="sale-price main-color">¥198.0</span>
                                <span class="market-price"><del>¥237.0</del></span>
                            </div>
                        </li>
                                                 
                                                <li>
                            <div class="p-img">
                                <a target="_blank" title="五粮液 45度小酒版 水晶礼盒装 浓香型白酒 官方授权 酒厂直供 中国名酒 250ML" href="##"><img alt="五粮液 45度小酒版 水晶礼盒装 浓香型白酒 官方授权 酒厂直供 中国名酒 250ML" data-original="${ctx}/statics/images/270_thumb_G_1456452662995.jpg" src="${ctx}/statics/images/270_thumb_G_1456452662995.jpg" style="display: inline;"></a> 
                            </div>
                            <div class="p-name">
                                <a target="_blank" title="五粮液 45度小酒版 水晶礼盒装 浓香型白酒 官方授权 酒厂直供 中国名酒 250ML" href="##">五粮液 45度小酒版 水晶礼盒装 浓香型白酒 官方授权 酒厂直供 中国名酒 250ML</a>
                            </div>
                            <div class="p-price">
                                <span class="sale-price main-color">¥200.0</span>
                                <span class="market-price"><del>¥333.0</del></span>
                            </div>
                        </li>
                                                 
                                                <li>
                            <div class="p-img">
                                <a target="_blank" title="韩国原装进口lotte乐天 2%富足水蜜桃果汁饮料240ml听装 夏季饮料" href="##"><img alt="韩国原装进口lotte乐天 2%富足水蜜桃果汁饮料240ml听装 夏季饮料" data-original="${ctx}/statics/images/287_thumb_G_1457592139010.jpg" src="${ctx}/statics/images/287_thumb_G_1457592139010.jpg" style="display: inline;"></a> 
                            </div>
                            <div class="p-name">
                                <a target="_blank" title="韩国原装进口lotte乐天 2%富足水蜜桃果汁饮料240ml听装 夏季饮料" href="##">韩国原装进口lotte乐天 2%富足水蜜桃果汁饮料240ml听装 夏季饮料</a>
                            </div>
                            <div class="p-price">
                                <span class="sale-price main-color">¥5.3</span>
                                <span class="market-price"><del>¥6.0</del></span>
                            </div>
                        </li>
                                                 
                                                <li>
                            <div class="p-img">
                                <a target="_blank" title="江鼎 白酒衡水老白干大青花50度高度白酒500ML" href="##"><img alt="江鼎 白酒衡水老白干大青花50度高度白酒500ML" data-original="${ctx}/statics/images/272_thumb_G_1456452879681.jpg" src="${ctx}/statics/images/272_thumb_G_1456452879681.jpg" style="display: inline;"></a> 
                            </div>
                            <div class="p-name">
                                <a target="_blank" title="江鼎 白酒衡水老白干大青花50度高度白酒500ML" href="##">江鼎 白酒衡水老白干大青花50度高度白酒500ML</a>
                            </div>
                            <div class="p-price">
                                <span class="sale-price main-color">¥118.0</span>
                                <span class="market-price"><del>¥141.0</del></span>
                            </div>
                        </li>
                                                 
                                                <li>
                            <div class="p-img">
                                <a target="_blank" title="康师傅优悦水550ml*24瓶（整箱）" href="##"><img alt="康师傅优悦水550ml*24瓶（整箱）" data-original="${ctx}/statics/images/273_thumb_G_1456452987184.jpg" src="${ctx}/statics/images/273_thumb_G_1456452987184.jpg" style="display: inline;"></a> 
                            </div>
                            <div class="p-name">
                                <a target="_blank" title="康师傅优悦水550ml*24瓶（整箱）" href="##">康师傅优悦水550ml*24瓶（整箱）</a>
                            </div>
                            <div class="p-price">
                                <span class="sale-price main-color">¥19.9</span>
                                <span class="market-price"><del>¥23.0</del></span>
                            </div>
                        </li>
                                                 
                                                 
                                                 
                                                 
                                                 
                                                                    </ul>
                </div>
                 
                
<div class="aside-con">
	<h2 class="aside-tit">销量排行榜</h2>
    <ul class="aside-list">
				<li>
        	<div class="p-img">
            	<a target="_blank" title="" href="##"><img alt="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机" data-original="${ctx}/statics/images/100_thumb_G_1437523484060.jpg" src="${ctx}/statics/images/100_thumb_G_1437523484060.jpg" style="display: inline;"></a> 
            </div>
            <div class="p-name">
                <a target="_blank" title="" href="##">苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机</a>
            </div>
            <div class="p-price">
                <span class="sale-price main-color">¥4888.0</span>
                <span class="sale-num">销量: 9</span>
            </div>
      </li>
  </ul>
</div>
 
            </div>
        </div>
    	
    	<div class="main">
 <div id="filter" class="" style="">
  <form method="get" name="listform" action="##">
    <div class="fore1">
      <dl class="order">
        <dd class="first "><a href="##">上架<b class="icon-order-DESCending"></b></a></dd>
        <dd class=""><a href="##">销量<b class="icon-order-DESCending"></b></a></dd>
        <dd class=""><a href="##">价格<b class="icon-order-DESCending"></b></a></dd>
        <dd class="curr"><a href="##">更新<b class="icon-order-ASCending"></b></a></dd>
        <dd class=""><a href="##">人气<b class="icon-order-DESCending"></b></a></dd>
      </dl>
      <div class="pagin"> 
         
       <!--  <a class="prev"><span class="icon prev-disabled"></span></a> 
         
        <span class="text"><font class="main-color">1</font>/2</span> 
         
        <a href="##"><span class="icon next-btn"></span></a>  -->
         
      </div>
      <div class="total">共<span class="main-color">${total}</span>个商品</div>
    </div>
    <div class="fore2">
      <div class="filter-btn"> <a class="filter-tag " href="##">
      <!-- <i class="icon"></i><span class="text">仅显示有货</span></a>          
        <a href="##"> <input class="none" type="radio" name="fff" onclick="top.location.href='#'"> <i class="icon"></i> <span class="text">全部</span> </a> 
         
        <a href="##"> <input class="none" type="radio" name="fff" onclick="top.location.href='#'"> <i class="icon"></i> <span class="text">网站自营</span> </a> 
         
        <a href="##"> <input class="none" type="radio" name="fff" onclick="top.location.href='#'"> <i class="icon"></i> <span class="text">入驻商店铺</span> </a> 
          -->
      </div>
      <div class="filter-mod"> <a href="##"><span class="filter-type-icon"></span></a> <a href="##"><span class="filter-type-icon"></span></a> <a href="##"><span class="filter-type-icon"></span></a> </div>
    </div>
    <input type="hidden" name="category" value="7">
    <input type="hidden" name="display" value="grid" id="display">
    <input type="hidden" name="brand" value="0">
    <input type="hidden" name="price_min" value="0">
    <input type="hidden" name="price_max" value="0">
    <input type="hidden" name="filter_attr" value="0">
    <input type="hidden" name="page" value="1">
    <input type="hidden" name="sort" value="last_update">
    <input type="hidden" name="order" value="ASC">
  </form>
</div>
 
<form name="compareForm" action="##" method="post" onsubmit="return compareGoods(this);">
    <ul class="list-grid clearfix">
    <c:forEach items="${productsList}" var="pl">
     <li class="item" id="li_250" style="width: 229px;">
        <div class="item-con"> 
          <div class="item-tag-box">
          <div class="item-tag"><span>爆款</span><i></i></div>          </div>
          <div class="item-pic">
          	<a href="${ctx}/details/ProductDeatil.html?id=${pl.id}">
            	<img data-original="${ctx}/statics/images/${pl.fileName}" src="${ctx}/statics/images/${pl.fileName}" title="${pl.name}" class="pic_img_250" style="display: inline;">
            </a>
          </div>
                    <div class="item-info">
          	<div class="item-price">
            	<em class="sale-price main-color" title="本店价：¥${pl.price}">¥${pl.price}</em>
                <em class="sale-count">已售0件</em>
            </div>
            <div class="item-name">
            	<a href="##">${pl.name}</a>
            </div>
            <div class="item-operate">
            	<a class="operate-btn compare-btn" data-goods="250" data-type="0" onclick="Compare.add(250,怡宝 纯净水 4.5L*4 箱装,, ${ctx}/statics/images/${pl.fileName}, ¥29.9)"><i></i>对比</a>
            	<a id="collect_250" href="javascript:void(0)" class="operate-btn collet-btn"><i></i>收藏</a>              
                <a href="javascript:void(0)" class="add-cart" onclick="addToCart('${pl.id}')" title="加入购物车"></a>
             </div>
          </div>
        </div>
      </li>
    </c:forEach>
       
 </ul>
   
</form>
<script type="Text/Javascript" language="JavaScript">
re_collect();
function re_collect(id){
  goods_id = (typeof(id) == "undefined" ? 0 : id);
  Ajax.call('user.php?act=re_collect', 'id=' + goods_id, re_collectResponse, 'GET', 'JSON');
}
function re_collectResponse(result){
  if (result.goods_id > 0){
    document.getElementById("collect_" + result.goods_id).className = (result.is_collect == 1 ? "operate-btn collet-btn curr" : "operate-btn collet-btn");
  }else{
    $("a[id^='collect_']").className = "operate-btn collet-btn";
    for(i = 0; i < result.is_collect.length; i++){
      document.getElementById("collect_" + result.is_collect[i]).className = "operate-btn collet-btn curr";
    }
  }
}
function selectPage(sel){
  sel.form.submit();
}

</script> 
<script type="text/javascript">
window.onload = function(){
  Compare.init();
  fixpng();
}
var button_compare = '';
var exist = "您已经选择了%s";
var count_limit = "最多只能选择4个商品进行对比";
var goods_type_different = "\"%s\"和已选择商品类型不同无法进行对比";
var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
var btn_buy = "购买";
var is_cancel = "取消";
var select_spe = "请选择商品属性";
</script> 
 
<script type="text/javascript" src="${ctx}/statics/js/json2.js"></script> 
<div id="compareBox" style="left: 572px;">
  <div class="menu">
    <ul>
      <li class="current" data-value="compare">对比栏</li>
      <li data-value="history">最近浏览</li>
    </ul>
    <a class="hide-compare" href="##"></a>
    <div style="clear:both"></div>
  </div>
  <div id="compareList"><dl><dt style="background-color: rgb(246, 246, 246);">1</dt><dd>您还可以继续添加</dd></dl><dl><dt style="background-color: rgb(246, 246, 246);">2</dt><dd>您还可以继续添加</dd></dl><dl><dt style="background-color: rgb(246, 246, 246);">3</dt><dd>您还可以继续添加</dd></dl><dl><dt style="background-color: rgb(246, 246, 246);">4</dt><dd>您还可以继续添加</dd></dl><div class="operate"><a class="compare">对比</a><a class="clear">清空对比栏</a></div></div>
  <div id="historyList" style="display:none;">
  	<span id="sc-prev" class="sc-prev scroll-btn" style="display: none;"></span>
    <span id="sc-next" class="sc-next scroll-btn" style="display: none;"></span>
    <div class="scroll_wrap">  </div>
  </div>
</div>
<script>
$(function(){
		$('.collet-btn').click(function(){
		$('.pop-login,.pop-mask').show();	
	})
		var scroll_height = $('#filter').offset().top;
	$(window).scroll(function(){
		var this_scrollTop = $(this).scrollTop();
		if(this_scrollTop > scroll_height){
			$('#filter').addClass('filter-fixed').css({'left':($(window).width()-$('.filter-fixed').outerWidth())/2});
		}else{
			$('#filter').removeClass('filter-fixed').css('left','');	
		}
	})	
})
</script>
 

<%@include file="common/pagerBar.jsp" %>



<script type="Text/Javascript" language="JavaScript">
function selectPage(sel){
  sel.form.submit();
}

</script> 
</div>
    </div>


    <div class="browse-history none">
	<div class="browse-history-tab clearfix">
    	        <span class="tab-span">浏览历史</span>
        <div class="browse-history-line main-bg-color"></div>
        <div class="browse-history-other">
        	        	<a onclick="clear_history()" href="##"><i class="icon"></i><em class="text">清空</em></a>
        </div>
    </div>
    <div class="browse-history-con">
    	<div class="browse-history-inner">
        	            <ul id="history_list" class="history-panel ">
                            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
function clear_history(){
	Ajax.call('user.php', 'act=clear_history',clear_history_Response, 'GET', 'TEXT',1,1);
}
function clear_history_Response(res){
	document.getElementById('history_list').innerHTML = '您已清空最近浏览过的商品';
}
if($('.browse-history-con li').length == 0){
	$('.browse-history').addClass('none');	
}
$('.browse-history .browse-history-tab .tab-span').mouseover(function(){
	$(this).addClass('main-color').siblings('.tab-span').removeClass('main-color');
	$('.browse-history-line').stop().animate({'left':$(this).position().left,'width':$(this).outerWidth()},500);
	$('.browse-history-other').find('a').eq($(this).index()).removeClass('none').siblings('a').addClass('none');
	$('.browse-history-inner ul').eq($(this).index()).removeClass('none').siblings('ul').addClass('none');
})
var history_num = 0;
var history_li = $('.browse-history .recommend-panel li');
var history_slide_w = history_li.outerWidth()*6;
var history_slide_num = Math.ceil(history_li.length/6);
$('.browse-history .history-recommend-change').click(function(){
	history_num++;
	if(history_num > (history_slide_num-1)){
		history_num = 0;	
	}
	$('.browse-history .recommend-panel').css({'left':-history_num*history_slide_w});
})
</script>   </div>
  <div class="right-sidebar-con">
	<%@include file="common/shoppingCar.jsp" %>
</div>
<div class="pop-main pop-compare">
	<div class="pop-header">
    	<span>温馨提示</span>
        <a class="pop-close" href="##"></a>
    </div>
    <div class="pop-con">
    	<i class="pop-icon"></i>
        <p class="pop-text"></p>
        <a href="##">确定</a><a href="##">取消</a>
    </div>
</div>
<div class="pop-main pop-compare-small">
	<div class="pop-header">
    	<span>温馨提示</span>
        <a class="pop-close" href="##"></a>
    </div>
    <div class="pop-con">
    	<i class="pop-icon"></i>
        <p class="pop-text"></p>
        <a href="##">关闭</a>
    </div>
</div>
<div id="tell-me-result" class="tell-me-form" style="display:none;">
	<div class="pop-header"><span>温馨提示</span><a href="##"></a></div>
    <div class="tell-me-content">
    	<div class="tell-me-result">
            <div class="result-icon"></div>
            <div class="result-text">
            	<div class="title"></div>
                <div class="bottom">
                	<span onclick="javascript:closeDiv1();" class="cancel-btn">关闭</span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="pop-mask"></div>
<div class="pop-main pop-login" style="top: 258.5px;">
  <div class="pop-header"> <span>您尚未登录</span><a class="pop-close" href="##"></a></div>
  <div class="pop-con">
    <form name="formLogin" action="##" method="post" onsubmit="return user_login();">
      <div class="form">
      	<div class="mt">
        	<h2>用户登陆</h2><a href="##"><span class="text">立即注册</span><i class="icon"></i></a>
        </div>
        <div class="mc">
        	<div class="msg-wrap">
            	<div class="msg-error">
                	<i class="msg-icon"></i><span id="msg-error-text" class="msg-error-text"></span>
                </div>
            </div>
        	<div class="item item-name">
            	<i class="icon"></i>
                <input name="username" id="username" type="text" class="text" value="" tabindex="1" placeholder="手机号/用户名/邮箱">
            </div>
            <div class="item item-password">
                <i class="icon"></i>
                <input type="password" name="password" id="password" class="text" value="" tabindex="2" placeholder="密码">
            </div>
                        <div class="item item-authcode" id="o-authcode">
            	<div class="item-detail fl">
                    <i class="icon"></i>
                    <input type="text" id="authcode" name="captcha" class="text text-1" tabindex="3" placeholder="验证码">
                </div>
                <label class="img fl">
                    <img src="" alt="captcha" style="vertical-align: middle;cursor: pointer;" onclick="this.src=captcha.php?is_login=1&amp;+Math.random()">
                </label>
            </div>
                        <div class="safety" id="autoentry">
                <input type="checkbox" value="1" name="remember" id="remember" class="checkbox">
                <label for="remember" class="mar-b">请保存我这次的登录信息</label>
                <a class="forget_password fr" href="##">忘记密码？</a> 
            </div>
            <div class="login-btn">
              <input type="hidden" name="act" value="act_login">
              <input type="hidden" name="back_act" value="">
              <input type="submit" name="submit" class="btn-img" id="loginsubmit" value="立即登录">
            </div>
            <div class="item-coagent">
		    	<a href="##"><i class="weixin"></i>微信</a>
            	<a href="##"><i class="qq"></i>QQ</a>
            	<a href="##"><i class="sina"></i>新浪</a>
            	<a href="##"><i class="alipay"></i>支付宝</a>
            </div>
        </div>
      </div>
    </form>
  </div>
</div>
  <script type="text/javascript" src="${ctx}/statics/js/arrive_notice.js"></script>
<div class="tell-me-form" style="display: none; left: 701.5px; top: 295.5px;" id="tell-me-table">
	<div class="pop-header"><span>到货通知</span><a href="##"></a></div>
    <div class="tell-me-content">
    	<table cellpadding="0" cellspacing="0" width="100%" border="0">
              <tbody><tr>
                <td colspan="2" align="left">
                    <div class="blank10"></div>
                    <div class="notice-note">
                        <p class="main-color" id="rgoods_name"></p>
                        当商品进行补货时，我们将以短信、邮件的形式通知您，最多发送一次，不会对您造成干扰。
                    </div>
                </td>
              </tr>
              <tr>
                <td width="30%" align="right"><font class="main-color">*</font>数量：</td>
                <td align="left">
                    <input type="text" value="1" id="book-number" class="inputBg">
                    <div class="tell-me-notice">
                        <i class="notice-icon"></i><span class="notice-text num-notice"></span>
                    </div>
                </td>
              </tr>
              <tr>
                <td align="right"><font class="main-color">*</font>手机号码：</td>
                <td align="left">
                    <input type="text" value="" id="phone-num" class="inputBg">
                    <div class="tell-me-notice">
                        <i class="notice-icon"></i><span class="notice-text phone-notice"></span>
                    </div>
                </td>
              </tr>
              <tr>
                <td align="right"><font class="main-color">*</font>电子邮箱：</td>
                <td align="left">
                    <input type="text" value="" id="arrival-email" class="inputBg">
                    <div class="tell-me-notice">
                        <i class="notice-icon"></i><span class="notice-text email-notice"></span>
                    </div>
                </td>
              </tr>
              <tr>
                <td colspan="2" align="center" style="padding:20px 0 30px;">
                    <input type="button" value="马上提交" onclick="tell_me1(183)" class="sure-btn">
                </td>
              </tr>
            </tbody></table>
    </div>
</div>
  <%@include file="foot.jsp" %>
<script>//收集skuId
var skuIds = [];
$('ul.list-h li[sku]').each(function(i){
    skuIds.push($(this).attr('sku'));
})
function setPrice(url){
  var max = 'max='+document.getElementById('price_max').value;
  var min = 'min='+document.getElementById('price_min').value;
  var remin = /min=([0-9])*/ig;  //•g（全文查找）；•i（忽略大小写）；•m（多行查找）  
  var remax = /max=([0-9])*/ig;  //•g（全文查找）；•i（忽略大小写）；•m（多行查找）  
  var nurl = url.replace(remin,min).replace(remax,max);
  location.href = nurl;
}
</script> 
 
<script type="text/javascript">
$("img").lazyload({
    effect       : "fadeIn",
	 skip_invisible : true,
	 failure_limit : 20
});
</script> 
<script type="text/javascript" src="${ctx}/statics/js/compare.js"></script> 


</body></html>