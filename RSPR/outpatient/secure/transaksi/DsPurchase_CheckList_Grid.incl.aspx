<!-- SPACER ROW -->

<TABLE width="100%">
	<TR class="rheader">
		<TD class="rheadercol" align="left" height="2">
		</TD>
	</TR>
</TABLE>


<!-- START DATAGRID CL DISTRIBUSI -->
																			
<TABLE width="100%">
	
	<TR>
		<TD style="PADDING-LEFT: 10px;PADDING-TOP: 10px;PADDING-BOTTOM: 10px" width="100%" align="left" class="rBodyInfo">			
			<asp:Label id="lblMessage" runat="server" text="" />		
		</TD>
	</TR>

	<TR>
		<TD width="100%" height="100%" colspan="2" align="center">
		
			<DIV style="OVERFLOW: auto; WIDTH: 90%">

			<asp:DataGrid	id="gridCLDistribusi" 
							runat="server" 
							Width="100%" 
							AutoGenerateColumns="False" 
							CellSpacing="0" 
							BorderColor="Gainsboro" 
							Enableviewstate="True"
							BorderWidth="1" 
							GridLines="none" 							
							AllowPaging="false" 
							DataKeyField="counter" 
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
										HeaderText="Counter" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>' 
										ID="_lblCounter"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Kode Item" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
										ID="_lblKdBarang"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
																										
					<asp:TemplateColumn runat="server" 
										HeaderText="Nama" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
										ID="_lblNamaBarang"/>
						
						</itemtemplate>
					</asp:TemplateColumn>					
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Qty Belum didistribusi" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:TextBox	id="txtQtySisaCek" 
											autopostback="False"
											Runat="server" 
											BorderStyle="None"
											BackColor="Transparent"
											Text='<%# format(DataBinder.Eval(Container.DataItem, "qty"), "#,##0.00") %>'
											ReadOnly="True" 
											class="right"
											width="75%"
											 />
						
						</itemtemplate>
					</asp:TemplateColumn>					
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Qty Distribusi" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:TextBox	id="txtQtySisa" 
											autopostback="False"
											Runat="server" 
											Text='0' 
											class="right" 
											width="75%"/>
						
						</itemtemplate>
						<itemstyle Width="100px" />
					</asp:TemplateColumn>		
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>' 
										ID="_lblSatuan"/>
						
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Harga Pembelian" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:Label	id="txtHarga" 
											autopostback="False"
											Runat="server" 
											BorderStyle="None"
											BackColor="Transparent"
											Text='<%# format(DataBinder.Eval(Container.DataItem, "harga"), "#,##0.00") %>'
											ReadOnly="True" 
											class="right"
											/>
						
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Harga Stock" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:Label		id="txtHpr" 
											autopostback="False"
											Runat="server" 
											BorderStyle="None"
											BackColor="Transparent"
											Text='<%# format(DataBinder.Eval(Container.DataItem, "hpr"), "#,##0.00") %>'
											ReadOnly="True" 
											class="right"
											/>
						
						</itemtemplate>
					</asp:TemplateColumn>			
					
					<asp:TemplateColumn runat="server" 
										HeaderText="" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:CompareValidator	id="cvQtyGrid" 
													Runat="server" 
													ControlToValidate="txtQtySisa" 
													ControlToCompare="txtQtySisaCek"
													Type="Double"
													Display="Dynamic"
													Operator="LessThanEqual"
													ErrorMessage='<%# "Qty Distribusi melebihi Qty Stock - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>'>**
							</asp:CompareValidator>
														
							<asp:CompareValidator	id="cvQtyGrid2" 
													runat="server" 
													ControlToValidate="txtQtySisa" 
													Operator="DataTypeCheck" 
													Type="Double" 
													ErrorMessage='<%# "Qty Distribusi harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
													Display="Dynamic">** 
							</asp:CompareValidator>	
							
							<asp:CompareValidator	id="cvQtyGrid3" 
													Runat="server" 
													ControlToValidate="txtQtySisa" 
													ValueToCompare="0"
													Type="Double"
													Display="Dynamic"
													Operator="GreaterThanEqual"
													ErrorMessage='<%# "Qty Distribusi tidak boleh lebih kecil dari 0 - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>'>**
							</asp:CompareValidator>						
							
						</itemtemplate>
					</asp:TemplateColumn>
																																							
				</Columns>

			</asp:DataGrid>
			
			</DIV>

		</TD>
	</TR>

</TABLE> 

<!-- END DATAGRID SALIN PESANAN -->