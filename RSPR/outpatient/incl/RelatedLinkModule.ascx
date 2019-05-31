<%@ Control Language="vb" AutoEventWireup="false" Codebehind="RelatedLinkModule.ascx.vb" Inherits="RelatedLinkModule" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<%@ Import Namespace="QIS.Web"%>
<table width="150" cellpadding="0" cellspacing="0" class="navtext">
	<tr>
		<td align="left" class="rheader">
			Related Links
		</td>
	</tr>
	<tr>
		<td align="left">
			<table width="100%">
				<tr>
					<td>
						<asp:DataList	enableViewState="false" 
										id="MasterList" 
										datasource="<%# SubMasterList %>" 
										runat="server" 
										CellPadding="0" 
										CellSpacing="0" 
										RepeatLayout="Flow">
							<ItemTemplate>
								<asp:HyperLink enableViewState="false" id="ItemLink" NavigateURL='<%# DataBinder.Eval(Container.DataItem, "Url") %>' Text='<%# DataBinder.Eval(Container.DataItem, "Description") %>' CssClass="navlink" runat="server">
								</asp:HyperLink>
							</ItemTemplate>
						</asp:DataList>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
