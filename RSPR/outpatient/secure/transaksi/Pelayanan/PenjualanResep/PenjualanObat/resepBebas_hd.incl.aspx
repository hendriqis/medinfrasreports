<!-- ---------------------------------
	HEADER BEGIN HERE 
------------------------------------- -->
<table width="100%">
    <tr>
        <!-- ---------------------------------
			LEFT SECTION
		------------------------------------- -->
        <td width="50%" valign="top">
            <table width="100%">
                <tr>
                    <td width="30%">
                        <asp:linkbutton id="lbtnNoResep" causesvalidation="False" text="No. Resep" runat="server" />
                    </td>
                    <td>
                        <asp:textbox id="txtNoResep" autopostback="true" runat="server" maxlength="15" width="95%" CssClass="txtautogenerate"/>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        Tanggal/Shift/Jam
                    </td>
                    <td>
                        <asp:textbox id="txtTanggal" runat="server" width="62%" readonly="True" />
                        <asp:textbox id="txtShift" runat="server" maxlength="1" width="10%" />
                        <asp:textbox id="txtJam" runat="server" maxlength="10" width="21%" readonly="True" />
                        <asp:requiredfieldvalidator id="rfvShift" runat="server" controltovalidate="txtShift"
                            errormessage="Shift harus diisi." display="dynamic">
							**
						</asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <asp:linkbutton id="lbtnKodeGudang" causesvalidation="False" text="Gudang" runat="server" />
                    </td>
                    <td>
                        <asp:textbox id="txtKodeGudang" autopostback="true" runat="server" maxlength="5"
                            width="24%" />
                        <asp:textbox id="lblNamaGudang" runat="server" width="70%" readonly="true" />
                        <asp:requiredfieldvalidator id="rfvGudang" runat="server" controltovalidate="lblNamaGudang"
                            errormessage="Kode Gudang" display="dynamic">
												** 
						</asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        
                    </td>
                    <td>
                        <asp:checkbox id="chkObatBebas" runat="server" text="Obat Bebas" autopostback="True" />
                        <asp:checkbox id="chkPosting" runat="server" enabled="False" visible="False" />
                        <asp:checkbox id="chkDiskon" runat="server" text="Diskon" autopostback="True" />
                        <asp:checkbox id="chkPPn" runat="server" autopostback="True" text="PPN" visible="False" />
                    </td>
                </tr>
            </table>
        </td>
        <!-- ---------------------------------
			END LEFT SECTION
		------------------------------------- -->
        <td width="50%" valign="top">
            <table width="100%">
                <tr>
                    <td width="30%">
                        Jenis Penjualan
                    </td>
                    <td>
                        <asp:dropdownlist id="ddlJenisPenjualan" runat="server" width="95%" enabled="False" />
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        Jenis Pasien
                    </td>
                    <td>
                        <asp:dropdownlist id="ddlJenisPasien" runat="server" width="95%" autopostback="True"
                            enabled="True" />
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        Tipe Penjualan Resep
                    </td>
                    <td>
                        <asp:dropdownlist id="ddlTipePenjualanResep" runat="server" width="95%" autopostback="True"
                            enabled="True" />
                    </td>
                </tr>
                <asp:panel id="pnlInstansi" runat="server">			
				<tr>
					<TD width="30%">
						<asp:LinkButton		id="lbtnKodeInstansi" 
											CausesValidation="False" 
											text="Instansi" 
											Runat="server" />
					</TD>
					<TD>
						<asp:TextBox	id="txtKodeInstansi" 
										autopostback="true"
										Runat="server" 
										MaxLength="5" 
										Width="24%" />
						<asp:TextBox    ID="lblNamaInstansi"
										Runat="server" 
										width="70%" 
										readonly="true"/>
						<asp:RequiredFieldValidator id="rfvInstansi" 
														runat="server" 
														controlToValidate="txtKodeInstansi" 
														errormessage="Instansi harus diisi." 
														display="dynamic">
													** 
						</asp:RequiredFieldValidator>
					</TD>
				</tr>	
				</asp:panel>
                <tr>
                    <td width="30%">
                        <asp:label id="lblDiskon" runat="server" font-size="8" text="Jenis Diskon" visible="false"></asp:label>
                    </td>
                    <td>
                        <asp:dropdownlist id="ddlJenisDiskon" runat="server" width="95%" autopostback="True"
                            enabled="True" visible="false" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<!-- ---------------------------------
	HEADER END HERE 
------------------------------------- -->
<asp:panel id="pnlResep" runat="server">

	<Table Width="100%" style="background-color: #EEEEEE; border-width: 1px; border-color: #2585F3; border-style: solid;" >
		<tr>
			<td Width="50%" valign="top">
				<Table width="100%">
					<asp:Panel id="pnlKaryawan" runat="server">
					<tr>
						<TD width="30%">
							<asp:linkbutton id="lbtnNIP" 
											Runat="server" 
											text="N.I.P." 
											CausesValidation="false">
							</asp:linkbutton>
						</TD>
						<TD>
							<asp:textbox	id="txtNIP" 
											Runat="server" 
											maxlength="25"
											Width="40%">
							</asp:textbox>
							<asp:LinkButton		id="lbtnTanggungan" 
								                Runat="server" 
								                Text="[Informasi Pegawai]" CausesValidation="False" visible="true" />
						</TD>
					</tr>
					
					<tr>
					    <TD width="30%">
						    Hubungan
					    </TD>
					    <TD>
						    <asp:DropDownList ID="ddlHubungan" Runat="server" Width="95%" AutoPostBack="True" Enabled="True"/>
					    </TD>
				    </tr>
					</asp:Panel>
					<tr>
						<TD width="30%">
							<asp:LinkButton id="lbtnNoRM" runat="server" text="No. Rekam Medis" CausesValidation="False" />
						</TD>
						<TD>
							<ew:maskedTextBox	id="txtNoRM" 
											runat="server" 
											AutoPostBack="True" 								
											Width="95%" />							
						</TD>
						
					</tr>
					<tr>
						<TD width="30%">
							Nama Pasien
						</TD>
						<TD>
							<asp:TextBox	id="txtNama" 
											Runat="server" 
											MaxLength="50" 
											Width="95%" />
							<asp:RequiredFieldValidator id="rfvNama" 
														runat="server" 
														controlToValidate="txtNama" 
														errormessage="Nama harus diisi." 
														display="dynamic">
													** 
							</asp:RequiredFieldValidator>
						</TD>
						
					</tr>
					
					<tr>
						<TD width="30%">
							Alamat
						</TD>
						<TD>
							<asp:TextBox	id="txtAlamat" 
											Runat="server" 
											MaxLength="50" 
											Width="95%" />
						</TD>						
					</tr>
					
					<tr>
						<TD width="30%">
							Jenis Kelamin
						</TD>
						<TD>
							<asp:DropDownList	id="ddlKdSeks" 
												Runat="server" 
												Width="95%" />
						</TD>						
					</tr>
					
					<TR>
						<TD width="30%">
							Tgl. Lahir/Umur
						</TD>
						<TD>
							<asp:TextBox	id="txtTglLahir" 
											Runat="server" 
											MaxLength="10" 
											Width="40%" 
											AutoPostBack="True"/>
							<asp:textbox	id="txtUmurTahun" 
											runat="server" 
											MaxLength="3" 
											AutoPostBack="True" 
											Width="30">
							</asp:textbox>&nbsp;&nbsp;Tahun&nbsp;&nbsp;
							<asp:textbox	id="txtUmurBulan" 
											runat="server" 
											MaxLength="2" 
											AutoPostBack="True" 
											Width="30">
							</asp:textbox>&nbsp;&nbsp;Bulan&nbsp;&nbsp;
							<asp:textbox	id="txtUmurHari" 
											runat="server" 
											MaxLength="2" 
											AutoPostBack="True" 
											Width="30">
							</asp:textbox>&nbsp;&nbsp;Hari
							<asp:RequiredFieldValidator id="rfvTglLahir" 
														runat="server" 
														controlToValidate="txtTglLahir" 
														errormessage="Tgl. Lahir harus diisi." 
														display="dynamic">
													** 
							</asp:RequiredFieldValidator>
						</TD>
					</TR>					
				</Table>
			</TD>
			
			<td width="50%" valign="top">
				<table width="100%">						
					
					<tr>
						<TD width="30%">
							Jenis Resep
						</TD>
						<TD>
							<asp:DropDownList ID="ddlJenisResep" Runat="server" Width="95%" Autopostback="true"/>
						</TD>
					</tr>

									
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
							<asp:TextBox    ID="lblNamaDokter"
											Runat="server" width="70%" 
											readonly="true"/>
							
						</TD>
					</tr>

					<tr>
						<TD width="30%">Dokter Luar
							
						</TD>
						<TD>
						<asp:TextBox	id="txtDokterLuar" 
										Runat="server" 
										MaxLength="50" 
										Width="95%" />
						
						</TD>
					</tr>					
				
					<tr>
						<TD width="30%">
							Lokasi Pembayaran
						</TD>
						<TD>
							<asp:DropDownList ID="ddlLokPemb" Runat="server" Width="95%" enabled="True"/>							
						</TD>
					</tr>	
					
					<tr style="display:none">
						<TD width="30%">
							Keterangan
						</TD>
						<TD>
							<asp:TextBox ID="txtKeterangan" Runat="server" Width="95%" />							
						</TD>
					</tr>
					
				</table>
			</td>
			
		</tr>

	</Table>

</asp:panel>
