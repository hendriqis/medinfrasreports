<asp:Panel id="panelReturAddNewRow" Runat="server">
	<table width="100%">
		<tr>
			<td>
				<TABLE class="rBodyAddNew" cellSpacing="0" borderColorDark="#98aab1" cellPadding="5" width="100%">
					<TR class="rheader">
						<TD class="rheadercol" align="left" height="25">Edit atau Tambah Item Retur Pembelian Tunai
						</TD>
					</TR>
					<TR>
						<TD>
							<TABLE cellSpacing="1" cellPadding="1" width="100%">
								<TR>
									<TD class="rBodyAddNewFld" width="20%">
									</TD>
									<TD class="rBodyAddNewFld" width="50%">
										<asp:CheckBox	id="Retur_AddNewRow_chkNonMaster" 
														runat="server" 
														Text="Non Master" 
														enabled="False">
										</asp:CheckBox>
									</TD>
									<TD class="rBodyAddNewFld">&nbsp;
									</TD>
								</TR>
								<TR style="display:none">
									<TD class="rBodyAddNewFld" width="20%">
										<asp:linkbutton id="lBtnCounter" 
														Runat="server" 
														text="Counter" 
														CausesValidation="False">
										</asp:linkbutton>
									</TD>
									<TD class="rBodyAddNewFld" width="50%">
										<asp:TextBox	id="Retur_AddNewRow_txtCounter" 
														runat="server" 
														Visible="True" 
														width="95%" 
														Enabled="True" 
														ReadOnly="True">
										</asp:TextBox>																			
									</TD>
									<TD class="rBodyAddNewFld">&nbsp;
									</TD>
								</TR>																		
								<TR>
									<TD class="rBodyAddNewFld" width="20%">Kode Item
									</TD>
									<TD class="rBodyAddNewFld" width="50%">
										<asp:TextBox	id="Retur_AddNewRow_txtKodeItem" 
														runat="server" 
														width="95%" 
														Enabled="True" readonly="True"></asp:TextBox>
									</TD>
									<TD class="rBodyAddNewFld">&nbsp;
									</TD>
								</TR>
								<TR>
									<TD class="rBodyAddNewFld" width="20%">Nama Item
									</TD>
									<TD class="rBodyAddNewFld" width="40%">
										<asp:TextBox	id="Retur_AddNewRow_txtNamaItem" 
														runat="server" 
														ReadOnly="True" 
														width="95%"></asp:TextBox>
									</TD>
									<TD class="rBodyAddNewFld">
										<asp:CheckBox	id="chkNonStock" 
														runat="server" 
														Text="NonStock" 
														Enabled="False" 
														Visible="False" />
									</TD>
								</TR>
								<TR>
									<TD class="rBodyAddNewFld" width="20%">Kuantitas
									</TD>
									<TD class="rBodyAddNewFld" width="50%">
										<asp:TextBox	id="Retur_AddNewRow_txtKuantitas" 
														runat="server" 
														MaxLength="10" 
														width="95%"></asp:TextBox>
									</TD>
									<TD class="rBodyAddNewFld">
										<asp:TextBox	id="AddNewRow_QtyStock" 
														runat="server" 
														width="95%" 
														text="0.00" 
														Visible="False" 
														ReadOnly="True"/>
										<asp:Label class="error" id="lblError" runat="server" width="100%" />
									</TD>
								</TR>
								<TR>
									<TD class="rBodyAddNewFld" width="20%">Satuan
									</TD>
									<TD class="rBodyAddNewFld" width="50%">
										<asp:DropDownList	id="Retur_AddNewRow_DdlSatuan" 
															runat="server" 
															width="95%" 
															Enabled="True" 
															autopostback="True"></asp:DropDownList>
									</TD>
									<TD class="rBodyAddNewFld">&nbsp;
									</TD>
								</TR>
								<TR>
									<TD class="rBodyAddNewFld" width="20%">Faktor
									</TD>
									<TD class="rBodyAddNewFld" width="50%">
										<asp:TextBox	id="Retur_AddNewRow_txtFaktor" 
														runat="server" 
														MaxLength="10" 
														width="95%" 
														Text="1" 
														Enabled="True" 
														ReadOnly="True"></asp:TextBox>
									</TD>
									<TD class="rBodyAddNewFld">&nbsp;
									</TD>
								</TR>																		
								<TR>
									<TD class="rBodyAddNewFld" width="20%">Harga
									</TD>
									<TD class="rBodyAddNewFld" width="50%">
										<asp:TextBox	id="Retur_AddNewRow_txtharga" 
														runat="server" 
														width="95%" 
														Enabled="True"></asp:TextBox>
									</TD>
									<TD class="rBodyAddNewFld">&nbsp;
									</TD>
								</TR>
								<TR>
									<TD class="rBodyAddNewFld" width="20%">Diskon %
									</TD>
									<TD class="rBodyAddNewFld" width="50%">
										<asp:TextBox	id="Retur_AddNewRow_txtDiskonPc" 
														runat="server" 
														MaxLength="6" 
														width="95%"></asp:TextBox>
									</TD>
									<TD class="rBodyAddNewFld">
										<asp:RangeValidator id="rvDiskonPc" 
															runat="server" 
															ControlToValidate="Retur_AddNewRow_txtDiskonPc" 
															MaximumValue="100.00" 
															MinimumValue="0.00" 
															Type="Double" 
															ErrorMessage="Diskon %" 
															Display="Dynamic">** Angka melewati batas **
										</asp:RangeValidator>
										<asp:CompareValidator	id="cvDiskonPc" 
																runat="server" 
																ControlToValidate="Retur_AddNewRow_txtDiskonPc" 
																Operator="DataTypeCheck" 
																Type="Double" 
																ErrorMessage="Diskon %" 
																Display="Dynamic">** Harus diisi dengan angka **
										</asp:CompareValidator>
									</TD>
								</TR>
								<TR style="display:none">
									<TD class="rBodyAddNewFld" width="20%">Expired 
									</TD>
									<TD class="rBodyAddNewFld" width="50%">
										<asp:TextBox	id="Retur_AddNewRow_txtExpired" 
														runat="server" 
														width="95%" 
														Enabled="True" 
														ReadOnly="True"></asp:TextBox>
									</TD>
									<TD class="rBodyAddNewFld">&nbsp;
									</TD>
								</TR>
								<TR style="display:none">
									<TD class="rBodyAddNewFld" width="20%">No. Batch
									</TD>
									<TD class="rBodyAddNewFld" width="50%">
										<asp:TextBox	id="Retur_AddNewRow_txtNoBatch" 
														runat="server" 
														width="95%" 
														Enabled="True" 
														ReadOnly="True"></asp:TextBox>
									</TD>
									<TD class="rBodyAddNewFld">&nbsp;
									</TD>
								</TR>
							</TABLE>
							<TABLE width="100%">
								<TR>
									<TD>
										<asp:Button id="Retur_btnAddNewRow" 
													runat="server" 
													text="Save" 
													CssClass="sbttn" 
													width="100" 
													AccessKey="V"></asp:Button>									
										<asp:Button id="Retur_btnDone" 
													runat="server" 
													text="Done" 
													CausesValidation="False" 
													CssClass="sbttn" 
													width="100" 
													AccessKey="D"></asp:Button>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR vAlign="bottom" bgColor="white">
						<TD align="left" height="25">
							<P align="right">Data yang sudah ada...
							</P>
						</TD>
					</TR>
				</TABLE>
			</td>
		</tr>
	</table>
</asp:Panel>