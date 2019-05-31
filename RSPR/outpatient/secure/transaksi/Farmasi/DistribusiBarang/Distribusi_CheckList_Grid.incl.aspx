<!-- SPACER ROW -->

<SCRIPT LANGUAGE="JavaScript">
	function konfirmasi()
		{
			//alert('test');
			if (!confirm('Anda yakin akan salin distribusi ini ?')) return false;
			return true
		}
</SCRIPT>
<!-- START DATAGRID CL DISTRIBUSI -->
																			
<TABLE width="100%" class="rbody">
    <TR>
		<TD width="100%" align="right" colspan="2">
			<asp:Button id="btnSaveDistribusi" 
						runat="server" 
						text="Salin" 
						CssClass="sbttn"
						Width="100"
						CausesValidation="False"></asp:Button>						
			<asp:Button id="btnCancel" 
						runat="server" 
						text="Batal" 
						CausesValidation="False"
						Width="100"
						CssClass="sbttn"></asp:Button>
		</TD>
	</TR>
	<TR>
		<TD align="right">
			<asp:LinkButton id="lbtnAll" runat="server" text="All Items" />			
		</TD>
		<TD align="right">
			
			<asp:DataList		id="listSearch" 
								runat="server" 
								RepeatDirection="Horizontal" 
								OnItemCommand="HandleItemSearchCommand">
				
				<ItemTemplate>
					<asp:LinkButton ID="linkSearch" 
									CausesValidation=False 
									Runat=server 
									CommandName='<%# DataBinder.Eval(Container.DataItem, "list") %>'
									text='<%# DataBinder.Eval(Container.DataItem, "list") %>'/>&nbsp;&nbsp;&nbsp;
					</asp:LinkButton>
				</ItemTemplate>
			</asp:DataList>
			
			
		</TD>
	</TR>

	<TR>
		<TD width="100%" height="100%" colspan="2">
		
			<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 400">

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
							PageSize="20" 
							DataKeyField="kdbarang" 
							ShowFooter="False" 
							CellPadding="0"
							AllowSorting="True">
							
				<HeaderStyle CssClass="gridHeaderStyle" />
                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                <EditItemStyle Font-Bold="false" />
                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
				
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
					
					<asp:TemplateColumn SortExpression="kdbarang" 
										runat="server" 
										HeaderText="Kode Item" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Left" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										 
										Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
										ID="_lblKdBarang"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
																										
					<asp:TemplateColumn SortExpression="nmbarang" 
										runat="server" 
										HeaderText="Nama" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Left" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmbarang") %>' 
										ID="_lblNamaBarang"/>
						
						</itemtemplate>
					</asp:TemplateColumn>					
					
					<asp:TemplateColumn SortExpression="saldo" 
										runat="server" 
										HeaderText="Qty Stock" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:TextBox	id="txtQtySisaCek" 
											autopostback="False"
											Runat="server" 
											BorderStyle="None"
											BackColor="Transparent"
											Text='<%# format(DataBinder.Eval(Container.DataItem, "saldo"), "#,##0.00") %>'
											ReadOnly="True" 
											Width="50" />
						
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
											Width="50" />
						
						</itemtemplate>
						<itemstyle Width="100px" />
					</asp:TemplateColumn>		
					
					<asp:TemplateColumn SortExpression="satuankc" 
										runat="server" 
										HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Left" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										 
										Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>' 
										ID="_lblSatuan"/>
						
						</itemtemplate>
					</asp:TemplateColumn>			
					
					<asp:TemplateColumn runat="server" 
										HeaderText="" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Right" 
										Visible="True">
						<itemtemplate>
						
							<asp:CompareValidator	id="cvQtyGrid" 
													Runat="server" 
													ControlToValidate="txtQtySisa" 
													ControlToCompare="txtQtySisaCek"
													Type="Double"
													Display="Dynamic"
													Operator="LessThanEqual"
													ErrorMessage='<%# "Qty Distribusi melebihi Qty Stock - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmbarang") %>'>**
							</asp:CompareValidator>
														
							<asp:CompareValidator	id="cvQtyGrid2" 
													runat="server" 
													ControlToValidate="txtQtySisa" 
													Operator="DataTypeCheck" 
													Type="Double" 
													ErrorMessage='<%# "Qty Distribusi harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmbarang") %>' 
													Display="Dynamic">** 
							</asp:CompareValidator>							
							
						</itemtemplate>
					</asp:TemplateColumn>
																																							
				</Columns>

			</asp:DataGrid>
			
			</DIV>

		</TD>
	</TR>

</TABLE> 

<TABLE cellSpacing="0" cellPadding="5" width="100%">
	<TR>
		<TD align="left">
			<P>
				<asp:ValidationSummary	id="ValidationSummarySalin" 
										runat="server" 
										HeaderText="Field(s) berikut masih belum benar."></asp:ValidationSummary>
			</P>
		</TD>
	</TR>
</TABLE>

<!-- END DATAGRID SALIN PESANAN -->