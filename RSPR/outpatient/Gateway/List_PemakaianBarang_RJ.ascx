<%@ Control Language="vb" AutoEventWireup="false" Codebehind="List_PemakaianBarang_RJ.ascx.vb" Inherits="QIS.Web.List_PemakaianBarang_RJ" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>

<table cellSpacing="0" cellPadding="0" width="100%" border="0">
        <tr>
            <td>
				
				<TABLE width="100%" border=0 cellpadding=0 cellspacing=0>
						<tr>
							<TD width="20%" class=rBodyAddNewFld>
								<B>Kode Pelayanan:</b>
							</TD>
							<TD width="40%" class=rBodyAddNewFld>
								<B><asp:Label	id="SectionHeaderCaption_KodePelayanan" 
											runat="server" ></asp:Label></b>
								
								<asp:Label	id="SectionHeaderCaption_IDPakaiOBat" 
											visible="false"
											runat="server"></asp:Label>
								
							</TD>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<TD width="20%" class=rBodyAddNewFld>
								<b>Nama Pelayanan:</b>
							</TD>
							<TD width="40%" class=rBodyAddNewFld>
								<b><asp:Label	id="SectionHeaderCaption_NamaPelayanan" 
											runat="server"></asp:Label></b>
							</TD>
							<td align="right">
								<asp:Button id="btnPostingItem" runat="server" text="Posting" CssClass="sbttn"></asp:Button>
							</td>
						</tr>
				</TABLE>
				
			</td>
        </tr>
        
        <tr>
            <td style="PADDING-LEFT: 25px">
				<br />
                
                <asp:Panel id="SectionPanel" runat="server" style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 100; 
																	scrollbar-face-color: #FFFFFF;
																	scrollbar-highlight-color: #FFFFFF;
																	scrollbar-shadow-color: #DEE3E7;
																	scrollbar-3dlight-color: #FFFFFF;
																	scrollbar-arrow-color:  gray;
																	scrollbar-track-color: #EFEFEF;
																	scrollbar-darkshadow-color: #98AAB1;">
					
					
					<asp:DataGrid	id="gridItems" 
									runat="server" 
									AutoGenerateColumns="False" 
									CellSpacing="0" 
									BorderColor=Gainsboro 
									BorderWidth="1" 
									GridLines= "Horizontal" 
									Width="100%"
									AllowPaging="False"
									PageSize="20"
									DataKeyField="kdBarang"
									ShowFooter=True
									CellPadding="0">
											
								<HeaderStyle Font-Bold="True" BackColor=#DEE3E7  Height=20 />
								<ItemStyle Font-Size="8pt" />
								<AlternatingItemStyle BackColor=WhiteSmoke  />
								<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
								<EditItemStyle Font-Bold="true" />
								
								<Columns>
								
									<asp:BoundColumn DataField="IDPakaiObat" visible="False" />
									
									<asp:TemplateColumn runat="server" HeaderText="Kode Item">
										
										<itemtemplate>
										
													<asp:label		runat="server" 
																	style="margin-left:5;margin-right:5"
																	Text='<%# DataBinder.Eval(Container.DataItem, "kdBarang") %>' 
																	ID="_lblKodeBarang"/>
													
										</itemtemplate>
										
									</asp:TemplateColumn >
									
									<asp:TemplateColumn runat="server" HeaderText="">
										
										<itemtemplate>
										
													<asp:label		runat="server" 
																	style="margin-left:5;margin-right:5"
																	visible="false"
																	Text='<%# DataBinder.Eval(Container.DataItem, "IDPakaiObat") %>' 
																	ID="_lblIDPakaiObat"/>
											
										</itemtemplate>
										
									</asp:TemplateColumn >
									
									<asp:TemplateColumn runat="server" HeaderText="Nama Item">
										
										<itemtemplate>
										
													<asp:label		runat="server" 
																	style="margin-left:5;margin-right:5"
																	Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
																	/>
											
										</itemtemplate>
										
									</asp:TemplateColumn >
									
									<asp:TemplateColumn		runat="server" 
															HeaderText="Qty" 
															HeaderStyle-HorizontalAlign="Right" 
															ItemStyle-HorizontalAlign="Right" >
										
										<ItemTemplate>
											
											<asp:label		runat="server" 
															style="margin-left:5;margin-right:5"
															Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' 
															ID="_lblQty"/>
										
										</ItemTemplate>
										
									</asp:TemplateColumn >
									
									
									<asp:TemplateColumn runat="server" HeaderText="Satuan">
										
										<itemtemplate>
										
													<asp:label		runat="server" 
																	style="margin-left:5;margin-right:5"
																	Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>' 
																	ID="_lblSatuan"/>
											
										</itemtemplate>
										
									</asp:TemplateColumn >
									
									<asp:ButtonColumn	ItemStyle-HorizontalAlign="Right"
														CommandName="select" 
														Text="<img src=/qislib/images/edit.png border=0 align=absmiddle alt='Edit this item'>">
									
									</asp:ButtonColumn> 
									
									<asp:EditCommandColumn  runat="server" 
															UpdateText="<img src=/qislib/images/done.png border=0 align=absmiddle alt='Save changes'>"
															CancelText="<img src=/qislib/images/cancel.png border=0 align=absmiddle alt='Cancel editing'>">
															
											<itemstyle HorizontalAlign="center" />
											
									</asp:EditCommandColumn>
									
								</Columns>
										
					</asp:DataGrid>
					
				</asp:Panel>
				
			</TD>
		</TR>
		
		<tr>
			<td>
				<table width="100%" border=0 cellpadding=0 cellspacing=0>
					<tr>
						<td style="PADDING-LEFT: 25px">
							<asp:Label	id="SectionFooterCaption" 
										runat="server"></asp:Label>
						</td>
					</tr>
					
					<tr>
						<td style="PADDING-LEFT: 25px">
							
							<asp:linkbutton	runat="server" 
											id="btnAddNewRow" 
											CausesValidation="False" 
											Text="Add New Row" />
							
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
		<!-- SPACER ROW -->
		<tr>
			<td height="18"></td>
		</tr>
</TABLE>