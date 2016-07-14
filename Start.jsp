<%@page import="com.savvion.BizSolo.Server.*,com.savvion.BizSolo.beans.*,java.util.*" contentType="text/html;charset=UTF-8"%>
<%@page import="com.savvion.sbm.bizsolo.util.session.*,java.net.*"%>
<%! String fid = null; %>
<% 
		if (VirtualSessionManager.isEnabled()) {
		   fid = request.getParameter(BizSoloRequest.BSS_FIID);
			if (fid == null) {
				response.sendRedirect(VirtualSessionManager.makeItselfSessionURL(request));
				return;
		}
		 }
%>
<%@page errorPage="/BizSolo/common/jsp/expcontroller.jsp" %>
<%@taglib uri="/BizSolo/common/tlds/bizsolo.tld" prefix="bizsolo"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<jsp:useBean id="bean" class="com.savvion.BizSolo.beans.Bean" scope="session"/>
<jsp:useBean id="factoryBean" class="com.savvion.BizSolo.beans.EPFactoryBean" scope="session"/>
<jsp:useBean id="bizSite" class="com.savvion.sbm.bpmportal.bizsite.api.BizSiteBean" scope="session"/>

<%! String _PageName = "Start"; %>
<%! String __webAppName = "Base_Integrity"; %>
<%! int res=-10; %>
<bizsolo:ifCrtWS name="Start" isDefault="true" >
<bizsolo:initApp name="Base_Integrity" />
<bizsolo:getParentData />
<bizsolo:if test="<%=request.getParameter(\"workitemName\")!=null %>" >
<bizsolo:executeAction wsName="" epClassName="com.savvion.BizSolo.beans.PAKGetDS" perfMethod="commit" />
</bizsolo:if>
<bizsolo:checkSecure />
<bizsolo:redirectURL page="Start.jsp?crtApp=Base_Integrity&crtPage=LoginPortal" />
</bizsolo:ifCrtWS>



<%com.progress.lang.Character usuario=bean.getPropCharacter("usuario");
com.progress.lang.Character clave=bean.getPropCharacter("clave");
com.progress.lang.Character jsonroles=bean.getPropCharacter("jsonroles");
com.progress.lang.Character estadoroles=bean.getPropCharacter("estadoroles");
com.progress.lang.Integer returnidroles=bean.getPropInteger("returnidroles");
com.progress.lang.Character estadousuarios=bean.getPropCharacter("estadousuarios");
com.progress.lang.Integer returnidusuarios=bean.getPropInteger("returnidusuarios");
com.progress.lang.Character jsonusuarios=bean.getPropCharacter("jsonusuarios");
com.progress.lang.Character jsonimg=bean.getPropCharacter("jsonimg");
com.progress.lang.Character estadoimg=bean.getPropCharacter("estadoimg");
com.progress.lang.Integer returnimg=bean.getPropInteger("returnimg");
com.progress.lang.LongChar rolxml=bean.getPropLongChar("rolxml");
com.progress.lang.Integer rolindicador=bean.getPropInteger("rolindicador");
com.progress.lang.Character arbolfunciones=bean.getPropCharacter("arbolfunciones");
com.progress.lang.Character nombreCompleto=bean.getPropCharacter("nombreCompleto");
com.progress.lang.Character rolfuncionesxml=bean.getPropCharacter("rolfuncionesxml");
com.progress.lang.Integer idrol=bean.getPropInteger("idrol");
com.progress.lang.Character xmlcargo=bean.getPropCharacter("xmlcargo");
com.progress.lang.Character xmlusuario=bean.getPropCharacter("xmlusuario");
com.progress.lang.Integer usuarioindicador=bean.getPropInteger("usuarioindicador");
com.progress.lang.Integer returnidlogin=bean.getPropInteger("returnidlogin");
com.progress.lang.Character jsonmisfunciones=bean.getPropCharacter("jsonmisfunciones");
com.progress.lang.Character nusuario=bean.getPropCharacter("nusuario");
com.progress.lang.LongChar funcionestodas=bean.getPropLongChar("funcionestodas");
com.progress.lang.Integer usrrol=bean.getPropInteger("usrrol");
com.progress.lang.Character estadoRol=bean.getPropCharacter("estadoRol");
com.progress.lang.Integer idRol=bean.getPropInteger("idRol");
com.progress.lang.LongChar urlSConnect=bean.getPropLongChar("urlSConnect");
com.progress.lang.Integer codSConnect=bean.getPropInteger("codSConnect");
com.progress.lang.Character estadoSConnect=bean.getPropCharacter("estadoSConnect");
com.progress.lang.Integer idSConnect=bean.getPropInteger("idSConnect");
com.progress.lang.LongChar jsonInd=bean.getPropLongChar("jsonInd");
com.progress.lang.Character estadoInd=bean.getPropCharacter("estadoInd");
com.progress.lang.Integer idInd=bean.getPropInteger("idInd");
com.progress.lang.LongChar pilcdata=bean.getPropLongChar("pilcdata");
com.progress.lang.LongChar pilcdata1=bean.getPropLongChar("pilcdata1");
com.progress.lang.Character pocestado=bean.getPropCharacter("pocestado");
com.progress.lang.Integer returnid=bean.getPropInteger("returnid");
com.progress.lang.LongChar jsonMenuxRol=bean.getPropLongChar("jsonMenuxRol");
com.progress.lang.Character estadoMenuxRol=bean.getPropCharacter("estadoMenuxRol");
com.progress.lang.Integer returnIdMenuxRol=bean.getPropInteger("returnIdMenuxRol");
com.progress.lang.Integer piindicadorusrcud=bean.getPropInteger("piindicadorusrcud");
com.progress.lang.LongChar polcdatausrcud=bean.getPropLongChar("polcdatausrcud");
com.progress.lang.Integer poireturnidusrcud=bean.getPropInteger("poireturnidusrcud");
com.progress.lang.Character pocestadousrcud=bean.getPropCharacter("pocestadousrcud");
com.progress.lang.LongChar polcdataTareasBPM=bean.getPropLongChar("polcdataTareasBPM");
com.progress.lang.LongChar polcedataProcesosBPM=bean.getPropLongChar("polcedataProcesosBPM");
com.progress.lang.Character pocestadoTareasBPM=bean.getPropCharacter("pocestadoTareasBPM");
com.progress.lang.Character picfiid=bean.getPropCharacter("picfiid");
%>




<bizsolo:ifCrtWS name="Contrasena" >
<bizsolo:choose >
<bizsolo:when test="<%=\"procReq\".equals(request.getParameter(\"activityMode\")) %>" >
<bizsolo:setDS name="usuario"/><bizsolo:choose >
<bizsolo:when test="<%=\"Enviar\".equals(request.getParameter(\"SB_Name\")) || \"2080618093\".equals(request.getParameter(\"SB_Name\")) %>" >
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=LoginPortal" />
</bizsolo:when>
</bizsolo:choose>
</bizsolo:when>
<bizsolo:otherwise >
<bizsolo:redirectURL page="Contrasena.jsp" />
</bizsolo:otherwise>
</bizsolo:choose>
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="LoginPortal" >
<bizsolo:choose >
<bizsolo:when test="<%=\"procReq\".equals(request.getParameter(\"activityMode\")) %>" >
<bizsolo:setDS name="picfiid,clave,usuario"/><bizsolo:choose >
<bizsolo:when test="<%=\"Login\".equals(request.getParameter(\"SB_Name\")) || \"73596745\".equals(request.getParameter(\"SB_Name\")) %>" >
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=OELogin" />
</bizsolo:when>
</bizsolo:choose>
<bizsolo:choose >
<bizsolo:when test="<%=\"Contrasena\".equals(request.getParameter(\"SB_Name\")) || \"-1676801018\".equals(request.getParameter(\"SB_Name\")) %>" >
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=Contrasena" />
</bizsolo:when>
</bizsolo:choose>
</bizsolo:when>
<bizsolo:otherwise >
<bizsolo:redirectURL page="LoginPortal.jsp" />
</bizsolo:otherwise>
</bizsolo:choose>
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="MisFunciones" >
<bizsolo:choose >
<bizsolo:when test="<%=\"procReq\".equals(request.getParameter(\"activityMode\")) %>" >
<bizsolo:setDS name="returnIdMenuxRol,polcedataProcesosBPM,polcdataTareasBPM,piindicadorusrcud,pocestadousrcud,polcdatausrcud,estadoMenuxRol,jsonMenuxRol,usrrol,clave,urlSConnect,arbolfunciones,xmlusuario,jsonmisfunciones,usuario,jsonimg,nombreCompleto"/><bizsolo:choose >
<bizsolo:when test="<%=\"Connection 54\".equals(request.getParameter(\"SB_Name\")) || \"285694721\".equals(request.getParameter(\"SB_Name\")) %>" >
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=End_1" />
</bizsolo:when>
</bizsolo:choose>
<bizsolo:choose >
<bizsolo:when test="<%=\"MFGE\".equals(request.getParameter(\"SB_Name\")) || \"2363447\".equals(request.getParameter(\"SB_Name\")) %>" >
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=SirRepURL" />
</bizsolo:when>
</bizsolo:choose>
<bizsolo:choose >
<bizsolo:when test="<%=\"Connection 6\".equals(request.getParameter(\"SB_Name\")) || \"2087425940\".equals(request.getParameter(\"SB_Name\")) %>" >
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=CudUser" />
</bizsolo:when>
</bizsolo:choose>
</bizsolo:when>
<bizsolo:otherwise >
<bizsolo:redirectURL page="MisFunciones.jsp" />
</bizsolo:otherwise>
</bizsolo:choose>
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="End_1" >
<bizsolo:transferDS />
<bizsolo:setParentData />
<% /* Workaround, retAddr will disappear in the future */ %>
<% String retAddr = bean.getPropString("returnPage"); %>
<% if (bean.getPropString(PublicResources.MODE) == null && bean.getPropString(PublicResources.IS_BIZSOLO_SUBPROCESS)==null)
        session.setAttribute(VirtualSessionManager.ATTR_NEED_CLEANUP, "true");%><% if(retAddr != null) { %>
  <bizsolo:redirectURL page="<%= retAddr %>" />
<% } %>
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="ArbolFunciones" >
<bizsolo:executeAction wsName="ArbolFunciones" epClassName="com.savvion.sbm.adapters.oe.OEAdapter" perfMethod="execute" dsi="usuario" dso="arbolfunciones,estadoroles,returnidroles" />
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=SirCargosxRol" />
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="CudUser" >
<bizsolo:executeAction wsName="CudUser" epClassName="com.savvion.sbm.adapters.oe.OEAdapter" perfMethod="execute" dsi="piindicadorusrcud,polcdatausrcud" dso="piindicadorusrcud,pocestadousrcud" />
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=MisFunciones" />
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="FuncionesUsuario" >
<bizsolo:executeAction wsName="FuncionesUsuario" epClassName="com.savvion.sbm.adapters.oe.OEAdapter" perfMethod="execute" dsi="usuario" dso="returnidusuarios,estadousuarios,jsonmisfunciones" />
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=MenuxRol" />
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="LecturaImagen" >
<bizsolo:executeAction wsName="LecturaImagen" epClassName="com.savvion.sbm.adapters.oe.OEAdapter" perfMethod="execute" dso="returnimg,estadoimg,jsonimg" />
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=ArbolFunciones" />
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="MenuxRol" >
<bizsolo:executeAction wsName="MenuxRol" epClassName="com.savvion.sbm.adapters.oe.OEAdapter" perfMethod="execute" dsi="usrrol" dso="jsonMenuxRol,estadoMenuxRol,returnIdMenuxRol" />
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=SirRepURL" />
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="OELogin" >
<bizsolo:executeAction wsName="OELogin" epClassName="com.savvion.sbm.adapters.oe.OEAdapter" perfMethod="execute" dsi="usuario,picfiid,clave" dso="nombreCompleto,clave,returnidlogin,estadousuarios" />
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=Decision_3" />
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="SirCargosxRol" >
<bizsolo:executeAction wsName="SirCargosxRol" epClassName="com.savvion.sbm.adapters.oe.OEAdapter" perfMethod="execute" dsi="usuario" dso="usrrol,idRol,estadoRol" />
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=FuncionesUsuario" />
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="SirRepURL" >
<bizsolo:executeAction wsName="SirRepURL" epClassName="com.savvion.sbm.adapters.oe.OEAdapter" perfMethod="execute" dsi="codSConnect" dso="urlSConnect,estadoSConnect,idSConnect" />
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=MisFunciones" />
</bizsolo:ifCrtWS>



<bizsolo:ifCrtWS name="Decision_3" >
<%!
boolean valido_pre(com.progress.lang.Integer returnid,com.progress.lang.Integer returnidlogin) {
    try{
        return (returnidlogin.equals(new com.progress.lang.Integer(0)));
    } catch (Exception ex) {  return false; }
}
%>
<bizsolo:if test="<%= valido_pre(returnid,returnidlogin)
 %>" >
<bizsolo:redirectURL page="Start.jsp?crtApp=Base_Integrity&crtPage=LecturaImagen" />
</bizsolo:if>
<% // executed  only when condition is not true %>
<bizsolo:forwardURL page="Start.jsp?crtApp=Base_Integrity&crtPage=LoginPortal" />
</bizsolo:ifCrtWS>
