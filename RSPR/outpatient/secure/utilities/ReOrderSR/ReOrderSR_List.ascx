<%@ Control Language="vb" AutoEventWireup="false" Codebehind="ReOrderSR_List.ascx.vb" Inherits="QIS.Web.ReOrderSR_List" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>

<table cellSpacing="0" cellPadding="0" width="100%" border="0">
        
        <tr>
            <td style="PADDING-LEFT: 5px">
				<br />
                
                <asp:Panel id="SectionPanel" runat="server">
					
					<asp:DataGrid	id="grdROP" 
									runat="server" 
									Width="100%" 
									AutoGenerateColumns="False" 
									CellSpacing="0" 
									BorderColor="Gainsboro" 
									Enableviewstate="True"
									BorderWidth="1" 
									GridLines="none" 
									AllowPaging="false" 
									PageSize="20" 
									DataKeyField="kdBarang" 
									ShowFooter="True" 
									CellPadding="0">
											
								<HeaderStyle Font-Bold="True" BackColor="#DEE3E7" Height="20" />
								<ItemStyle Font-Size="8pt" />
								<PagerStyle Mode="NumericPages" HorizontalAlign="right" />
								<EditItemStyle Font-Bold="true" />
								
								<Columns>
									
									<asp:TemplateColumn runat="server"
														ItemStyle-HorizontalAlign="Center" 
														HeaderStyle-HorizontalAlign="Center">
										<ItemTemplate>
										
											<asp:checkbox	runat=server 
															enabled=True
															checked=false
															ID='_chkPesan' 
															/>
										
										</ItemTemplate>
										
										<HeaderTemplate>
							
											<input	name="cbxSelectAll" 
													enabled=""
													type="checkbox" 
													style="VISIBILITY: hidden"
													onclick="javascript:checkAll(this.form,'_chkPesan');">

										</HeaderTemplate>
										
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="KODE" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Left" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:0;margin-right:5" 
														Text='<%# DataBinder.Eval(Container.DataItem, "kdBarang") %>' 
														ID="_lblKdBarang"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
																														
									<asp:TemplateColumn runat="server" 
														HeaderText="NAMA" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Left" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:1;margin-right:5" 
														Text='<%# DataBinder.Eval(Container.DataItem, "nmbarang") %>' 
														ID="_lblNmItem"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									
									<asp:TemplateColumn runat="server" 
														HeaderText="SALDO" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Right" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:5;margin-right:0" 
														Text='<%# format(DataBinder.Eval(Container.DataItem, "saldoGd"), "#,##0.00") %>' 
														ID="_lblSaldoGd"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="Saldo Gdg. Lain" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Right" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:5;margin-right:0" 
														Text='<%# format(DataBinder.Eval(Container.DataItem, "saldoGdLain"), "#,##0.00") %>' 
														ID="_lblSaldoGdLain"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="AVG" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Right" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:5;margin-right:0" 
														Text='<%# format(DataBinder.Eval(Container.DataItem, "average"), "#,##0.00") %>' 
														ID="_lblavg"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="ROPMin" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Right" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:5;margin-right:0" 
														Text='<%# format(DataBinder.Eval(Container.DataItem, "ropmin"), "#,##0.00") %>' 
														ID="_lblRopmin"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
											<asp:TemplateColumn runat="server" 
														HeaderText="ROPMax" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Right" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:5;margin-right:0" 
														Text='<%# format(DataBinder.Eval(Container.DataItem, "ropmax"), "#,##0.00") %>' 
														ID="_lblRopmax"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="ROP" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Right" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:5;margin-right:0" 
														Text='<%# format(DataBinder.Eval(Container.DataItem, "rop"), "#,##0.00") %>' 
														ID="_lblRop"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="UNIT" 
														ItemStyle-HorizontalAlign="Center" 
														HeaderStyle-HorizontalAlign="Center" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:15;margin-right:15" 
														Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>' 
														ID="_lblSatuanKcl"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="FAKTOR" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Right" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:15;margin-right:0" 
														Text='<%# DataBinder.Eval(Container.DataItem, "Faktor") %>' 
														ID="_lblfaktor"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									
									<asp:TemplateColumn runat="server" 
														HeaderText="MINTA" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Center" 
														Visible="True">
										<itemtemplate>
											
											<asp:TextBox	id="_txtQtyMinta" 
															autopostback="False"
															Runat="server" 
															style="margin-left:5;margin-right:5" 
															BackColor="Transparent"
															Text='<%# format(DataBinder.Eval(Container.DataItem, "Minta"), "#,##0.00") %>' 
															Width="75" />
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="UNIT" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Left" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:0;margin-right:15" 
														Text='<%# DataBinder.Eval(Container.DataItem, "satuanbs") %>' 
														ID="_lblSatuanBsr"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
																																												
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
				</table>
			</td>
		</tr>
		
		<!-- SPACER ROW -->
		<tr>
			<td height="18"></td>
		</tr>
</TABLE>