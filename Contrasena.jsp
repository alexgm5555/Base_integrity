<!-- bizsolo generate="false" -->
<%--  This JSP has been generated by using from xsl version 9.0 at Mon Jul 11 15:17:20 COT 2016 --%>
<!DOCTYPE html>
<html xmlns:bizsolo="http://www.savvion.com/sbm/BizSolo" xmlns:sbm="http://www.savvion.com/sbm" xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:xalan="http://xml.apache.org/xalan" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:sfe="http://www.savvion.com/sbm/sfe" xmlns:c="http://java.sun.com/jsp/jstl/core">
<head><META http-equiv="Content-Type" content="text/html; charset=utf-8">

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.savvion.BizSolo.Server.*,com.savvion.BizSolo.beans.*,com.savvion.sbm.util.DatabaseMapping,java.util.Vector,java.util.Locale" %>
<%@ page import="com.savvion.sbm.bizsolo.util.session.*,java.net.*" %>
<%@ page errorPage="/BizSolo/common/jsp/expcontroller.jsp" %>
<%@ taglib uri="/BizSolo/common/tlds/bizsolo.tld" prefix="bizsolo" %>
<%@ taglib uri="/bpmportal/tld/bpmportal.tld" prefix="sbm" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" tagdir="/WEB-INF/tags/form"%>
<%@ taglib prefix="sfe" uri="http://jmaki/v1.0/jsp" %>
<%@ include file="/BizSolo/common/jsp/include_i18n_msgs.jsp" %>
  <jsp:useBean id="bizManage" class="com.savvion.sbm.bizmanage.api.BizManageBean" scope="session"></jsp:useBean>
  <jsp:useBean id="bean" class="com.savvion.BizSolo.beans.Bean" scope="session"></jsp:useBean>
  <jsp:useBean id="factoryBean" class="com.savvion.BizSolo.beans.EPFactoryBean" scope="session"></jsp:useBean>
  <jsp:useBean id="bizSite" class="com.savvion.sbm.bpmportal.bizsite.api.BizSiteBean" scope="session"></jsp:useBean>
<%! String _PageName = "Contrasena"; %>
<%! String __webAppName = "Base_Integrity"; %>
<% pageContext.setAttribute( "contextPath", request.getContextPath()+"/"); %>
<% pageContext.setAttribute( "maxMulitLineLength", DatabaseMapping.self().getSQLSize(java.lang.String.class));  %>
<%java.util.List<String> priorities = com.savvion.sbm.bpmportal.util.PortalUtil.self().getPriorities();%>
<% pageContext.setAttribute( "_priorities",priorities); %>

<title>Contrasena</title>
<%boolean isStandaloneBS = (bizManage == null || bizManage.getName() == null || "".equals(bizManage.getName()) || bizManage.getLocale() == null);Locale myLocale = (!isStandaloneBS) ? bizManage.getLocale() : request.getLocale();%>
<!-- Javascript -->
<script language="JavaScript"> var getLocalizedString = parent.getLocalizedString; </script>
<form:includes contextPath="${contextPath}"/>
<script language="JavaScript">
 Ext.BLANK_IMAGE_URL = '<c:out value='${contextPath}'/>bpmportal/javascript/ext/resources/images/default/s.gif';
	 
	  var isIFrame = <%= (PublicResources.INTERACTIVE_MODE.equalsIgnoreCase(bean.getPropString(PublicResources.MODE)) || PublicResources.SLAVE_MODE.equalsIgnoreCase(bean.getPropString(PublicResources.MODE))) ? true : false %>;
	  

	function getContextPath(){
        return "<%=request.getContextPath()%>";
    }
</script>


<sbm:setLocale value="<%= bizManage.getLocale() %>"></sbm:setLocale>
<% try{ %><sbm:setBundle scope="page" basename="Base_Integrity/properties/Base_Integrity"></sbm:setBundle><% } catch(Exception e){}%>
<bizsolo:getApplicationResources baseName="Base_Integrity/properties/Base_Integrity"/></head>
<body class="apbody yui-skin-sam" onLoad="setCheckBoxStyleForIE();hideControls();beforeInitControls();initControls();initTabs();sbm.utils.onDOMReady();">
<form method="post" name="form" onsubmit="return sbm.utils.onFormSubmit();">
<div id="northDiv"><bizsolo:xsrf/></div><% /* Workaround, activityName will disappear in the future */ %>
<% String activityName = bean.getPropString("workitemName"); %>
<div id="resultDiv">
<div style='visibility:hidden;display:none' class='vBoxClass' name='errors' id='errors'></div>
<input name="crtPage" type="hidden" value="Contrasena"><input name="crtApp" type="hidden" value="Base_Integrity"><input name="activityMode" type="hidden" value="procReq"><input type="hidden" name="nextPage" value="Start.jsp">
<input name="_yahoo_flow_button" type="hidden" value=''>
<!-- Content --> 

    
<!-- Header -->
<bizsolo:choose><bizsolo:when test='<%=bean.getPropString(\"workitemName\") != null %>'><table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="ApSegTblInBg">
<table width="100%" cellpadding="4" align="center" cellspacing="0" border="0">
<tr>

<td class="ApSegTitle" align="center"><bizsolo:choose><bizsolo:when test='<%=bean.getPropString(\"workitemName\") != null %>'><bizsolo:getDS name="workitemName"></bizsolo:getDS></bizsolo:when><bizsolo:otherwise><%=_PageName%></bizsolo:otherwise></bizsolo:choose></td>
</tr>
</table>
<table class="ApSegDataTbl" width="100%" cellspacing="1" cellpadding="4" border="0">
<tr>
<td width="15%" class="ApSegGenLabel"><bizsolo:getLabel type="RESOURCE" name="BIZSITE_INSTRUCTION_LABEL"></bizsolo:getLabel></td><td width="85%" class="ApSegGenData" colspan="5"><sbm:message key="workstep.Contrasena.instruction" escapeLine="true"></sbm:message></td>
</tr>
<tr>
</tr>
</table>
</td>
</tr>
</table></bizsolo:when></bizsolo:choose>

    <table align="left" cellpadding="1" cellspacing="1" class="default" id="table1" width="100%">
      <colgroup span="1">
        <col width="33%" span="1">
        <col width="700px" span="1">
        <col width="33%" span="1">
      </colgroup>
      <tbody>
        <tr>
          <td align="left" class="default" valign="top" rowspan="1" colspan="1">
            <div align="left" id=""></div>
          </td>
          <td align="left" class="default" valign="top" rowspan="1" colspan="1">
            <div align="left" id="">
              <br clear="all">
<br clear="all">
<br clear="all">
<br clear="all">
<br clear="all">
<br clear="all">
<br clear="all">
<br clear="all">
<br clear="all">
</div>
          </td>
          <td align="left" class="default" valign="top" rowspan="1" colspan="1">
            <div align="left" id=""></div>
          </td>
        </tr>
        <tr>
          <td align="left" class="default" valign="top" rowspan="1" colspan="1">
            <div align="left" id=""></div>
          </td>
          <td align="left" class="default" valign="top" rowspan="1" colspan="1">
            <div align="left" id="">
              <table align="left" cellpadding="1" cellspacing="1" class="ApSegDataTbl" id="table2" width="100%">
                <colgroup span="1">
                  <col width="470px" span="1">
                  <col width="180px" span="1">
                </colgroup>
                <tbody>
                  <tr>
                    <td align="left" class="default" valign="top" rowspan="1" colspan="1">
                      <div align="left" id="">
                        <img border="0" id="image03" width="450" height="163" src="images/logoInt.png" tabindex="0">
                        <br clear="all">
<table align="left" cellpadding="1" cellspacing="1" class="ApSegDataTbl" id="table4" width="100%">
                          <colgroup span="1">
                            <col width="20px" span="1">
                            <col width="390px" span="1">
                            <col width="20px" span="1">
                          </colgroup>
                          <tbody>
                            <tr>
                              <td align="left" class="default" valign="top" rowspan="1" colspan="1">
                                <div align="left" id=""></div>
                              </td>
                              <td align="left" class="default" valign="top" rowspan="1" colspan="1">
                                <div align="left" id="">
                                  <font color="#666666" size="3">En caso de olvidar su contrase&ntilde;a suministre el correo electr&oacute;nico asociado al sistema Integrity y recibir&aacute; un correo con un link para efectuar el cambio de su contrase&ntilde;a. </font>
                                  <br clear="all">
</div>
                              </td>
                              <td align="left" class="default" valign="top" rowspan="1" colspan="1">
                                <div align="left" id=""></div>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </td>
                    <td align="left" class="default" valign="top" rowspan="1" colspan="1">
                      <div align="left" id="">
                        <br clear="all">
<br clear="all">
<br clear="all">
<br clear="all">
<img border="0" id="image01" width="198" height="50" src="images/contrasena.png" tabindex="0">
                        <br clear="all">
<br clear="all">
<font color="#000000" size="3">Usuario:</font>
                        <br clear="all">
<sfe:widget name="sbm.textfield" id="textField1" args="{'type':'text', 'size':28, 'maxlength':256, 'readonly':false, 'visible':true, 'disabled':false, 'validationType':'none', 'validation':{}, 'toolTip':'OpenEdge text field widget.', 'tabOrder':'0'}" />

                        <br clear="all">
<br clear="all">
<font color="#333333" size="3">Correo Electr&oacute;nico:</font>
                        <br clear="all">
<sfe:widget name="sbm.textfield" id="textField2" args="{'type':'text', 'size':28, 'maxlength':50, 'readonly':false, 'visible':true, 'disabled':false, 'validationType':'none', 'validation':{}, 'toolTip':'OpenEdge text field widget.', 'tabOrder':'0'}" />

                        <font color="#ffffff" size="2">.</font>
                        <div align="right" id="">
                          <input class="ApScrnButton" name="SB_Name" id="button01" type="submit" tabindex="0" value="<bizsolo:getLabel name='Enviar' type='LINK'/>" onMouseOut="this.className='ApScrnButton';" onMouseOver="this.className='ApScrnButtonHover';" onClick="clickedButton=this.name;this.onsubmit = new Function('return false');">

                        </div>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td align="left" class="default" valign="top" rowspan="1" colspan="1">
                      <div align="left" id="">
                        <div align="center" id="">
                          <img border="0" id="image02" width="233" height="67" src="images/powered.png" tabindex="0">
                        </div>
                      </div>
                    </td>
                    <td align="left" class="default" valign="top" rowspan="1" colspan="1">
                      <div align="left" id=""></div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </td>
          <td align="left" class="default" valign="top" rowspan="1" colspan="1">
            <div align="left" id=""></div>
          </td>
        </tr>
        <tr>
          <td align="left" class="default" valign="top" rowspan="1" colspan="1">
            <div align="left" id=""></div>
          </td>
          <td align="left" class="default" valign="top" rowspan="1" colspan="1">
            <div align="left" id=""></div>
          </td>
          <td align="left" class="default" valign="top" rowspan="1" colspan="1">
            <div align="left" id=""></div>
          </td>
        </tr>
      </tbody>
    </table>
    
  
                    <div id="resizablepanel" style="display:none">
                        <div class="hd">Alert Dialog</div>
                        <div class="bd"></div>
                        <div class="ft"></div>
                    </div> 
<div id="southDiv"></div></form>
</body>

<script language="JavaScript">
<!--
function beforeInitControls() {
}
-->
</script>
<script language="JavaScript">
<!--
function userValidationJavascript() {
return true;
}
-->
</script>
<sbm:dataSources appName="Base_Integrity" appType="bizsolo">
</sbm:dataSources>
<script language="JavaScript">
<!---->
</script>
<!--Initialize extensible widgets.-->
<script language="JavaScript">
<!--
var _dateFormats = {date:'<%=bean.getPropString(PublicResources.JS_CALENDAR_DATE_FORMAT)%>', dateOnly:'<%=bean.getPropString(PublicResources.JS_CALENDAR_DATE_ONLY_FORMAT)%>'};

var allWidgets = [{widget:'textField1', bound:'true', editable:'true', type:'sbm.textfield', source: {type:'DATASLOT', dataSlotName:'usuario', dataSlotType:'ABL_CHARACTER'}, target:{type:'DATASLOT', dataSlotName:'usuario', dataSlotType:'ABL_CHARACTER'}, dsType:'ABL_CHARACTER', service:'false'},
{widget:'textField2', bound:'false', editable:'true', type:'sbm.textfield', source: {type:'STATIC'}, target:{type:'DATASLOT', dataSlotName:'', dataSlotType:''}, dsType:'', service:'false'}
];
var businessObjects = [];
var formWidgetHandler;

sbm.utils.onDOMReady = function() {
YAHOO.util.Event.onDOMReady(function(){
formWidgetHandler = new FormWidgetHandler(allWidgets,null,{processName:'Base_Integrity',adapletCache:{'user':''}},'<%=request.getParameter(BizSoloRequest.BSS_FIID)%>');
 });
 }
Ext.onReady(function(){
         var viewport = new Bm.util.BmViewport('',{resultComponentXtype:'container'});

});
sbm.utils.onFormSubmit = function() {
         if(!formWidgetHandler.validateWidgets()) return false;
        try{
             if(!userValidationJavascript()) return false;
             sbm.utils.handleFormSubmit();
         }catch(e){return false;}
         document.form.action='<%=response.encodeURL("Start.jsp")%>';
         if(allWidgets.length > 0)formWidgetHandler.saveDataSlots();
         return true;
}
-->
</script>

</html>