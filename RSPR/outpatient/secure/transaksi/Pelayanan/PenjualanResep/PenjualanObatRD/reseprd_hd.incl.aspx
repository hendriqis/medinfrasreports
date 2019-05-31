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
                        <asp:textbox id="txtNoResep" autopostback="true" runat="server" maxlength="15" width="95%"
                            cssclass="txtautogenerate" />
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <asp:label id="lblNoBuktiRd" text="No. Bukti IGD" runat="server" />
                    </td>
                    <td>
                        <asp:textbox id="txtNoBuktiRd" runat="server" width="95%" readonly="true" />
                        <asp:textbox id="txtNoBuktiMD" runat="server" width="95%" readonly="true" />
                        <asp:textbox id="txtKdLayan" runat="server" width="95%" visible="False" />
                    </td>
                </tr>
                <asp:panel id="pnlPMedis" runat="server">
					<TR>
						<TD width="30%">Penunjang Medis
						</TD>
						<TD>
							<asp:DropDownList id="ddlPMedis" Runat="server" Width="95%" enabled="false"></asp:DropDownList></TD>
					</TR>
				</asp:panel>
                <tr style="display: none;">
                    <td width="30%">
                        No. Order
                    </td>
                    <td>
                        <asp:textbox id="txtNoJO" runat="server" width="95%" visible="True" />
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        Tanggal Resep
                    </td>
                    <td>
                        <asp:textbox id="txtTanggal" runat="server" width="58%" readonly="False" />
                        <asp:textbox id="txtShift" runat="server" maxlength="1" width="10%" />
                        <asp:textbox id="txtJam" runat="server" maxlength="10" width="25%" readonly="True" />
                        <asp:requiredfieldvalidator id="rfvShift" runat="server" controltovalidate="txtShift"
                            errormessage="Shift harus diisi." display="dynamic">
												**
						</asp:requiredfieldvalidator>
                    </td>
                </tr>
                <asp:panel runat="server" id="pnlTxtResep" visible="false">
                    <tr>
                        <td>
                            Resep
                        </td>
                        <td>
                            <asp:TextBox id="txtResepPasien" runat="server" width="416" height="100" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                </asp:panel>
                <tr style="display: none;">
                    <td width="30%">
                        <asp:label id="lblNoreg" causesvalidation="False" text="No. Registrasi" runat="server" />
                    </td>
                    <td>
                        <asp:textbox id="txtNoReg" autopostback="true" runat="server" maxlength="15" width="95%"
                            readonly="True" />
                        <asp:textbox id="txtTglReg" runat="server" maxlength="10" width="95%" readonly="True"
                            style="display: none" />
                        <asp:requiredfieldvalidator id="rfvNoReg" runat="server" controltovalidate="txtNoReg"
                            errormessage="Nomor Registrasi harus diisi." display="dynamic">
												** 
						</asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr style="display: none;">
                    <td width="20%">
                        Alergi
                    </td>
                    <td>
                        <asp:textbox id="txtAlergiPasien" runat="server" width="95%" height="60px" forecolor="Navy"
                            font-size="12pt" readonly="True" textmode="MultiLine" />
                    </td>
                </tr>
                <tr style="display: none;">
                    <td width="30%">
                        &nbsp;
                    </td>
                    <td>
                        <span id="ttip" style="font-weight: bold; cursor: hand; color: green" onclick="richDialog()">
                            Informasi Pasien :<br />
                            <asp:label id="lbtnNamaPasienInfo" runat="server" text="AnthonieCh" />
                        </span>
                    </td>
                </tr>
            </table>
            <!--#Include File="InformasiPasienRD.incl.aspx"-->
        </td>
        <!-- ---------------------------------
			END LEFT SECTION
		------------------------------------- -->
        <!-- ---------------------------------
			RIGHT SECTION
		------------------------------------- -->
        <td width="50%" valign="top">
            <table width="100%">
                <tr style="display: none;">
                    <td width="30%">
                        Jenis Penjualan
                    </td>
                    <td>
                        <asp:dropdownlist id="ddlJenisPenjualan" runat="server" width="95%" enabled="False" />
                    </td>
                </tr>
                <tr style="display: none;">
                    <td width="30%">
                        Jenis Resep
                    </td>
                    <td>
                        <asp:dropdownlist id="ddlJenisResep" runat="server" width="95%" />
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        <asp:linkbutton id="lbtnDokter" causesvalidation="False" text="Dokter" runat="server" />
                    </td>
                    <td>
                        <asp:textbox id="txtKodeDokter" autopostback="true" runat="server" maxlength="10"
                            width="24%" />
                        <asp:textbox id="lblNamaDokter" runat="server" width="70%" readonly="true" />
                        <asp:requiredfieldvalidator id="rfvDokter" runat="server" controltovalidate="txtKodeDokter"
                            errormessage="Kode Dokter harus diisi." display="dynamic">
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
                        <asp:requiredfieldvalidator id="rfvGudang" runat="server" controltovalidate="txtKodeGudang"
                            errormessage="Kode Gudang" display="dynamic">
												** 
						</asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr style="display: none;">
                    <td width="30%">
                        Jenis Pasien
                    </td>
                    <td>
                        <asp:dropdownlist id="ddlJenisPasien" runat="server" width="95%" autopostback="True" />
                    </td>
                </tr>
                <asp:panel id="pnlInstansi" runat="server">
					<TR style="display:none;">
						<TD width="30%">
							<asp:LinkButton id="lbtnKodeInstansi" Runat="server" text="Instansi" CausesValidation="False" visible="false"></asp:LinkButton>Instansi
						</TD>
						<TD>
							<asp:TextBox id="lblKodePerusahaan" Runat="server" readonly="true" width="24%"></asp:TextBox>
							<asp:TextBox id="lblPerusahaan" Runat="server" readonly="true" width="70%"></asp:TextBox>
							<asp:RequiredFieldValidator id="rfvInstansi" runat="server" display="dynamic" errormessage="Instansi harus diisi."
								controlToValidate="lblKodePerusahaan">
												** 
						</asp:RequiredFieldValidator></TD>
					</TR>
				</asp:panel>
                <tr>
                    <td width="30%">
                        <asp:checkbox id="chkPosting" runat="server" enabled="False" visible="False" />
                    </td>
                    <td>
                        <asp:checkbox id="chkPPn" runat="server" autopostback="True" text="PPN" visible="False" />
                    </td>
                </tr>
                <tr style="display: none;">
                    <td width="20%">
                        Status Pasien
                    </td>
                    <td>
                        <asp:textbox id="txtStatusPasien" width="95%" height="24px" forecolor="Green" font-size="12pt"
                            runat="server" readonly="true" />
                    </td>
                </tr>
                <tr>
                    <td width="30%">
                        Tipe Penjualan Resep
                    </td>
                    <td>
                        <asp:dropdownlist id="ddlTipePenjualanResep" runat="server" width="95%" enabled="True" />
                    </td>
                </tr>
                <asp:panel runat="server" id="pnlTxtCatatanKlinis" visible="false">
                    <tr>
                        <td width="20%">
                            Catatan Klinis
                        </td>
                        <td>
                            <asp:textbox id="txtCatatanklinis" width="95%" height="24px" runat="server" readonly="true" />
                        </td>
                    </tr>
                </asp:panel>
            </table>
        </td>
        <!-- ---------------------------------
			RIGHT SECTION
		------------------------------------- -->
    </tr>
</table>
<!-- ---------------------------------
	HEADER END HERE 
------------------------------------- -->
