<%@ page
	contentType="text/html;charset=iso-8859-15" session="true"
%><%@ taglib uri="/WEB-INF/tlds/struts-bean.tld" prefix="bean"
%><%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html"
%><%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic"
%><logic:iterate name="__boxlist" type="net.anotheria.anosite.content.bean.BoxBean" id="box">
   	<!-- generating box , box id: <bean:write name="box" property="id"/>, name: <bean:write name="box" property="name"/> , renderer: <bean:write name="box" property="renderer"/>, type: <bean:write name="box" property="typeName"/> -->
	<bean:define id="__box" toScope="request"  scope="page" name="box" type="net.anotheria.anosite.content.bean.BoxBean"/>
	<% String renderer = box.getRenderer(); %>
	<jsp:include page="<%=renderer%>" flush="false"/> 
</logic:iterate>