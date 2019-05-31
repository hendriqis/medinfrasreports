<!-- ---------------------------------
	HEADER BEGIN HERE 
------------------------------------- -->
<TABLE width="100%">

	<TR>

		<!-- ---------------------------------
			LEFT SECTION
		------------------------------------- -->
		<td width="50%" valign=top>
			
			
			<table width="100%">
			
				<tr>
					<TD width="30%">
						<asp:Label		id="lblNoBuktiRi" 
										text="No. Bukti Rawat Inap" 
										Runat="server" />
						
					</TD>
					<TD>
						<asp:TextBox	id="txtNoBuktiRi" 
										Runat="server" 
										Width="95%" 
										Readonly="true"/>
					</TD>
				</tr>
			
				<tr>
					<TD width="30%">
						<asp:LinkButton id="lbtnNoResep" 
										CausesValidation="False" 
										text="No. Resep" 
										Runat="server" />
					</TD>
					<TD>
						<asp:TextBox	id="txtNoResep" 
										autopostback="true"
										Runat="server" 
										MaxLength="15" 
										Width="95%" />
					</TD>
				</tr>
				
				<tr>
					<TD width="30%">
						<asp:LinkButton id="lbtnNoBuktiResep" 
										CausesValidation="False" 
										text="No. Bukti" 
										Runat="server" />
					</TD>
					<TD>
						<asp:TextBox	id="txtNoBuktiResep" 
										autopostback="true"
										Runat="server" 
										Width="95%" />
					</TD>
				</tr>
				
				<tr>
					<TD width="30%">
						Tanggal
					</TD>
					<TD>									
						<asp:TextBox	id="txtTanggal"
										runat="server" 
										Width="58%"
										ReadOnly="True" />	
						<asp:TextBox	id="txtShift" 
										Runat="server" 
										MaxLength="1" 
										Width="10%" />					
						<asp:TextBox	id="txtJam" 
										Runat="server" 
										MaxLength="10" 
										Width="25%" 
										ReadOnly="True" />	
						<asp:RequiredFieldValidator id="rfvShift" 
													runat="server" 
													controlToValidate="txtShift" 
													errormessage="Shift harus diisi." 
													display="dynamic">
												**
						</asp:RequiredFieldValidator>	
					</TD>
				</tr>			
				
				
				
				<tr>
					<TD width="30%">
						<asp:Label		id="lblNoreg" 
										text="No. Registrasi" 
										Runat="server" />
						
					</TD>
					<TD>
						<asp:TextBox	id="txtNoReg" 
										autopostback="true"
										Runat="server" 
										MaxLength="15"
										Width="95%" />
						<asp:RequiredFieldValidator id="rfvNoReg" 
													runat="server" 
													controlToValidate="txtNoReg" 
													errormessage="Nomor Registrasi harus diisi." 
													display="dynamic">
												** 
						</asp:RequiredFieldValidator>
					</TD>
				</tr>
				
				<tr>
					<TD width="30%">&nbsp;
					</TD>
					<TD>
						<span id="ttip" style="color:green; cursor:hand;" onclick="richDialog()">
							Informasi Pasien :<br />
							<asp:Label ID="lbtnNamaPasienInfo" Runat="server" /> 
						</span> 
					</TD>
				</tr>
			
			</table>
			
			<!--#Include File="InformasiPasienRI2.incl.aspx"-->
			
		</td>
		<!-- ---------------------------------
			END LEFT SECTION
		------------------------------------- -->
		
		<!-- ---------------------------------
			RIGHT SECTION
		------------------------------------- -->
		<td width="50%" valign=top>	
		
			<table width="100%">	
			
				<tr style="display:none">
					<TD width="30%">
						Jenis Penjualan
					</TD>
					<TD>
						<asp:DropDownList ID="ddlJenisPenjualan" Runat="server" Width="95%" Enabled="False"/>
					</TD>
				</tr>		
				
				<tr style="display:none">
					<TD width="30%">
						Jenis Pasien
					</TD>
					<TD>
						<asp:DropDownList ID="ddlJenisPasien" Runat="server" Width="95%" AutoPostBack="True" />
					</TD>
				</tr>				
				
				<asp:Panel id="pnlInstansi" runat="server">
				<tr>
					<td width="30%">
						<asp:LinkButton		id="lbtnKodeInstansi" 
											CausesValidation="False" 
											text="Instansi" 
											Runat="server" />
					</td>
					<td>
						<asp:TextBox ID="lblKodePerusahaan" Runat="server" ReadOnly="False" width="24%"/>
						<asp:TextBox ID="lblPerusahaan" Runat="server" width="70%" readonly="true"/>
						<asp:RequiredFieldValidator id="rfvInstansi" 
													runat="server" 
													controlToValidate="lblKodePerusahaan" 
													errormessage="Instansi harus diisi." 
													display="dynamic">
												** 
						</asp:RequiredFieldValidator>
					</td>
				</tr>	
				</asp:Panel>
				
				<tr>
					<TD width="30%">
						<asp:LinkButton id="lbtnDokter" 
										CausesValidation="False" 
										text="Dokter" 
										Runat="server" />
					</TD>
					<TD>
						<asp:TextBox	id="txtKodeDokter" 
										autopostback="true"
										Runat="server" 
										MaxLength="10" 
										Width="24%" />
						<asp:TextBox      ID="lblNamaDokter"
										Runat="server" width="70%" readonly="true"/>
						<asp:RequiredFieldValidator id="rfvDokter" 
													runat="server" 
													controlToValidate="txtKodeDokter" 
													errormessage="Kode Dokter harus diisi." 
													display="dynamic">
												** 
						</asp:RequiredFieldValidator>
					</TD>
				</tr>
				
				<tr>
					<TD width="30%">
						<asp:LinkButton		id="lbtnKodeGudang" 
											CausesValidation="False" 
											text="Kode Gudang" 
											Runat="server" />
					</TD>
					<TD>
						<asp:TextBox	id="txtKodeGudang" 
										autopostback="true"
										Runat="server" 
										MaxLength="5" 
										Width="24%" />
						
						<asp:TextBox      ID="lblNamaGudang"
										Runat="server" width="70%" readonly="true"/>
						<asp:RequiredFieldValidator id="rfvGudang" 
													runat="server" 
													controlToValidate="lblNamaGudang" 
													errormessage="Kode Gudang" 
													display="dynamic">
												** 
						</asp:RequiredFieldValidator>
					</TD>
				</tr>
				
				<tr>
					<TD width="30%">
						Lokasi Pembayaran
					</TD>
					<TD>
						<asp:DropDownList	ID="ddlLokPemb" 
											Runat="server" 
											Width="95%"/> 
					</TD>
				</tr>	
				
				<TR style="display:none">
					<TD width="30%">
						<asp:Label id="lblJenisPembayaran" text="Jenis Pembayaran" Runat="server">
						</asp:Label>
					</TD>
					<TD>
						<asp:DropDownList	id="ddlJenisPembayaran" 
											Runat="server" 
											Width="95%" 
											AutoPostBack="True"/>
					</TD>
				</TR>
				
				<tr>
					<TD width="30%">
						<asp:CheckBox id="chkPosting" runat="server" Enabled="False" visible="false"/>
					</TD>
					<TD>
						<asp:CheckBox id="chkPPn" runat="server" AutoPostBack="True" Text="PPN"/>
					</TD>
				</tr>
			
			</table>
			
		</td>
		<!-- ---------------------------------
			RIGHT SECTION
		------------------------------------- -->
		
	</TR>
		
</TABLE>
<!-- ---------------------------------
	HEADER END HERE 
------------------------------------- -->
