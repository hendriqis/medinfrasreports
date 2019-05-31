<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="RadMenu.ascx.vb" Inherits="QIS.RadMenu" %>
<%@ Register Src="~/Libs/Controls/Menu.ascx" TagName="Menu" TagPrefix="ucMenu" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Import Namespace="QIS.Web" %>
<telerik:RadScriptManager ID="ScriptManager" runat="server" />
<link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet" />
<link rel="shortcut icon" type="image/x-icon" href="/qislib/images/qisicon.ico" />
<table width="100%" cellpadding="0" cellspacing="1">
	<tr>
	    <td class="Menu" valign="middle" align="center">
	        <img src="/qislib/images/pharmacysmall.png" border="0" alt="" align="middle" />
	    </td>
		<td class="Menu" align="left" valign="middle" style="width: 95%; padding-left: 5px">
            <table width="100%" cellspacing="0" cellpadding="2">
                <tr>
                    <td class="Menu" style="width: 50%;">
                        <asp:label id="lblCompanyName" runat="server"></asp:label>
                    </td>
                    <td class="Menu" style="width: 50%;" align="right">
                        <a href='<%=PageBase.UrlBase & "/secure/main.aspx"%>'><img src="/qislib/images/home.png" border="0" alt="" title="Pharmacy Home" align="absmiddle" /></a>&nbsp;
                        <a href="#" onclick="javascript:window.close();"><img src="/qislib/images/close.png" border="0" alt="" title="Close Window" align="absmiddle" /></a>
                        <asp:ImageButton runat="server" ID="btnClose" ImageUrl="/qislib/images/close.png" ToolTip="Close Window" ImageAlign="AbsMiddle" CausesValidation="false" Visible="false"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:label id="lblMessage" runat="server"></asp:label>
                    </td>
                </tr>
            </table>		    
        </td>
	</tr>
	<tr>        
		<td valign="top" colspan="2" class="Menubg">
            <ucMenu:Menu ID="Menu" runat="server" />
        </td>
    </tr>    
</table>
