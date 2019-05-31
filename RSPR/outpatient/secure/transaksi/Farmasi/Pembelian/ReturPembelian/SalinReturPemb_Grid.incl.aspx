<!-- SPACER ROW -->

<SCRIPT LANGUAGE="JavaScript">
	function konfirmasi()
		{
			//alert('test');
			if (!confirm('Anda yakin akan salin pembelian ini ?')) return false;
			return true
		}
</SCRIPT>

<TABLE width="100%">
	<TR class="rheader">
		<TD class="rheadercol" align="left" height="2"></TD>
	</TR>
</TABLE>

<TABLE width="100%">
	<TR>
		<TD width="10%" align=right>
			<br />
			<asp:Button id="btnSaveRetur" 
						runat="server" 
						text="Salin" 
						CssClass="bttntext"
						CausesValidation="False"></asp:Button>						
			<asp:Button id="btnCancel" 
						runat="server" 
						text="Batal" 
						CssClass="bttntext"
						CausesValidation="False"></asp:Button>
		</TD>
	</TR>
</TABLE>

<!-- START DATAGRID SALIN RETUR -->
																			
<TABLE width="100%">

	<TR>
		<TD width="100%" height="100%">
		
			<DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 400">

			<asp:DataGrid	id="gridSalinRetur" 
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
										HeaderText="No Resep" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "noterima") %>' 
										ID="_lblNoResep"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Kode" 
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
										ID="_lblNmItem"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Qty Awal" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
							
							<asp:TextBox	id="txtQtyAwal" 
											autopostback="False"
											Runat="server" 
											BackColor="Transparent"
											BorderStyle="None" 
											Text='<%# format(DataBinder.Eval(Container.DataItem, "qty"), "#,##0.00") %>' 
											ReadOnly="True"
											Width="75" />
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Qty Retur" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
							
							<asp:TextBox	id="txtQtyRetur" 
											autopostback="False"
											Runat="server" 
											BackColor="Transparent"
											Text='0.00' 
											Width="75" 
											TextAlign="Right" />
													
						</itemtemplate>
					</asp:TemplateColumn>
							
					<asp:TemplateColumn runat="server" 
										HeaderText="Faktor" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "faktor") %>' 
										ID="_lblFaktor"/>
						
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
										Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>' 
										ID="_lblSatuan"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Harga" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga"), "#,##0.00") %>' 
										ID="_lblHarga"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Selisih" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "selisih"), "#,##0.00") %>' 
										ID="_lblSelisih"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Expired" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "expired") %>' 
										ID="_lblExpired"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn runat="server" 
										HeaderText="" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>											
						
							<asp:CompareValidator	id="cvQty" 
													Runat="server" 
													ControlToValidate="txtQtyRetur" 
													ControlToCompare="txtQtyAwal"
													Type="Double"
													Display="Dynamic"
													Operator="LessThanEqual"
													ErrorMessage='<%# "Qty Retur melebihi Qty Resep - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>'>**
							</asp:CompareValidator>
							
							<asp:CompareValidator	id="cvQty1" 
													runat="server" 
													ControlToValidate="txtQtyRetur" 
													Operator="GreaterThan" 
													Type="Double" 
													ValueToCompare="0.00"
													ErrorMessage='<%# "Qty Retur harus lebih dari 0.00 - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
													Display="Dynamic">**  
							</asp:CompareValidator>
							
							<asp:CompareValidator	id="cvQty2" 
													runat="server" 
													ControlToValidate="txtQtyRetur" 
													Operator="DataTypeCheck" 
													Type="Double" 
													ErrorMessage='<%# "Qty Retur harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
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

<!-- END DATAGRID SALIN RETUR -->