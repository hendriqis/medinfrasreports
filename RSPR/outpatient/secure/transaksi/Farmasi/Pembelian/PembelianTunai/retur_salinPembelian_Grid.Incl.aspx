<!-- SPACER ROW -->

<SCRIPT LANGUAGE="JavaScript">
	function konfirmasi()
		{
			//alert('test');
			if (!confirm('Anda yakin akan salin pembelian ini ?')) return false;
			return true
		}
</SCRIPT>

<!-- START DATAGRID SALIN RETUR -->
																			
<TABLE width="100%">
    <TR class="rbody">
		<TD align=right>
			<asp:Button id="btnSaveRetur" 
						runat="server" 
						text="Salin" 
						CssClass="sbttn"
						Width="100"
						CausesValidation="False"></asp:Button>						
			<asp:Button id="btnCancel" 
						runat="server" 
						text="Batal" 
						Width="100"
						CssClass="sbttn"
						CausesValidation="False"></asp:Button>
		</TD>
	</TR>
	<TR class="rbody">
		<TD width="100%" height="100%">
		
			<DIV style="OVERFLOW: auto; WIDTH: 100%;">

			<asp:DataGrid	id="gridSalinPembelian" 
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
							ShowFooter="False" 
							CellPadding="0">
							
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
										HeaderText="No. Terima" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Left" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nobukti") %>' 
										ID="_lblTerima"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Kode" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Left" 
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
										HeaderStyle-HorizontalAlign="Left" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmbarang") %>' 
										ID="_lblNmItem"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Qty Terima" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
							
							<asp:TextBox	id="txtQtyAwal" 
											autopostback="False"
											Runat="server" 
											BackColor="Transparent"
											BorderStyle="None" 
											Text='<%# format(DataBinder.Eval(Container.DataItem, "qtybeli"), "#,##0.00") %>' 
											ReadOnly="True"
											Width="75" />
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Qty Sisa" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
							
							<asp:TextBox	id="txtQtySisa" 
											autopostback="False"
											Runat="server" 
											BackColor="Transparent"
											BorderStyle="None" 
											Text='<%# format(DataBinder.Eval(Container.DataItem, "qtysisa"), "#,##0.00") %>' 
											ReadOnly="True"
											Width="75" />
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Qty Retur" 
										ItemStyle-HorizontalAlign="Center" 
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
										ItemStyle-HorizontalAlign="Center" 
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
										HeaderStyle-HorizontalAlign="Left" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>' 
										ID="_lblSatuan"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn runat="server" 
										HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Left" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										style="margin-left:5;margin-right:5" 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>' 
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
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "harga"), "#,##0.00") %>' 
										ID="_lblHarga"/>							
							
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
										Text='<%# Format(DataBinder.Eval(Container.DataItem, "expired"), "dd-MM-yyyy") %>' 
										ID="_lblExpired"/>							
							
						</itemtemplate>
					</asp:TemplateColumn>	
																																											
				</Columns>

			</asp:DataGrid>
			
			</DIV>

		</TD>
	</TR>

</TABLE>

<TABLE cellSpacing="0" cellPadding="5" width="100%">
	<TR class="rbody">
		<TD align="left">
			<P>
				<asp:ValidationSummary	id="ValidationSummarySalin" 
										runat="server" 
										HeaderText="Field(s) berikut masih belum benar."></asp:ValidationSummary>
			</P>
		</TD>
	</TR>
</TABLE> 

<!-- END DATAGRID SALIN PENERIMAAN -->