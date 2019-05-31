<%@ Control Language="vb" AutoEventWireup="false" Codebehind="PermintaanPembelian_List.ascx.vb" Inherits="QIS.Web.PermintaanPembelian_List" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>

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
					
					<asp:DataGrid	id="gridPermintaanPembelian" 
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
									DataKeyField="nominta" 
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
														HeaderText="No. PR" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Left" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:0;margin-right:15" 
														Text='<%# DataBinder.Eval(Container.DataItem, "nominta") %>' 
														ID="_lblNoMinta"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="Supplier" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Left" 
														Visible="True">
										<itemtemplate>
											
											<asp:TextBox	id="TxtSupplier" 
															runat="server" 
															text='<%# Trim(DataBinder.Eval(Container.DataItem, "namasupplier")) %>'
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
									
									<asp:TemplateColumn runat="server" 
														HeaderText="Kode" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Left" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:0;margin-right:5" 
														Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
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
														HeaderText="Faktor" 
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
														HeaderText="Qty. Minta" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Center" 
														Visible="True">
										<itemtemplate>
											
											<asp:TextBox	id="txtQtyMinta" 
															autopostback="False"
															Runat="server" 
															style="margin-left:5;margin-right:5" 
															BackColor="Transparent"
															Text='<%# format(DataBinder.Eval(Container.DataItem, "qtyminta"), "#,##0.00") %>' 
															Width="75" />
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="Unit" 
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
														HeaderText="Harga" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Left" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:0;margin-right:15" 
														Text='<%# DataBinder.Eval(Container.DataItem, "harga") %>' 
														ID="_lblharga"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="Diskon%" 
														ItemStyle-HorizontalAlign="Left" 
														HeaderStyle-HorizontalAlign="Left" 
														Visible="True">
										<itemtemplate>
										
											<asp:label	runat="server"	
														style="margin-left:0;margin-right:15" 
														Text='<%# DataBinder.Eval(Container.DataItem, "diskonpc") %>' 
														ID="_lbldiskonpc"/>
										
										</itemtemplate>
									</asp:TemplateColumn>
									
									<asp:TemplateColumn runat="server" 
														HeaderText="Tutup" 
														ItemStyle-HorizontalAlign="Center" 
														HeaderStyle-HorizontalAlign="Center" 
														Visible="True">
										<itemtemplate>
										
											<asp:checkbox	runat=server 
																enabled=True
																checked='<%# DataBinder.Eval(Container.DataItem, "deactivate") %>'
																ID="_chkdeactivate"/>
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