<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>    
<form name="selectPageForm" action="##" method="get">
<div class="page">
	<div class="page-wrap fr">
		<div class="page-num fl">
		<c:if test="${pager.pageCount>=1}">
			<a class="num" href="${ctx}/${pager.url}&currentPage=1">首页</a>
			<c:if test="${pager.currentPage>1}">
            <a href="${ctx}/${pager.url}&currentPage=${pager.currentPage-1}" class="num prev disabled">上一页</a>
       		</c:if>
			<c:forEach var="temp" begin="${pager.currentPage>3?pager.currentPage-3:1}" end="${pager.pageCount-pager.currentPage>3?page.currentPage+3:pager.pageCount}" step="1">
				<c:if test="${pager.currentPage==temp}">
                <a href="${ctx}/${pager.url}&currentPage=${temp}" class="num">${temp}</a>
	            </c:if>
	            <c:if test="${pager.currentPage!=temp}">
	                <a href="${ctx}/${pager.url}&currentPage=${temp}" class="num">${temp}</a>
	            </c:if>
			</c:forEach>
			<c:if test="${pager.currentPage<pager.pageCount}">
            <a href="${ctx}/${pager.url}&currentPage=${pager.currentPage+1}" class="num prev disabled">下一页</a>
       		</c:if>
			<a class="num" href="${ctx}/${pager.url}&currentPage=${pager.pageCount}">尾页</a>			
		</c:if>
		<c:if test="${pager.pageCount==0}">
		        暂无记录
		</c:if>
		
		
		
			<%-- <span class="num prev disabled"> <i class="icon"></i> <i>上一页</i>
			</span> <span class="num curr">1</span>
			<c:if test="${count>16 }">
				<a class="num" href="##">2</a>
			</c:if>
			<a class="num next" href="##"> <i>下一页</i> <i class="icon"></i>
			</a>
		</div>
		<c:if test="${count<16}">
			<div class="total">共1 页</div>
		</c:if>
		<c:if test="${count>16&&count<32}">
			<div class="total">共2页</div>
		</c:if> --%>
		</div>
	</div>
</form>