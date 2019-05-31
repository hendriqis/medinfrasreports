<!-- ---------------------------------
	ADDNEW ROW BEGIN HERE 
------------------------------------- -->
<asp:panel id="panelROPAddNewRow" runat="server" defaultbutton="btnAddNewRow">

<TABLE width="100%" cellspacing="0" cellpadding="2">

	<TR class="rheader">
		<TD class="rheadercol" align="left" height="25">Edit atau Tambah Item Resep</TD>
	</TR>						

	<TR>

		<td width="100%" valign=top >
			
			 
																					
					<TABLE	cellSpacing="0" 
							cellPadding="5" 
							width="100%" 
							class=rBodyAddNew 
							bordercolordark=#98AAB1 >
					
						<tr>
							<td width="50%" valign="top">
								
								<TABLE width="100%" cellpadding=1 cellspacing=2>
									
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											Lokasi
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
										    <asp:TextBox ID="txtCounter" Runat="Server" Visible="False"></asp:TextBox>
											<asp:DropDownList ID="ddlLokasi" Runat="server" Width="354" />
										</TD>
										<td class=rBodyAddNewFld>											
											<asp:RequiredFieldValidator runat="server" id="rfvLokasi" ControlToValidate="ddlLokasi" errormessage="Lokasi">**
											</asp:RequiredFieldValidator>
										</td>
									</tr>
									
									<tr>
										<TD width="35%" class=rBodyAddNewFld>&nbsp;
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:CheckBox	id="chkR" 
															runat="server" 
															AutoPostBack="True" 
															Text="R/" />
											&nbsp;&nbsp;&nbsp;&nbsp;
											<asp:CheckBox	id="chkJamin" 
															runat="server" 
															AutoPostBack="True" 
															Text="Dijamin" />
											<asp:CheckBox	id="chkNonStock" 
															runat="server" 
															Text="NonStock" 
															Enabled="False" 
															Visible="False" />
											<asp:CheckBox	id="chkdiskon" 
															runat="server" 
															Text="Diskon" 
															Enabled="False" 
															Visible="True" />											
										</TD>
										<td class=rBodyAddNewFld>&nbsp;
										</td>
									</tr>
									
									<asp:Panel id="PanelPilihResep" Runat="server">
									
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											Resep
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:DropDownList ID="ddlR" Runat="server" Width="354" AutoPostBack="True" />
										</TD>
										<td class=rBodyAddNewFld>
											<asp:RequiredFieldValidator runat="server" id="rfvResep" ControlToValidate="ddlR" errormessage="Ikut Resep">**
											</asp:RequiredFieldValidator>
										</td>
									</tr>
									
									</asp:Panel>
									
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<asp:LinkButton id="lbtnKodeBarang" 
															CausesValidation="False" 
															text="Kode Item" 
															Runat="server" />
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:TextBox	id="AddNewRow_txtKodeBarang" 
															runat="server" 
															MaxLength="10" 
															AutoPostBack="True"
															width="354" />
										</TD>
										<td class=rBodyAddNewFld>
											<asp:RequiredFieldValidator id="rfv_AddNewRow_txtKodeBarang" 
																		runat="server" 
																		controlToValidate="AddNewRow_txtKodeBarang" 
																		errormessage="Kode Item harus diisi." 
																		display="dynamic" >**</asp:RequiredFieldValidator>
										</td>
									</tr>
									<asp:Panel id="PanelSubsObat" Runat="server">
                                        <tr>
										    <TD width="35%" class=rBodyAddNewFld>
											    <asp:LinkButton id="lbtnSubsBarang" 
															    CausesValidation="False" 
															    text="Item Substitusi" 
															    Runat="server" />
										    </TD>
										    <TD width="40%" class=rBodyAddNewFld>
											    <asp:TextBox	id="AddNewRow_txtSubsBarang" 
															    runat="server" 
															    MaxLength="10" 
															    AutoPostBack="True"
															    width="354" />
										    </TD>
										    <td class=rBodyAddNewFld>
											    <asp:RequiredFieldValidator id="rfv_AddNewRow_txtSubsBarang" 
																		    runat="server" 
																		    controlToValidate="AddNewRow_txtSubsBarang" 
																		    errormessage="Substitusi harus diisi." 
																		    display="dynamic" >**</asp:RequiredFieldValidator>
										    </td>
									    </tr>
                                     </asp:Panel>
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											Nama Item
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:TextBox		id="AddNewRow_lblNamaBarang" 
																runat="server" 
																ReadOnly="True"
																width="354" />
										</TD>
										<td class=rBodyAddNewFld>
											<asp:label id="AddNewRow_lbljamin" runat="server" width="100%" text="0" Visible="False" />
										</td>
									</tr>
									
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											Hitung Dalam
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:RadioButton	GroupName="__hd" 
																ID="AddNewRow_rbtnSatuan" 
																Text="Satuan" 
																runat="server" 
																AutoPostBack="True" 
																/>
											<asp:RadioButton	GroupName="__hd" 
																ID="AddNewRow_rbtnKadar" 
																Text="Kadar" 
																runat="server" 
																AutoPostBack="True" 
																/>
										</TD>
										<TD class=rBodyAddNewFld>&nbsp;
										</TD>
									</tr>
																				
									<tr>
										<td width="35%" class=rBodyAddNewFld>
											Jumlah Obat/Satuan Kecil
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox	id="AddNewRow_txtJumlahObat" 
															runat="server" 
															width="200" 
															Text="0.00" 
															AutoPostBack="False"
															onchange="hitunghasiljs()"
															style="text-align:right;" />
											<asp:textbox id="AddNewRow_Satuan" runat="server" width="150" ReadOnly="True" />														
										</td>
										<td class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_Satuan_code" runat="server" width="37%" ReadOnly="True" visible="false"/>
										</td>
									</tr>
									
								<asp:Panel id="pnlJmlKemasR" runat="server">
									
									<tr>
										<td width="35%" class=rBodyAddNewFld>
											Jumlah R/
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox	id="AddNewRow_txtJumlahR" 
															runat="server" 
															width="354" 
															Text="0.00" 
															AutoPostBack="False" 
															onchange="hitunghasiljs()"
															style="text-align:right;" />
										</td>
										<td class=rBodyAddNewFld>
											<asp:Label class="error" id="lblErrorJmlR" runat="server" width="100%" />
										</td>
									</tr>
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<asp:Label		 id="lbtnKodeKemasanR" 
																CausesValidation="False" 
																text="Embalace Racikan" 
																Runat="server" />
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:DropDownList	id="AddNewRow_ddlKodeKemasanR" 
																runat="server" 
																AutoPostBack="False"
																width="354" />
										</TD>
										<td class=rBodyAddNewFld style="display:none">
											<asp:label id="AddNewRow_lblNamaKemasanR" runat="server" />
											&nbsp;/&nbsp;Harga :&nbsp;
											<asp:label id="AddNewRow_lblHargaKemasanR" runat="server" />
										</td>
									</tr>
									
								</asp:Panel>								
								<asp:Panel id="pnlJmlKemasO" runat="server">
								
									<tr>
										<td width="35%" class=rBodyAddNewFld>
											Jumlah Embalace Obat
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_txtJumlahO" runat="server" width="354" Text="0.00" AutoPostBack="True" style="text-align:right;" />
										</td>
										<td class=rBodyAddNewFld>&nbsp;
										</td>
									</tr>
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<asp:Label		id="lbtnKodeKemasanO" 
																CausesValidation="False" 
																text="Embalace Obat" 
																Runat="server" />
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:DropDownList	id="AddNewRow_ddlKodeKemasanO" 
																runat="server" 
																AutoPostBack="False"
																width="354" />
															
										</TD>
										<td class=rBodyAddNewFld style="display:none">
											<asp:label id="AddNewRow_lblNamaKemasanO" runat="server" />
											&nbsp;/&nbsp;Harga :&nbsp;
											<asp:label id="AddNewRow_lblHargaKemasanO" runat="server" />
										</td>
									</tr>
									
									</asp:Panel>
										
								</table>
							
							</td>
							<td width="50%" valign="top">
							
								<TABLE width="100%" cellpadding=1 cellspacing=2>
							
									<tr>
										<td width="35%" class=rBodyAddNewFld>
											Qty Hasil
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:Textbox id="AddNewRow_Hasil" runat="server" width="354" text="0.00" ReadOnly="True" style="text-align:right;" />
										</td>
										<td class=rBodyAddNewFld>
											<asp:label id="AddNewRow_QtyStock" runat="server" width="354" text="0.00" Visible="False" style="text-align:right;" />
											<asp:Label class="error" id="lblError" runat="server" />
										</td>
									</tr>
									
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											Qty Diminta
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:TextBox	id="AddNewRow_txtQtyDitagih" 
															runat="server" 
															Text="0.00"
															AutoPostBack="False"
															width="354"
															style="text-align:right;" />
										</TD>
										<td class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_txtHpr" runat="server" Readonly=True Visible="False" />																				
											<asp:textbox id="AddNewRow_txtHargaDsr" runat="server" Readonly=True Visible="False" />
											<asp:textbox id="AddNewRow_txtMarkUp" runat="server" Readonly=True Visible="False" />											
											<asp:textbox id="AddNewRow_txtCoverage" runat="server" Readonly=True Visible="False" />											
										</td>
									</tr>
									
									<tr>
										<td width="35%" class=rBodyAddNewFld>
											Tarif
										</td>
										<td width="60%" class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_txtHarga" runat="server" Readonly="False" width="175" Text="0.00" AutoPostBack="False" style="text-align:right;" />
											<asp:textbox id="AddNewRow_txtSelisih" runat="server" Readonly="False" width="175" Text="0.00" AutoPostBack="False" style="text-align:right;" />											
										</td>
										<td class=rBodyAddNewFld>											
											<asp:CheckBox	id="AddNewRow_chkCito" 
															runat="server" 
															AutoPostBack="True" 
															Text="Cito" 
															Visible="False" />
											<asp:CompareValidator id="cvHarga" runat="server" ControlToValidate="AddNewRow_txtHarga" Operator="DataTypeCheck" Type="Currency" ErrorMessage="Harga" Display="Dynamic">** Harus diisi dengan angka **
											</asp:CompareValidator>
										</td>
									</tr>						
									
									<tr>
										<td width="35%" class=rBodyAddNewFld>
											Diskon %
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_txtDiskon" runat="server" width="354" Text="0.00" autopostback="False" readonly="true" style="text-align:right;"/>
										</td>
										<td class=rBodyAddNewFld>											
											<asp:CompareValidator id="cvDiskon" runat="server" ControlToValidate="AddNewRow_txtDiskon" Operator="DataTypeCheck" Type="Double" ErrorMessage="Diskon" Display="Dynamic" Enabled="False">** Harus diisi dengan angka **
											</asp:CompareValidator>
											<asp:RangeValidator id="rvDiskon" runat="server" ControlToValidate="AddNewRow_txtDiskon" MaximumValue="100.00" MinimumValue="0.00" Type="Double" ErrorMessage="Diskon" Display="Dynamic">** Angka melewati batas **
											</asp:RangeValidator>											
										</td>
									</tr>
								<asp:Panel id="pnlUangR" runat="server">
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											Uang R/
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:DropDownList	id="AddNewRow_ddlUangR" 
																runat="server" 
																width="354" 
																AutoPostBack="False"
																style="text-align:right;" />
										</TD>
										<td class=rBodyAddNewFld style="display:none">
											&nbsp;/&nbsp;Harga :&nbsp;
											<asp:label id="AddNewRow_lblUangR" runat="server" />
										</td>
									</tr>
								</asp:Panel>
									<tr style="display:none">
										<td width="35%" class=rBodyAddNewFld>
											Total
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_txtTotal" runat="server" Readonly="False" width="354" Text="0.00" style="text-align:right;" />
										</td>
										<td class=rBodyAddNewFld>&nbsp;
										</td>
									</tr>	
									
									<tr style="display:none">
										<td width="35%" class=rBodyAddNewFld>
											Expired (dd-MM-yyyy)
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_TglExpired" runat="server" width="354"/>
										</td>
										<td class=rBodyAddNewFld>&nbsp;
										</td>
									</tr>								
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<asp:linkbutton
													ID="lbtnAturanPakai"
													RUNAT="server"
													CAUSESVALIDATION="False"
													TEXT="Aturan Pakai">
												</asp:linkbutton>
										</TD>
										<TD width="55%" class=rBodyAddNewFld>
											<asp:TextBox	id="AddNewRow_txtAturanPakai" 
															runat="server" width="100" AutoPostBack="True"/>
														
											<ASP:TextBox 
												ID="AddNewRow_lblAturanPakai" 
												RUNAT="server" width="250" readonly="true">
											</ASP:TextBox>
										</TD>
										<TD class=rBodyAddNewFld>&nbsp;
										</TD>							
									</tr>	
									<tr>
										<td width="35%" class=rBodyAddNewFld>
												Aturan Pakai Lainnya
										</td>
										<td width="55%" class=rBodyAddNewFld>
											<asp:Textbox	id="AddNewRow_txtAturanPakaiLain" 
															Width="354" Height="50px"
															runat="server"
															textmode="multiline"
											/>
										</td>
										<TD class=rBodyAddNewFld>&nbsp;
										</TD>
									</tr>
									<tr>
										<TD width="35%" class=rBodyAddNewFld>&nbsp;
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:CheckBox	id="chkObatDalam" 
															runat="server"
															checked="true" 
															Text="Obat Dalam" />
										</TD>
										<td class=rBodyAddNewFld>&nbsp;
										</td>
									</tr>
									<TR>
									    <TD align="left" colspan="3">
										    <font class="txtstrong">Labeling:</font><br />
										    <asp:Label	id="lblLabel" 
													    runat="server"></asp:Label>													    
									    </TD>
								    </TR>
								</TABLE>	
								
																																						
							</td>
						</tr>	
						<TR class="rbodyaddnew">
							<TD align="left" colspan="2">
								<asp:Button id="btnAddNewRow" 
											runat="server" 
											text="Save" 
											CssClass=sbttn AccessKey="V" width="100"></asp:Button>
								
								<asp:Button id="btnDone" 
											runat="server" text="Close" 
											CausesValidation="False" 
											CssClass=sbttn AccessKey="D" width="100"></asp:Button>								
							</TD>
						</TR>
					</TABLE>
										
		</td>
		
	</TR>	
	
	<TR bgcolor=White valign=bottom>
		<TD align="left" height="25">
			<p align=right>Data yang sudah ada...</p> 
		</TD>
	</TR> 
		
</TABLE>

</asp:panel>
<!-- ---------------------------------
	ADDNEW ROW END HERE 
------------------------------------- -->
<div id="oDialogItem" style="display: none;">
    <asp:label id="lblKadar" runat="server" />
    <asp:label id="lblKdSatuan" runat="server" />
    <asp:label id="lblSatuanKc" runat="server" />
    <asp:label id="lblPotong" runat="server" />
</div>
