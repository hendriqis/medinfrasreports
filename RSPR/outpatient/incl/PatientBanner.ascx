<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="PatientBanner.ascx.vb"
    Inherits="QIS.PatientBanner" %>
<link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet" />
<table width="100%" cellpadding="2" cellspacing="0" class="patientbanner">
    <tr>
        <td valign="top">
            <asp:Panel ID="pnlTriage" runat="server" BackColor="black" Width="14" Height="14">&nbsp;</asp:Panel>
        </td>
        <td align="left" valign="top">
            <img id="imgPatient" runat="server" border="0" align="absmiddle" alt="" width="60"
                src="/qislib/images/patient.png" />
        </td>
        <td valign="top" width="90%">
            <table width="100%">
                <tr>
                    <td class="txtstrong" colspan="2">
                        <asp:Label ID="lblNamaPasien" runat="server" Text="Nama Pasien" />
                    </td>
                    <td class="txtstrong" colspan="2">
                        <asp:Label ID="lblRegistrationNo" runat="server" />
                        &nbsp;|&nbsp;
                        <font class="txtlessstrong"><asp:Label ID="lblNoJobOrder" runat="server" /></font>
                    </td>
                    <td class="txtstrong" colspan="2">
                        <asp:Label ID="lblNamaPenunjangMedis" runat="server" Text="Penunjang Medis" />
                    </td>                    
                    <td class="txtstrong" colspan="2" style="text-align: right;">
                        <asp:Label ID="lblNamaDokter" runat="server" Text="Nama Dokter" />
                    </td>
                </tr>
                <tr>
                    <td class="txtlessstrong" style="font-style: italic; width: 80px; text-align: right;">
                        No. RM
                    </td>
                    <td class="txtlessstrong" style="width: 150px; color: #000000;">
                        <asp:Label ID="lblNoRM" runat="server" />
                    </td>
                    <td class="txtlessstrong" style="font-style: italic; width: 80px; text-align: right;">
                        Tanggal Lahir
                    </td>
                    <td class="txtlessstrong" style="width: 150px; color: #000000;">
                        <asp:Label ID="lblTglLahir" runat="server" />
                    </td>
                    <td class="txtlessstrong" style="font-style: italic; width: 80px; text-align: right;">
                        Tanggal - Jam
                    </td>
                    <td class="txtlessstrong" style="width: 300px; color: #000000;">
                        <asp:Label ID="lblTglRegistrasi" runat="server" />&nbsp;-&nbsp;
                        <asp:Label ID="lblJamRegistrasi" runat="server" />
                    </td>
                    <td class="txtlessstrong" style="text-align: right;">
                        <asp:Label ID="lblSMF" runat="server" Text="SMF" />
                    </td>
                </tr>
                <tr>
                    <td class="txtlessstrong" style="font-style: italic; width: 80px; text-align: right;
                        color: red;">
                        Alergi
                    </td>
                    <td class="txtlessstrong" style="width: 150px; color: red;">
                        <asp:Label ID="lblAlergi" runat="server" />
                    </td>
                    <td class="txtlessstrong" style="font-style: italic; width: 80px; text-align: right;">
                        Umur
                    </td>
                    <td class="txtlessstrong" style="width: 150px; color: #000000;">
                        <asp:Label ID="lblUmurTahun" runat="server" />&nbsp;thn&nbsp;
                        <asp:Label ID="lblUmurBulan" runat="server" />&nbsp;bln&nbsp;
                        <asp:Label ID="lblUmurHari" runat="server" />&nbsp;hr&nbsp;
                    </td>
                    <td class="txtlessstrong" style="font-style: italic; width: 80px; text-align: right;">
                        Pengirim
                    </td>
                    <td class="txtlessstrong" style="width: 300px; color: #000000;">
                        <asp:Label ID="lblPengirim" runat="server" />
                    </td>
                    <td class="txtlessstrong" style="text-align: right;">
                        <asp:Panel ID="pnlInfoKelasRawat" runat="server">
                            <font style="font-style: italic;">Kelas Rawat - Tagihan</font>&nbsp; <font style="color: #000000;">
                                <asp:Label ID="lblNamaKelas" runat="server" />
                                |
                                <asp:Label ID="lblNamaKelasCharge" runat="server" /></font>
                        </asp:Panel>
                        <asp:Panel ID="pnlInfoUnitNonInpatient" runat="server">
                            <asp:Label ID="lblNamaUnit" runat="server"></asp:Label>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="txtlessstrong" style="font-style: italic; width: 80px; text-align: right;">
                        Catatan
                    </td>
                    <td class="txtlessstrong" style="width: 150px; color: #000000;">
                        <asp:Label ID="lblCatatan" runat="server" />
                    </td>
                    <td class="txtlessstrong" style="font-style: italic; width: 80px; text-align: right;">
                        Jenis Kelamin
                    </td>
                    <td class="txtlessstrong" style="width: 150px; color: #000000;">
                        <asp:Label ID="lblJenisKelamin" runat="server" />
                    </td>
                    <td class="txtlessstrong" style="font-style: italic; width: 80px; text-align: right;">
                        Penjamin
                    </td>
                    <td class="txtlessstrong" style="width: 300px; color: #000000;">
                        <asp:Label ID="lblPenjamin" runat="server" />
                    </td>
                    <td class="txtlessstrong" style="text-align: right;">
                        <asp:Panel ID="pnlInfoRuangRawat" runat="server">
                            <font style="color: #000000;">
                                <asp:Label ID="lblNamaRuang" runat="server" />
                                |
                                <asp:Label ID="lblNoTT" runat="server" />
                                |
                                <asp:Label ID="lblHariRawat" runat="server" />&nbsp;hari</font>
                        </asp:Panel>
                        <asp:Panel ID="pnlJenisKunjungan" runat="server">
                            <font style="font-style: italic;">Jenis Kunjungan</font>&nbsp; <font style="color: #000000;">
                                <asp:Label ID="lblJenisKunjungan" runat="server"></asp:Label>
                            </font>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </td>
        <td align="right" valign="top">
            <img id="imgDoctor" src="/qislib/images/physician.png" border="0" align="absmiddle"
                alt="" width="60" />
        </td>
    </tr>
</table>
