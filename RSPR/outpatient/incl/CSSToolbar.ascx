<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="CSSToolbar.ascx.vb" Inherits="QIS.CSSToolbar" %>
<%@ Import Namespace="QIS.Web"%>
<link rel="stylesheet" type="text/css" href="/qislib/css/csstoolbar.css"/>

<div id="DivToolbarM">
<table class="ToolbarM" cellpadding="1" cellspacing="0" border="0">
	<tr align="center" valign="middle">
	    <asp:Panel runat="server" id="TMPnlNew">
		<td align="center" valign="middle">	
			<asp:linkbutton Runat="server" id="lbtnNew" ToolTip="New" CausesValidation="false" width="61px" ><img src="/qislib/images/tbnew.png" alt="" border="0" /><br />New</asp:linkbutton>
		</td>	
		</asp:Panel>
		<asp:Panel runat="server" id="TMPnlSave">
		<td align="center" valign="middle">
		    <asp:linkbutton Runat="server" id="lbtnSave" ToolTip="Save" CausesValidation="false" width="62px" ><img src="/qislib/images/tbsave.png" alt="" border="0"/><br />Save</asp:linkbutton>
		    <asp:CheckBox ID="chkIsAllowAdd" runat="server" Visible="false"/>
		    <asp:CheckBox ID="chkIsAllowEdit" runat="server" Visible="false"/>
		</td>
		</asp:Panel>
		<asp:Panel runat="server" id="TMPnlDelete">
		<td align="center" valign="middle" >	
		    <asp:linkbutton Runat="server" id="lbtnDelete" ToolTip="Delete" CausesValidation="false" width="76px" ><img src="/qislib/images/tbdelete.png" alt="" border="0" /><br />Delete</asp:linkbutton>
		    <asp:CheckBox ID="chkIsAllowDelete" runat="server" Visible="false"/>
		</td>
		</asp:Panel>
		<asp:Panel runat="server" id="TMPnlApprove">
		<td align="center" valign="middle" >
		    <asp:linkbutton Runat="server" id="lbtnApprove" ToolTip="Approve" CausesValidation="false" width="86px" ><img src="/qislib/images/tbapprove.png" alt="" border="0" /><br />Approve</asp:linkbutton>
		    <asp:CheckBox ID="chkIsAllowApprove" runat="server" Visible="false"/>
		</td>
		</asp:Panel>
		<asp:Panel runat="server" id="TMPnlVoid">
		<td align="center" valign="middle" >
		    <asp:linkbutton Runat="server" id="lbtnVoid" ToolTip="Void" CausesValidation="false" width="64px" ><img src="/qislib/images/tbvoid.png" alt="" border="0" /><br />Void</asp:linkbutton>
		    <asp:CheckBox ID="chkIsAllowVoid" runat="server" Visible="false"/>
		</td>
		</asp:Panel>
		<asp:Panel runat="server" id="TMPnlPrint">
		<td align="center" valign="middle" >									
		    <asp:linkbutton Runat="server" id="lbtnPrint" ToolTip="Print" CausesValidation="false" width="65px" ><img src="/qislib/images/tbprint.png" alt="" border="0" /><br />Print</asp:linkbutton>
		    <asp:CheckBox ID="chkIsAllowPrint" runat="server" Visible="false"/>
		</td>
		</asp:Panel>
		<asp:Panel runat="server" id="TMPnlPrevious">
		<td align="center" valign="middle">									
		    <asp:linkbutton Runat="server" id="lbtnPrevious" ToolTip="Back" CausesValidation="false" width="85px" ><img src="/qislib/images/tbback.png" alt="" border="0" /><br />Back</asp:linkbutton>
		</td>
		</asp:Panel>
		<asp:Panel runat="server" id="TMPnlNext">
		<td align="center" valign="middle"  >
		    <asp:linkbutton Runat="server" id="lbtnNext" ToolTip="Next" CausesValidation="false" width="62px" ><img src="/qislib/images/tbnext.png" alt="" border="0" /><br />Next</asp:linkbutton>
		</td>
		</asp:Panel>
	</tr>
	<tr style="display:none">
	    <td>
	        <asp:label runat="server" id="lblMenuID" Visible="false"></asp:label>	       
	    </td>
	</tr>
</table>	
</div>