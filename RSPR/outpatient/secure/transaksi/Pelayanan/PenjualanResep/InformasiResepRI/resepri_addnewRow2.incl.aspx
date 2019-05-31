
<!-- ---------------------------------
	ADDNEW ROW BEGIN HERE 
------------------------------------- -->
						
<asp:Panel ID="panelROPAddNewRow" Runat="server">

<TABLE width="100%">

	<TR class="rheader">
		<TD class="rheadercol" align="left" height="25">Edit/Tambah Data Resep</TD>
	</TR>						

	<TR>

		<td width="100%" valign=top>
			
			<asp:TextBox ID="txtCounter" Runat="Server" Visible="False">
			</asp:TextBox> 
																					
					<TABLE	cellSpacing="0" 
							cellPadding="5" 
							width="100%" 
							class=rBodyAddNew 
							bordercolordark=#98AAB1 >
					
						<tr>
							<td width="50%" valign="top">
								
								<TABLE width="100%" border=1 cellpadding=1 cellspacing=2 bgcolor=#98AAB1>
									
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<B>Lokasi</B>
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:DropDownList ID="ddlLokasi" Runat="server" Width="100%" />
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
										</TD>
										<td class=rBodyAddNewFld>&nbsp;
										</td>
									</tr>
									
									<asp:Panel id="PanelPilihResep" Runat="server">
									
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<B>Resep</B>
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:DropDownList ID="ddlR" Runat="server" Width="100%" AutoPostBack="True" />
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
															width="100%" />
										</TD>
										<td class=rBodyAddNewFld>
											<asp:CheckBox	id="chkJamin" 
															runat="server" 
															AutoPostBack="True" 
															Text="Dijamin" />
											<asp:CheckBox	id="chkNonStock" 
															runat="server" 
															Text="NonStock" 
															Enabled="False" 
															Visible="False" />
											<asp:RequiredFieldValidator id="rfv_AddNewRow_txtKodeBarang" 
																		runat="server" 
																		controlToValidate="AddNewRow_txtKodeBarang" 
																		errormessage="Kode Item harus diisi." 
																		display="dynamic" >**</asp:RequiredFieldValidator>
										</td>
									</tr>
									
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<B>Nama Item</B>
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:TextBox		id="AddNewRow_lblNamaBarang" 
																runat="server" 
																ReadOnly="True"
																width="100%" />
										</TD>
										<td class=rBodyAddNewFld>
											<asp:label id="AddNewRow_lbljamin" runat="server" width="100%" text="0" Visible="False" />
										</td>
									</tr>
									
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<B>Hitung Dalam</B>
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
											<B>Jumlah Obat/Satuan Kecil</B>
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox	id="AddNewRow_txtJumlahObat" 
															runat="server" 
															width="61%" 
															Text="0.00" 
															AutoPostBack="False"
															onchange="hitunghasiljs()" />
											<asp:textbox id="AddNewRow_Satuan" runat="server" width="37%" ReadOnly="True" />														
										</td>
										<td class=rBodyAddNewFld>&nbsp;
										</td>
									</tr>
									
								<asp:Panel id="pnlJmlKemasR" runat="server">
									
									<tr>
										<td width="35%" class=rBodyAddNewFld>
											<B>Jumlah R/</B>
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox	id="AddNewRow_txtJumlahR" 
															runat="server" 
															width="100%" 
															Text="0.00" 
															AutoPostBack="False" 
															onchange="hitunghasiljs()" />
										</td>
										<td class=rBodyAddNewFld>
											<asp:Label class="error" id="lblErrorJmlR" runat="server" width="100%" />
										</td>
									</tr>
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<B><asp:Label		 id="lbtnKodeKemasanR" 
																CausesValidation="False" 
																text="Embalace Racikan" 
																Runat="server" /></B>
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:DropDownList	id="AddNewRow_ddlKodeKemasanR" 
																runat="server" 
																AutoPostBack="False"
																width="100%" />
										</TD>
										<td class=rBodyAddNewFld style="display:none">
											<b><asp:label id="AddNewRow_lblNamaKemasanR" runat="server" /></b>
											&nbsp;/&nbsp;Harga :&nbsp;
											<b><asp:label id="AddNewRow_lblHargaKemasanR" runat="server" /></b>
										</td>
									</tr>
									
								</asp:Panel>								
									
								</table>
							
							</td>
							<td width="50%" valign="top">
							
								<TABLE width="100%" border=1 cellpadding=1 cellspacing=2 bgcolor=#98AAB1>
							
									<asp:Panel id="pnlJmlKemasO" runat="server">
								
									<tr>
										<td width="35%" class=rBodyAddNewFld>
											<B>Jumlah Embalace Obat</B>
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_txtJumlahO" runat="server" width="100%" Text="0.00" AutoPostBack="True" />
										</td>
										<td class=rBodyAddNewFld>&nbsp;
										</td>
									</tr>
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<B><asp:Label		id="lbtnKodeKemasanO" 
																CausesValidation="False" 
																text="Embalace Obat" 
																Runat="server" /></B>
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:DropDownList	id="AddNewRow_ddlKodeKemasanO" 
																runat="server" 
																AutoPostBack="False"
																width="100%" />
															
										</TD>
										<td class=rBodyAddNewFld style="display:none">
											<b><asp:label id="AddNewRow_lblNamaKemasanO" runat="server" /></b>
											&nbsp;/&nbsp;Harga :&nbsp;
											<b><asp:label id="AddNewRow_lblHargaKemasanO" runat="server" /></b>
										</td>
									</tr>
									
									</asp:Panel>
									<tr>
										<td width="35%" class=rBodyAddNewFld>
											<B>Hasil</B>
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<B><asp:Textbox id="AddNewRow_Hasil" runat="server" width="100%" text="0.00" ReadOnly="True" /></B>
										</td>
										<td class=rBodyAddNewFld>
											<asp:label id="AddNewRow_QtyStock" runat="server" width="100%" text="0.00" Visible="False" />
											<asp:Label class="error" id="lblError" runat="server" width="100%" />
										</td>
									</tr>
									
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<B>Qty Diminta</B>
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:TextBox	id="AddNewRow_txtQtyDitagih" 
															runat="server" 
															Text="0.00"
															AutoPostBack="False"
															width="100%" />
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
											<B>Tarif</B>
										</td>
										<td width="60%" class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_txtHarga" runat="server" Readonly="False" width="40%" Text="0.00" AutoPostBack="False" />
											<asp:textbox id="AddNewRow_txtSelisih" runat="server" Readonly="False" width="40%" Text="0.00" AutoPostBack="False" />											
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
											<B>Diskon %</B>
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_txtDiskon" runat="server" width="100%" Text="0.00" autopostback="False" readonly="true"/>
										</td>
										<td class=rBodyAddNewFld>											
											<asp:CompareValidator id="cvDiskon" runat="server" ControlToValidate="AddNewRow_txtDiskon" Operator="DataTypeCheck" Type="Double" ErrorMessage="Diskon" Display="Dynamic">** Harus diisi dengan angka **
											</asp:CompareValidator>
											<asp:RangeValidator id="rvDiskon" runat="server" ControlToValidate="AddNewRow_txtDiskon" MaximumValue="100.00" MinimumValue="0.00" Type="Double" ErrorMessage="Diskon" Display="Dynamic">** Angka melewati batas **
											</asp:RangeValidator>											
										</td>
									</tr>
								<asp:Panel id="pnlUangR" runat="server">
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<B>Uang R/</B>
										</TD>
										<TD width="40%" class=rBodyAddNewFld>
											<asp:DropDownList	id="AddNewRow_ddlUangR" 
																runat="server" 
																width="100%" 
																AutoPostBack="False" />
										</TD>
										<td class=rBodyAddNewFld style="display:none">
											&nbsp;/&nbsp;Harga :&nbsp;
											<b><asp:label id="AddNewRow_lblUangR" runat="server" /></b>
										</td>
									</tr>
								</asp:Panel>
									<tr style="display:none">
										<td width="35%" class=rBodyAddNewFld>
											<B>Total</B>
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_txtTotal" runat="server" Readonly="False" width="100%" Text="0.00" />
										</td>
										<td class=rBodyAddNewFld>&nbsp;
										</td>
									</tr>	
									
									<tr style="display:none">
										<td width="35%" class=rBodyAddNewFld>
											<B>Expired (dd-MM-yyyy)</B>
										</td>
										<td width="40%" class=rBodyAddNewFld>
											<asp:textbox id="AddNewRow_TglExpired" runat="server" width="100%"/>
										</td>
										<td class=rBodyAddNewFld>&nbsp;
										</td>
									</tr>								
									<tr>
										<TD width="35%" class=rBodyAddNewFld>
											<B><asp:linkbutton
													ID="lbtnAturanPakai"
													RUNAT="server"
													CAUSESVALIDATION="False"
													TEXT="Aturan Pakai">
												</asp:linkbutton></B>
										</TD>
										<TD width="55%" class=rBodyAddNewFld>
											<asp:TextBox	id="AddNewRow_txtAturanPakai" 
															runat="server" width="30%" AutoPostBack="True"/>
														
											<ASP:TextBox 
												ID="AddNewRow_lblAturanPakai" 
												RUNAT="server" width="69%" readonly="true">
											</ASP:TextBox>
										</TD>
										<TD class=rBodyAddNewFld>&nbsp;
										</TD>																
									</tr>	
					
								</TABLE>	
								
								<TABLE width="100%" align="left">
									<TR>
										<TD width="100%" align="left">
											<asp:Button id="btnAddNewRow" 
														runat="server" 
														text="Save" 
														CssClass=sbttn AccessKey="V" width="20%"></asp:Button>
											
											<asp:Button id="btnDone" 
														runat="server" text="Done" 
														CausesValidation="False" 
														CssClass=sbttn AccessKey="D" width="20%"></asp:Button>								
										</TD>
									</TR>
								</TABLE>
								
								<TR>
									<TD width="50%" align="left" colspan="2">
										<B>&nbsp;Labeling:&nbsp;&nbsp;
										<asp:Label	id="lblLabel" 
													runat="server" 
													width="100%"/>
										</B>
									</TD>
								</TR>							
								
								
							</td>
						</tr>	
											
						
					</TABLE>
					
					
		</td>
		
	</TR>	
	
	<TR bgcolor=White valign=bottom>
		<TD align="left" height="25">
			<p align=right><strong>Data yang sudah ada...</strong></p> 
		</TD>
	</TR> 
		
</TABLE>

</asp:Panel>
<!-- ---------------------------------
	ADDNEW ROW END HERE 
------------------------------------- -->

<DIV ID="oDialogItem" STYLE="display:none;">
	<asp:Label id="lblKadar" runat="server" />
	<asp:Label id="lblKdSatuan" runat="server" />
	<asp:Label id="lblSatuanKc" runat="server" />
	<asp:Label id="lblPotong" runat="server" />
</DIV>


