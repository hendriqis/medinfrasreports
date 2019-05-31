		<asp:Panel id="pnlEditWorkListAppointment" Runat="server">
			<TABLE class="rBodyAddNew" cellSpacing="0" borderColorDark="#98aab1" cellPadding="5" width="100%">
				<TR class="rheader">
					<TD class="rheadercol" align="left" height="25">Work List Baru</TD>
				</TR>
				<TR>
					<TD>
						<TABLE cellSpacing="0" cellPadding="5" width="100%">
							<TR>
								<TD>									
									<TABLE class="rBodyAddNew" cellSpacing="0" borderColorDark="#98aab1" cellPadding="5" width="100%">
										<TR>
											<TD width="100%">
												<TABLE cellSpacing="1" cellPadding="1" width="100%" border="0">
													<TR>
														<TD vAlign="top" width="100%">
															<TABLE cellSpacing="0" cellPadding="1" width="100%" border="0">
																<TR>
																	<TD vAlign="top" width="50%">
																		<TABLE cellSpacing="0" cellPadding="1" width="100%" border="0">
																			<TR>
																				<TD class="rBodyAddNewFld" width="23%">No. Order
																				</TD>
																				<TD class="rBodyAddNewFld" width="60%">
																					<asp:TextBox id="txtNoJO" runat="server" width="30%" enabled="False"></asp:TextBox>																					
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>
																			<TR>
																				<TD class="rBodyAddNewFld" width="20%">Tanggal Order
																				</TD>
																				<TD class="rBodyAddNewFld" width="60%">
																					<asp:TextBox id="txtTglOrder" runat="server" width="30%" enabled="False"></asp:TextBox></TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>																			
																			<TR>
																				<TD class="rBodyAddNewFld" width="20%">Asal pasien
																				</TD>
																				<TD class="rBodyAddNewFld" width="60%">
																					<asp:DropDownList id="ddlAsalPasienApp" runat="server" width="100%" enabled="False"></asp:DropDownList></TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>
																			<TR>
																				<TD class="rBodyAddNewFld" width="20%">Unit Asal Order
																				</TD>
																				<TD class="rBodyAddNewFld" width="60%">
																					<asp:TextBox id="txtKdUnit" runat="server" width="28%" ReadOnly="True"></asp:TextBox>
																					<asp:TextBox id="txtNmUnit" runat="server" width="70%" ReadOnly="True"></asp:TextBox></TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>
																			<TR>
																				<TD class="rBodyAddNewFld" width="20%">Penunjang Medis
																				</TD>
																				<TD class="rBodyAddNewFld" width="60%">
																					<asp:TextBox id="txtKdPMedis" runat="server" width="28%" ReadOnly="True"></asp:TextBox>
																					<asp:TextBox id="txtNmPMedis" runat="server" width="70%" ReadOnly="True"></asp:TextBox></TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>
																			<TR>
																				<TD class="rBodyAddNewFld" width="20%">Jam Rencana Realisasi<font color="red"> *</font>
																				</TD>
																				<TD class="rBodyAddNewFld" width="60%">
																					<ew:maskedTextBox id="txtJamRencana" runat="server" AutoPostBack="false" Width="30%"></ew:maskedTextBox></TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																				<TD class="rBodyAddNewFld">
																					<asp:RequiredFieldValidator		id="rfvAddNewRowPelayanan_JamRencana" 
																													runat="server" 
																													display="dynamic" 
																													errormessage="Jam Rencana Realisasi"
																													controlToValidate="txtJamRencana">** 
																					</asp:RequiredFieldValidator>
																				</TD>
																			</TR>
																			<TR>
																				<TD class="rBodyAddNewFld" width="20%">Catatan Klinis
																				</TD>
																				<TD class="rBodyAddNewFld" width="60%">
																					<asp:TextBox id="txtCatatanKlinis" runat="server" width="100%" TextMode="MultiLine"
																						height="50"></asp:TextBox></TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>
																		</TABLE>
																	</TD>
																	<TD vAlign="top" width="50%">
																		<TABLE cellSpacing="0" cellPadding="1" width="100%">
																			<TR>
																				<TD class="rBodyAddNewFld" width="23%">
																					<asp:LinkButton	id="lbtnNomorRekamMedis"
																									runat="server"
																									text="No. Rekam Medis"
																									CausesValidation="False" />
																				</TD>
																				<TD class="rBodyAddNewFld" width="60%">
																					<asp:TextBox	id="txtNoRM" 
																										runat="server" 
																										AutoPostBack="True" 								
																										Width="100%" />
																				</TD>
																				<TD class="rBodyAddNewFld">
																					<asp:RequiredFieldValidator		id="rfvAddNewRowPelayanan_NoRM" 
																													runat="server" 
																													display="dynamic" 
																													errormessage="No. Rekam Medis"
																													controlToValidate="txtNoRM">** 
																					</asp:RequiredFieldValidator>
																				</TD>
																			</TR>																			
																			<TR>
																				<TD class="rBodyAddNewFld" width="15%">Nama Pasien<font color="red"> *</font>
																				</TD>
																				<TD class="rBodyAddNewFld" width="40%">
																					<asp:TextBox id="txtNmPasien" runat="server" width="100%"></asp:TextBox></TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>
																			<TR>
																				<TD class="rBodyAddNewFld" width="15%">Marga Pasien
																				</TD>
																				<TD class="rBodyAddNewFld" width="40%">
																					<asp:TextBox id="txtMargaPasien" runat="server" width="100%"></asp:TextBox>
																				</TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>
																			<TR>
																				<TD class="rBodyAddNewFld" width="15%">Jenis Kelamin
																				</TD>
																				<TD class="rBodyAddNewFld" width="40%">
																					<asp:dropdownlist id="ddlJenisKelamin" runat="server" width="28.5%"></asp:dropdownlist></TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>
																			<TR>
																				<TD class="rBodyAddNewFld" width="15%">Tanggal Lahir
																				</TD>
																				<TD class="rBodyAddNewFld" width="40%">
																					<MODULE:webcal id="calTglLahir" runat="server" dontresetdate="true" OnUpdate="calAge"></MODULE:webcal>
																					<asp:TextBox id="txtTglLahir" autopostback="true" width="50%" Runat="server" ReadOnly="True" visible="false"
																						MaxLength="10"></asp:TextBox></TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>
																			<TR>
																				<TD class="rBodyAddNewFld" width="15%">Umur
																				</TD>
																				<TD class="rBodyAddNewFld" width="40%">
																					<asp:textbox id="txtUmurTahun" runat="server" MaxLength="3" ReadOnly="False" Width="30" AutoPostBack="False"></asp:textbox>&nbsp;&nbsp;Tahun&nbsp;&nbsp;
																					<asp:textbox id="txtUmurBulan" runat="server" MaxLength="2" ReadOnly="False" Width="30" AutoPostBack="False"></asp:textbox>&nbsp;&nbsp;Bulan&nbsp;&nbsp;
																					<asp:textbox id="txtUmurHari" runat="server" MaxLength="2" ReadOnly="False" Width="30" AutoPostBack="False"></asp:textbox>&nbsp;&nbsp;Hari
																				</TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>																				
																			<TR>
																				<TD class="rBodyAddNewFld" width="15%">No. Telepon<font color="red"> *</font>
																				</TD>
																				<TD class="rBodyAddNewFld" width="40%">																					
																					<asp:TextBox id="txtNoTelpon" runat="server" width="100%" ReadOnly="False"></asp:TextBox>
																				</TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>
																			<TR>
																				<TD class="rBodyAddNewFld" width="15%">No. HP
																				</TD>
																				<TD class="rBodyAddNewFld" width="40%">																					
																					<asp:TextBox id="txtNoHP" runat="server" width="100%" ReadOnly="False"></asp:TextBox>
																				</TD>
																				<TD class="rBodyAddNewFld">&nbsp;
																				</TD>
																			</TR>																																		
																		</TABLE>
																	</TD>
																</TR>
															</TABLE>
														</TD>
													</TR>													
												</TABLE>
											</TD>
										</TR>
										<TR>
											<TD>
												<TABLE width="100%">
													<TR>
														<TD width="5%">
															<asp:Button class="sbttn" id="btnSaveApp" runat="server" width="100" CausesValidation="False"
																text="Save"></asp:Button></TD>
														<TD width="5%">
															<asp:Button class="sbttn" id="btnCancel" runat="server" width="100" CausesValidation="False"
																text="Close"></asp:Button></TD>
														<TD></TD>
													</TR>
												</TABLE>
											</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</asp:Panel>
	