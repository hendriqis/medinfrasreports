<%@ Control Language="vb" AutoEventWireup="false" Codebehind="ProsesROP_ByPemakaian.ascx.vb" Inherits="QIS.Web.ProsesROP_ByPemakaian" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>

<table cellSpacing="0" cellPadding="0" width="100%" border="0">
        <tr>
            <td>
				
				<TABLE	cellSpacing="0" 
						border="0" 
						cellpadding="0" 
						width="100%" 
						bgcolor="#336699" 
						style="FILTER: Alpha( Opacity=100, FinishOpacity=0, Style=1, StartX=0,  FinishX=100, StartY=0, FinishY=0);">
						
						<tr>
							<TD style="PADDING-LEFT: 5px">
								<font color="White"><B>Lokasi:</b></font>
							</TD>
							<TD>
								<font color="White"><B><asp:Label	id="SectionHeaderCaption_KodeLokasi" 
											runat="server" ></asp:Label></b></font>
								
							</TD>
						</tr>
						<tr>
							<TD width="150px" style="PADDING-LEFT: 5px">
								<font color="White"><b>Nama Lokasi:</b></font>
							</TD>
							<TD>
								<font color="White"><b><asp:Label	id="SectionHeaderCaption_NamaLokasi" 
											runat="server"></asp:Label></b></font>
							</TD>
						</tr>
						
				</TABLE>
				
			</td>
        </tr>
        
        <tr>
            <td style="PADDING-LEFT: 5px">
				<br />
                
                <asp:Panel id="SectionPanel" runat="server">
					
					<asp:DataGrid	id="gridReorderPO" 
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
														HeaderText="Kode" 
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
														HeaderText="Nama" 
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
														HeaderText="LTime" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Right" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:5;margin-right:0" 
														Text='<%# DataBinder.Eval(Container.DataItem, "leadtime") %>' 
														ID="_lblLeadTime"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="Buffer" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Right" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:5;margin-right:0" 
														Text='<%# DataBinder.Eval(Container.DataItem, "safetystock") %>' 
														ID="_lblSS"/>
										
										</itemtemplate>
									</asp:TemplateColumn>		
									
									<asp:TemplateColumn runat="server" 
														HeaderText="STime" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Right" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:5;margin-right:0" 
														Text='<%# DataBinder.Eval(Container.DataItem, "safetytime") %>' 
														ID="_lblST"/>
										
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
														ID="_lblAVG"/>
										
										</itemtemplate>
									</asp:TemplateColumn>									
									
									<asp:TemplateColumn runat="server" 
														HeaderText="Saldo" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Right" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:5;margin-right:0" 
														Text='<%# format(DataBinder.Eval(Container.DataItem, "saldo"), "#,##0.00") %>' 
														ID="_lblSaldo"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="On Order" 
														ItemStyle-HorizontalAlign="right" 
														HeaderStyle-HorizontalAlign="right" 
														Visible="True">
										<itemtemplate>
											
											<asp:label	runat="server"	
														style="margin-left:15;margin-right:5" 
														Text='<%# format(DataBinder.Eval(Container.DataItem, "opokc"), "#,##0.00") %>' 
														ID="_lblOutStandingPO"/>
										
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
														ID="_lblROP"/>
										
										</itemtemplate>
									</asp:TemplateColumn>		
									
									<asp:TemplateColumn runat="server" 
														HeaderText="Satuan" 
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
														HeaderText="Pesan" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Center" 
														Visible="True">
										<itemtemplate>
											
											<asp:TextBox	id="txtQtyPesan" 
															autopostback="False"
															Runat="server" 
															style="margin-left:5;margin-right:5" 
															BackColor="Transparent"
															Text='<%# format(DataBinder.Eval(Container.DataItem, "pesan"), "#,##0.00") %>' 
															Width="75" 
															Class="Right" />
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="Satuan" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Left"
														Visible="False">
										<itemtemplate>
											<asp:DropDownList	runat="server" 
																id="_ddlSatuan" 
																Width="50"/>
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
									
									<asp:TemplateColumn runat="server" 
														HeaderText="Faktor" 
														ItemStyle-HorizontalAlign="Right" 
														HeaderStyle-HorizontalAlign="Center" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:15;margin-right:10" 
														Text='<%# DataBinder.Eval(Container.DataItem, "Faktor") %>' 
														ID="_lblfaktor"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="PBF" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Left" 
														Visible="True">
										<itemtemplate>
											
											<asp:TextBox	id="txtPBF" 
															runat="server" 
															text='<%# Trim(DataBinder.Eval(Container.DataItem, "namasupplier")) + " [" + Trim(DataBinder.Eval(Container.DataItem, "kdsupplier2 ")) + "]" %>'
															BorderStyle="None" 
															style="CURSOR: hand"
															width="100%"
															ForeColor="#FF6600"
															Font-Bold="True"
															BackColor="Transparent"
															ReadOnly="True" />
											
										</itemtemplate>
										
										<itemstyle Width="200px" />
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