<!-- START DATAGRID REORDER PO -->
																
<TABLE width="100%">

	<TR>
		<TD width="100%" height="100%">
		
			<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 400">

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
											ID="_chkPesan" />
						
						</ItemTemplate>
						
						<HeaderTemplate>
							
							<input	name="cbxSelectAll" 
									type="checkbox" 
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
										style="margin-left:5;margin-right:5" 
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
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "namaItem") %>' 
										ID="_lblNmItem"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Sisa" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Right" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "saldo") %>' 
										ID="_lblSaldo"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "satuanKcl") %>' 
										ID="_lblSatuanKcl"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="R O P" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Right" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "rop") %>' 
										ID="_lblRop"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Pesan " 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Right" 
										Visible="True">
						<itemtemplate>
							
							<asp:TextBox	id="txtQtyPesan" 
											autopostback="False"
											Runat="server" 
											BackColor="Transparent"
											Text='<%# format(DataBinder.Eval(Container.DataItem, "qtyPesan"), "##0.00") %>' 
											Width="75" />
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "satuanBsr") %>' 
										ID="_lblSatuanBsr"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Faktor" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Right" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "faktor") %>' 
										ID="_lblFaktor"/>
						
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
											text='<%# Trim(DataBinder.Eval(Container.DataItem, "PBF")) + " [" + Trim(DataBinder.Eval(Container.DataItem, "kdPBF ")) + "]" %>'
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
			
			</DIV>

		</TD>
	</TR>

</TABLE> 

<!-- END DATAGRID REORDER PO -->