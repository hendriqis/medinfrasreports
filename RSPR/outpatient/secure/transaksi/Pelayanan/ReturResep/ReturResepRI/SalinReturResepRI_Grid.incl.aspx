<!-- SPACER ROW -->

<SCRIPT LANGUAGE="JavaScript">
	function konfirmasi()
		{
			//alert('test');
			if (!confirm('Anda yakin akan salin retur resep ini ?')) return false;
			return true
		}
</SCRIPT>

<!-- START DATAGRID SALIN RETUR -->
																			
<TABLE width="100%" class="rbody">
    <TR>
		<TD width="100%" align=right>
			<asp:Button id="btnSaveRetur" 
						runat="server" 
						text="Salin" 
						CssClass="sbttn"
						Width="100"
						CausesValidation="False"></asp:Button>						
			<asp:Button id="btnCancel" 
						runat="server" 
						text="Batal" 
						CssClass="sbttn"
						Width="100"
						CausesValidation="False"></asp:Button>
		</TD>
	</TR>
	<TR>
		<TD width="100%" height="100%">
		
			<DIV style="OVERFLOW: auto; WIDTH: 100%;">

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
							CellPadding="0"
							AllowSorting="True">
							
				<HeaderStyle Font-Bold="false" BackColor=#DEE3E7  Height=20 />								
                <AlternatingItemStyle BackColor=#EEEEEE  />
                <EditItemStyle Font-Bold="false" />
                <PagerStyle	Mode="NumericPages" HorizontalAlign="right" />
				
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
					
					<asp:TemplateColumn SortExpression="noresep" 
										runat="server" 
										HeaderText="No. Resep" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "noresep") %>' 
										ID="_lblNoResep"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="nomorfm" 
										runat="server" 
										HeaderText="No. Bukti" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nomorfm") %>' 
										ID="_lblNomorFm"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="kdbarang" 
										runat="server" 
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
																										
					<asp:TemplateColumn SortExpression="nmdesc1" 
										runat="server" 
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
					
					<asp:TemplateColumn SortExpression="qtyawal" 
										runat="server" 
										HeaderText="Qty Beli" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
							
							<asp:TextBox	id="txtQtyBeli" 
											autopostback="False"
											Runat="server" 
											BackColor="Transparent"
											BorderStyle="None" 
											Text='<%# format(DataBinder.Eval(Container.DataItem, "qtyawal"), "#,##0.00") %>' 
											ReadOnly="True"
											Width="75" />
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="qty" 
										runat="server" 
										HeaderText="Qty Sisa" 
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
					
					<asp:TemplateColumn SortExpression="qtyretur" 
										runat="server" 
										HeaderText="Qty Sudah Retur" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
							
							<asp:TextBox	id="txtQtySudahRetur" 
											autopostback="False"
											Runat="server" 
											BackColor="Transparent"
											BorderStyle="None" 
											Text='<%# format(DataBinder.Eval(Container.DataItem, "qtyretur"), "#,##0.00") %>' 
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
											Text='0.00'  
											Width="75" 
											TextAlign="Right" />
													
						</itemtemplate>
					</asp:TemplateColumn>
							
					
					<asp:TemplateColumn SortExpression="satobat" 
										runat="server" 
										HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="false">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "satobat") %>' 
										ID="_lblSatuan"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn SortExpression="nmsatobat" 
										runat="server" 
										HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmsatobat") %>' 
										ID="_lblnmSatuan"/>
						
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
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "hargajual"), "#,##0.00") %>' 
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
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "expired") %>' 
										ID="_lblExpired"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Disc%" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "diskonpc") %>' 
										ID="_lblDiskonPc"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn runat="server" 
										HeaderText="QtyKemasR" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "qtykemasr") %>' 
										ID="_lblQtyKemasR"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn runat="server" 
										HeaderText="KemasR" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kemasr") %>' 
										ID="_lblKemasR"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn SortExpression="embalacer" 
										runat="server" 
										HeaderText="EmbalaceR" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "embalacer") %>' 
										ID="_lblEmbalaceR"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn runat="server" 
										HeaderText="QtyKemasO" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "qtykemaso") %>' 
										ID="_lblQtyKemasO"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn runat="server" 
										HeaderText="KemasO" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kemaso") %>' 
										ID="_lblKemasO"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn SortExpression="embalaceo" 
										runat="server" 
										HeaderText="EmbalaceO" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "embalaceo") %>' 
										ID="_lblEmbalaceO"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn runat="server" 
										HeaderText="KdUangR" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "kduangr") %>' 
										ID="_lblKdUangR"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>	
					
					<asp:TemplateColumn runat="server" 
										HeaderText="UangR" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "uangR") %>' 
										ID="_lblUangR"/>							
							
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