<%@ page language="java" pageEncoding="gb2312"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<style type="text/css">
<!--
.STYLE1 {
  color: #0099CC;
	font-size: 16pt;
	font-weight: bold;
	font-family: " Times New Roman", Times, serif;
}
.STYLE5 {
	font-size:14pt;
	color: #009999;
}
-->
</style>
</head>
<%
	String tmp = (String)session.getAttribute("curr_admin");
	if( tmp != null ){
		session.removeAttribute("curr_admin");
	}
%>
<body>
<table width="100%" height="872" border="0">
  <tr>
    <td height="138"  align="center"><table width="671" height="90" border="0">
        <tr valign="middle">
          <td width="659" height="43" align="center" bordercolor="#00CCFF" bgcolor="#00CCFF"><span class="STYLE1"> 欢迎来到航空票务系统 </span></td>
        </tr>
            </table></td>
  </tr>
  
  <tr valign="top">
    <td height="701"><table width="100%" border="0">
      <tr>
        <td height="304" colspan="2" align="center" valign="middle"><html:form action="/AdminLog.do">
           <table width="287" height="169" border="5" cellpadding="0" cellspacing="0" bordercolor="#9999CC">
            <tr>
              <td width="137"><table width="276" border="0">
                <tr>
                  <td colspan="2"><table width="200" border="0">
                    <tr>
                      <td width="72" align="right"><span class="STYLE5">用户名:</span></td>
                      <td width="118" align="left"><label>
                        <html:text property="userid" size="15" />
                      </label></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td colspan="2"><table width="200" border="0">
                    <tr>
                      <td width="71" align="right" class="STYLE5">密码:</td>
                      <td width="119" align="left"><label>
                        <html:password property="password" size="15" />
                      </label></td>
                    </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="142" align="right"><label>
                    <html:submit value="登陆" />
                  </label></td>
                  <td width="124" align="left"><label>
                    <html:reset value="重置" />
                  </label></td>
                </tr>
              </table></td>
              </tr>
          </table>
                </html:form>        </td>
        </tr>
      <tr>
        <td width="625" height="220"><html:errors/></td>
        <td width="98">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html:html>
