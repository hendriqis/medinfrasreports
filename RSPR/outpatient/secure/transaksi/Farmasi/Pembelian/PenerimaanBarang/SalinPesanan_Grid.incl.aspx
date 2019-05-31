<!-- SPACER ROW -->

<script language="JavaScript">
    function konfirmasi() {
        if (!confirm('Anda yakin akan salin pesanan ini ?')) {
            return false;
        }
        else {
            return true;
        }
    }
</script>

<!-- START DATAGRID SALIN PESANAN -->
<table width="100%" class="rbody">
    <tr>
        <td width="100%" align="right">
            <asp:button id="btnSavePesanan" runat="server" text="Salin" cssclass="sbttn" width="100"
                causesvalidation="False"></asp:button>
            <asp:button id="btnCancel" runat="server" text="Batal" width="100" causesvalidation="False"
                cssclass="sbttn"></asp:button>
        </td>
    </tr>
    <tr>
        <td width="100%" height="100%">
            <div style="overflow: auto; width: 100%;">
                <asp:datagrid id="gridSalinPesanan" runat="server" width="100%" autogeneratecolumns="False"
                    cellspacing="0" bordercolor="Gainsboro" enableviewstate="True" borderwidth="1"
                    GridLines="none" allowpaging="false" pagesize="20" datakeyfield="counter"
                    showfooter="false" cellpadding="0" allowsorting="True">
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
								<asp:checkbox	runat="server" 
												enabled="True" 
												checked="false" 
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
											HeaderStyle-HorizontalAlign="Left" 
											Visible="False">
							<itemtemplate>
								<asp:label	runat="server"	
										 
										Text='<%# DataBinder.Eval(Container.DataItem, "counter") %>' 
										ID="_lblCounter"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="nopesan" 
											runat="server" 
											HeaderText="Informasi Pemesanan" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="True">
							<itemtemplate>
							    <table>
							        <tr>
							            <td style="color: #000000;">
							                <asp:label	runat="server"											 
										        Text='<%# DataBinder.Eval(Container.DataItem, "Tanggal") %>' 
										        ID="_lblTglPesan"/>
										    &nbsp;|&nbsp;
							                <asp:label	runat="server"											 
										        Text='<%# DataBinder.Eval(Container.DataItem, "nopesan") %>' 
										        ID="_lblNoPesan"/>
							            </td>
							        </tr>
							        <tr>
							            <td class="txtweak">
							                <asp:label	runat="server"											 
										        Text='<%# DataBinder.Eval(Container.DataItem, "nmstatuspo") %>'
										        ID="_lblnmstatuspo"/>
							            </td>
							        </tr>
							    </table>								
							</itemtemplate>
						</asp:TemplateColumn>
						
						<asp:TemplateColumn runat="server" 
											HeaderText="Kode Supplier" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="False">
							<itemtemplate>
								<asp:label	runat="server"											 
										Text='<%# DataBinder.Eval(Container.DataItem, "supplier") %>' 
										ID="_lblKdSupplier"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="namaItem" 
											runat="server" 
											HeaderText="Nama" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="True">
							<itemtemplate>
							    <table style="width: 250px">
							        <tr>
							            <td style="color: #000000;" colspan="3">
							                <asp:label	runat="server"											 
										        Text='<%# DataBinder.Eval(Container.DataItem, "namaItem") %>'
										        Title='<%# "Catalog No. " & DataBinder.Eval(Container.DataItem, "namaitem2") %>' 
										        ID="_lblNmItem"/>
							            </td>
							        </tr>
							        <tr>
							            <td class="txtweak">
							                <asp:label	runat="server"											 
										        Text='<%# DataBinder.Eval(Container.DataItem, "kodeitem") %>' 
										        ID="_lblKdBarang"/>
							            </td>
							            <td class="txtweak" style="font-style: italic; text-align: right; width: 60px;">
							                Catalog No.
							            </td>
							            <td class="txtweak">
							                <asp:label	runat="server"											 
										        Text='<%# DataBinder.Eval(Container.DataItem, "namaItem2") %>'										 
										        ID="_lblCatalogNo"/>
							            </td>
							        </tr>
							    </table>								
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Qty Pesan" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Right" 
											Visible="False">
							<itemtemplate>
								<asp:label	runat="server"											 
										Text='<%# format(DataBinder.Eval(Container.DataItem, "qtypesan"), "##0.00") %>' 
										ID="_lblQtyPesan"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Qty Trm" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="False">
							<itemtemplate>
								<asp:label	runat="server"											 
										Text='<%# format(DataBinder.Eval(Container.DataItem, "qtytrm"), "##0.00") %>' 
										ID="_lblQtyTerima"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="qtysisa" 
											runat="server" 
											HeaderText="Qty Tersisa" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Right" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox	id="txtQtySisaCek" 
												autopostback="False"
												Runat="server" 
												BorderStyle="None"
												BackColor="Transparent"
												Text='<%# format(DataBinder.Eval(Container.DataItem, "qtysisa"), "##0.00") %>'
												ReadOnly="True"
												style="text-align:right;" 
												Width="50" />
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="qtysisa" 
											runat="server" 
											HeaderText="Qty Terima" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox	id="txtQtySisa" 
												autopostback="False" 
												Runat="server"
												style="text-align:right;" 
												Text='<%# format(DataBinder.Eval(Container.DataItem, "qtysisa"), "##0.00") %>' 
												Width="50" />
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="satuan" 
											runat="server" 
											HeaderText="Satuan" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Left" 
											Visible="False">
							<itemtemplate>
								<asp:label	runat="server"											 
										Text='<%# DataBinder.Eval(Container.DataItem, "satuan") %>' 
										ID="_lblSatuan"/>
							</itemtemplate>
						</asp:TemplateColumn>
						
						<asp:TemplateColumn SortExpression="nmsatuan" 
											runat="server" 
											HeaderText="Satuan" 
											ItemStyle-HorizontalAlign="Center" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:label	runat="server"											 
										Text='<%# DataBinder.Eval(Container.DataItem, "nmsatuan") %>' 
										ID="_lblnmSatuan"/>
							</itemtemplate>
						</asp:TemplateColumn>
						
						<asp:TemplateColumn runat="server" 
											HeaderText="Satuan Kecil" 
											ItemStyle-HorizontalAlign="Center" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="False">
							<itemtemplate>
								<asp:label	runat="server"												 
											Text='<%# DataBinder.Eval(Container.DataItem, "satuanKc") %>' 
											ID="_lblSatuanKc"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Satuan Besar" 
											ItemStyle-HorizontalAlign="Center" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="False">
							<itemtemplate>
								<asp:label	runat="server"												 
											Text='<%# DataBinder.Eval(Container.DataItem, "satuanbs") %>' 
											ID="_lblSatuanBs"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Include PPN" 
											ItemStyle-HorizontalAlign="Center" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:checkbox	runat="server" 
												enabled="True" 
												checked="False" 
												ID="_chkInclPPn" />
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Harga" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Right" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox	runat="server"													 
												Text='<%# format(DataBinder.Eval(Container.DataItem, "harga2"), "#,##0.00") %>' 
												ID="_txtHarga"
												style="text-align:right; width: 100px"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Diskon1" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Right" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox	runat="server"													 
												Width="40"
												Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonpc"), "##0.00") %>' 
												ID="_txtDiskonPc"
												style="text-align:right;"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Diskon2" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Right" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox	runat="server" 												 
												Width="40" 
												Text='<%# format(DataBinder.Eval(Container.DataItem, "diskonpc2"), "##0.00") %>'  
												ID="_txtDiskonPc2"
												style="text-align:right;" />
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="faktor" 
											runat="server" 
											HeaderText="Faktor" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Right" 
											Visible="True">
							<itemtemplate>
								<asp:label	runat="server"												 
											Text='<%# format(DataBinder.Eval(Container.DataItem, "faktor"), "##0.00") %>' 
											ID="_lblFaktor"/>
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn SortExpression="bonus" 
											runat="server" 
											HeaderText="Bonus" 
											ItemStyle-HorizontalAlign="Center" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:checkbox	runat=server 
												enabled=false 
												checked='<%# DataBinder.Eval(Container.DataItem, "bonus") %>' 
												ID="_chkBonus" />
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="No. Batch" 
											ItemStyle-HorizontalAlign="Left" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox id="_txtNoBatch" 											 
											autopostback="False" 
											Runat="server" 
											Width="100"
											Text='' />
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="Expired" 
											ItemStyle-HorizontalAlign="Center" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:TextBox id="_txtExpired" 											 
											autopostback="true" 
											Runat="server" 
											Text='' 
											Width="90"/>
								
							</itemtemplate>
						</asp:TemplateColumn>
						<asp:TemplateColumn runat="server" 
											HeaderText="" 
											ItemStyle-HorizontalAlign="Right" 
											HeaderStyle-HorizontalAlign="Center" 
											Visible="True">
							<itemtemplate>
								<asp:CompareValidator	id="cvQtyGrid2" 
														runat="server" 
														ControlToValidate="txtQtySisa" 
														Operator="DataTypeCheck" 
														Type="Double" 
														ErrorMessage='<%# "Qty Terima harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kodeitem") & " / " & DataBinder.Eval(Container.DataItem, "namaitem") %>' 
														Display="Dynamic">** 
								</asp:CompareValidator>
								<asp:CompareValidator	id="cvHargaGrid" 
														runat="server" 
														ControlToValidate="_txtHarga" 
														Operator="DataTypeCheck" 
														Type="Currency" 
														ErrorMessage='<%# "Harga harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kodeitem") & " / " & DataBinder.Eval(Container.DataItem, "namaitem") %>' 
														Display="Dynamic">** 
								</asp:CompareValidator>
								<asp:CompareValidator	id="cvDiskonPcGrid" 
														runat="server" 
														ControlToValidate="_txtDiskonPc" 
														Operator="DataTypeCheck" 
														Type="Double" 
														ErrorMessage='<%# "Diskon1 harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kodeitem") & " / " & DataBinder.Eval(Container.DataItem, "namaitem") %>' 
														Display="Dynamic">** 
								</asp:CompareValidator>
								<asp:CompareValidator	id="cvDiskonPcGrid2" 
														runat="server" 
														ControlToValidate="_txtDiskonPc2" 
														Operator="DataTypeCheck" 
														Type="Double" 
														ErrorMessage='<%# "Diskon2 harus diisi dengan angka - " & DataBinder.Eval(Container.DataItem, "kodeitem") & " / " & DataBinder.Eval(Container.DataItem, "namaitem") %>' 
														Display="Dynamic">** 
								</asp:CompareValidator>
								<asp:RangeValidator		id="rvDiskonPcGrid" 
														runat="server" 
														ControlToValidate="_txtDiskonPc" 
														MaximumValue="100.00" 
														MinimumValue="0.00" 
														Type="Double" 
														ErrorMessage='<%# "Diskon melebihi 100% - " & DataBinder.Eval(Container.DataItem, "kodeitem") & " / " & DataBinder.Eval(Container.DataItem, "namaitem") %>' 
														Display="Dynamic">** 
								</asp:RangeValidator>
								<asp:RangeValidator		id="rvDiskonPcGrid2" 
														runat="server" 
														ControlToValidate="_txtDiskonPc2" 
														MaximumValue="100.00" 
														MinimumValue="0.00" 
														Type="Double" 
														ErrorMessage='<%# "Diskon2 melebihi 100% - " & DataBinder.Eval(Container.DataItem, "kodeitem") & " / " & DataBinder.Eval(Container.DataItem, "namaitem") %>' 
														Display="Dynamic">** 
								</asp:RangeValidator>
								
							</itemtemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn runat="server" HeaderText="Mata Uang" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left"
								Visible="False">
								<itemtemplate>
									<asp:label runat="server"  Text='<%# DataBinder.Eval(Container.DataItem, "matauang") %>' ID="_lblMataUang"/>
								</itemtemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn runat="server" HeaderText="Kurs" ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left"
								Visible="True">
								<itemtemplate>
									<asp:label runat="server"  Text='<%# Format(DataBinder.Eval(Container.DataItem, "kurs"), "#,##0.00") %>' ID="_lblKurs"/>
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
<!-- END DATAGRID SALIN PESANAN -->
