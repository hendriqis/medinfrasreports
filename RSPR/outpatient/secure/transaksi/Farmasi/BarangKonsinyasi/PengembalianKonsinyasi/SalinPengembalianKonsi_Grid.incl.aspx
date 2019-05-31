<!-- SPACER ROW -->

<script language="JavaScript">
    function konfirmasif() {
        //alert('test');
        if (!confirm('Anda yakin akan salin faktur ini ?')) return false;
        return true
    }
</script>

<!-- START DATAGRID SALIN FAKTUR -->
<table width="100%" class="rbody">
    <tr>
        <td width="10%" align="right">
            <asp:button id="btnSaveFaktur" runat="server" text="Salin" cssclass="sbttn" width="100"
                causesvalidation="False"></asp:button>
            <asp:button id="btnCancel" runat="server" text="Batal" width="100" cssclass="sbttn"
                causesvalidation="False"></asp:button>
        </td>
    </tr>
    <tr>
        <td width="100%" height="100%">
            <div style="overflow: auto; width: 100%;">
                <asp:datagrid id="gridSalinFaktur" runat="server" width="100%" autogeneratecolumns="False"
                    cellspacing="0" bordercolor="Gainsboro" enableviewstate="True" borderwidth="1"
                    gridlines="Both" allowpaging="false" pagesize="20" showfooter="False" cellpadding="0"
                    allowsorting="True">
							
				<HeaderStyle CssClass="gridHeaderStyle" />
                <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                <EditItemStyle Font-Bold="false" />
                <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                <SelectedItemStyle BackColor="CornflowerBlue" />
				
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
										HeaderText="Supplier" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										 
										Text='<%# DataBinder.Eval(Container.DataItem, "supplier") %>' 
										ID="_lblKdSupplier"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="noterima" 
										runat="server" 
										HeaderText="No. Terima" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										 
										Text='<%# DataBinder.Eval(Container.DataItem, "noterima") %>' 
										ID="_lblNoTerima"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="tgterima" 
										runat="server" 
										HeaderText="Tanggal" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										 
										Text='<%# DataBinder.Eval(Container.DataItem, "tgterima") %>' 
										ID="_lblTgTerima"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Counter" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										 
										Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>' 
										ID="_lblCounter"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="nmdesc1" 
										runat="server" 
										HeaderText="Item" 
										ItemStyle-HorizontalAlign="Left" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						    <table>
						        <tr>
						            <td style="color: #000000;">
						                <asp:label	runat="server"											 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
										ID="_lblNmItem"/>
						            </td>
						        </tr>
						        <tr>
						            <td class="txtweak">
						                <asp:label	runat="server"											 
										Text='<%# DataBinder.Eval(Container.DataItem, "kdbarang") %>' 
										ID="_lblKdBarang"/>
						            </td>
						        </tr>
						    </table>							
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="qtyTerima" 
										runat="server" 
										Visible="True"
										HeaderStyle-Width="320px"
										ItemStyle-Width="320px">
						<HeaderTemplate>
						    <table style="width: 320px" cellspacing="0">
						        <tr>
						            <td style="text-align: center;" colspan="7">
						                Qty
						            </td>
						        </tr>
						        <tr>
						            <td style="height: 1px; width: 100%; background-color: #999999" colspan="7"></td>						            
						        </tr>
						        <tr>
						            <td style="width: 80px; text-align: center;">
						                Terima
						            </td>
						            <td style="width: 1px; height: 100%; background-color: #999999;"></td>
						            <td style="width: 80px; text-align: center;">
						                Tukar Faktur
						            </td>
						            <td style="width: 1px; height: 100%; background-color: #999999;"></td>
						            <td style="width: 80px; text-align: center;">
						                Total Kembali
						            </td>
						            <td style="width: 1px; height: 100%; background-color: #999999;"></td>
						            <td style="width: 80px; text-align: center;">
						                Sisa
						            </td>
						        </tr>
						    </table>
						</HeaderTemplate>
						<itemtemplate>
							<table style="width: 320px" cellspacing="0">
						        <tr>
						            <td style="width: 80px; text-align: center;">
						                <asp:label	runat="server"											 
										    Text='<%# format(DataBinder.Eval(Container.DataItem, "qtyTerima"), "##0.00") %>' 
										    ID="_lblQtyTerima"/>
						            </td>
						            <td style="width: 1px; height: 100%; background-color: #999999;"></td>
						            <td style="width: 80px; text-align: center;">
						                <asp:label	runat="server"											 
										    Text='<%# format(DataBinder.Eval(Container.DataItem, "qtyTF"), "##0.00") %>' 
										    ID="_lblQtyTF"/>
						            </td>
						            <td style="width: 1px; height: 100%; background-color: #999999;"></td>
						            <td style="width: 80px; text-align: center;">
						                <asp:label	runat="server"	
										    Text='<%# format(DataBinder.Eval(Container.DataItem, "qtyBack"), "##0.00") %>' 
										    ID="_lblQtyBack"/>
						            </td>
						            <td style="width: 1px; height: 100%; background-color: #999999;"></td>
						            <td style="width: 80px; text-align: center;">
						                <asp:label	runat="server"	
										    Text='<%# format(DataBinder.Eval(Container.DataItem, "qtySisa"), "##0.00") %>' 
										    ID="_lblQtySisa"/>
						                <asp:TextBox	runat="server"	
											Text='<%# format(DataBinder.Eval(Container.DataItem, "qtySisa"), "##0.00") %>' 
											BorderStyle="none"
											Background ="Transparent"
											ReadOnly="True"
											Width="70"
											ID="_txtQtySisa"
											style="text-align:right; display:none;"/>
						            </td>
						        </tr>
						    </table>						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="satuankc" 
										runat="server" 
										HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"	
										 
										Text='<%# DataBinder.Eval(Container.DataItem, "satuankc") %>' 
										ID="_lblSatuan"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					<asp:TemplateColumn SortExpression="satuankc" 
										runat="server" 
										HeaderText="Satuan" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:label	runat="server"	
										 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuankc") %>' 
										ID="_lblnmSatuan"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn SortExpression="qtydefault" 
										runat="server" 
										HeaderText="Qty Kembali" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:TextBox	runat="server"	
											style="margin-left:5;margin-right:5;text-align:right" 
											Text='<%# format(DataBinder.Eval(Container.DataItem, "qtydefault"), "##0.00") %>' 
											ID="_txtQtyKembali"
											Width="80"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Faktor" 
										ItemStyle-HorizontalAlign="Right" 
										HeaderStyle-HorizontalAlign="Right" 
										Visible="False">
						<itemtemplate>
						
							<asp:label	runat="server"											 
										Text='1' 
										ID="_lblFaktor"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Harga" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:TextBox	runat="server"	
											style="text-align:right" 
											Width="120"
											Text='<%# format(DataBinder.Eval(Container.DataItem, "harga"), "##0.00") %>' 
											ID="_txtHarga"/>
						
						</itemtemplate>
					</asp:TemplateColumn>
					
					<asp:TemplateColumn runat="server" 
										HeaderText="Diskon" 
										ItemStyle-HorizontalAlign="Center" 
										HeaderStyle-HorizontalAlign="Center" 
										Visible="True">
						<itemtemplate>
						
							<asp:TextBox	runat="server"	
											style="margin-left:5;margin-right:5;text-align:right" 
											Width="80"
											Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonpc"), "##0.00") %>' 
											ID="_txtDiskonPc"/>
						
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
													ControlToValidate="_txtQtyKembali" 
													ControlToCompare="_txtQtySisa"
													Type="Double"
													Display="Dynamic"
													Operator="LessThanEqual"
													ErrorMessage='<%# "Qty Kembali melebihi Qty Konsinyasi - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>'>**
							</asp:CompareValidator>
														
							<asp:CompareValidator	id="cvQtyGrid2" 
													runat="server" 
													ControlToValidate="_txtQtyKembali" 
													Operator="DataTypeCheck" 
													Type="Double" 
													ErrorMessage='<%# "Qty Kembali harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
													Display="Dynamic">** 
							</asp:CompareValidator>
							
							<asp:CompareValidator	id="cvHargaGrid" 
													runat="server" 
													ControlToValidate="_txtHarga" 
													Operator="DataTypeCheck" 
													Type="Currency" 
													ErrorMessage='<%# "Harga harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
													Display="Dynamic">** 
							</asp:CompareValidator>
							
							<asp:CompareValidator	id="cvDiskonPcGrid" 
													runat="server" 
													ControlToValidate="_txtDiskonPc" 
													Operator="DataTypeCheck" 
													Type="Double" 
													ErrorMessage='<%# "Diskon1 harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
													Display="Dynamic">** 
							</asp:CompareValidator>
							
							<asp:RangeValidator		id="rvDiskonPcGrid" 
													runat="server" 
													ControlToValidate="_txtDiskonPc" 
													MaximumValue="100.00" 
													MinimumValue="0.00" 
													Type="Double" 
													ErrorMessage='<%# "Diskon melebihi 100% - " & DataBinder.Eval(Container.DataItem, "kdbarang") & " / " & DataBinder.Eval(Container.DataItem, "nmdesc1") %>' 
													Display="Dynamic">** 
							</asp:RangeValidator>							
							
						</itemtemplate>
					</asp:TemplateColumn>															
																																											
				</Columns>

			</asp:datagrid>
            </div>
        </td>
    </tr>
</table>
<table cellspacing="0" cellpadding="5" width="100%">
    <tr>
        <td align="left">
            <p>
                <asp:validationsummary id="ValidationSummarySalin" runat="server" headertext="Field(s) berikut masih belum benar."></asp:validationsummary>
            </p>
        </td>
    </tr>
</table>
<!-- END DATAGRID SALIN FAKTUR -->
