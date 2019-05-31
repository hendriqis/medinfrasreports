<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="Copyright" Src="../../../../../incl/copyRightModule.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ResepRi_SelReg2.aspx.vb"
    Inherits="QIS.Web.secure.transaksi.Pelayanan.PenjualanResep.InformasiResepRI.ResepRi_SelReg2" %>

<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../../incl/calendarModule2.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Informasi Resep Pasien Rawat Inap</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <meta http-equiv="refresh" content="60" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="frmResepRiSelReg" runat="server">
    <table border="0" width="100%" height="100%" cellspacing="2" cellpadding="1">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td width="100%" height="100%" valign="top">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td style="padding-top: 5px" align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Informasi Resep Pasien Rawat Inap
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td align="left" height="25">
                                            <table width="100%">
                                                <tr>
                                                    <td width="15%">
                                                        Data Filter
                                                    </td>
                                                    <td width="10%">
                                                        <asp:RadioButton runat="server" ID="rbtnTgl" Text="Per Tanggal" AutoPostBack="True"
                                                            GroupName="__Proses" />
                                                    </td>
                                                    <td>
                                                        <Module:webcal ID="calTanggal" runat="server" DontResetDate="true"></Module:webcal>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        <asp:RadioButton runat="server" ID="rbtnReg" Text="Per Registrasi" AutoPostBack="True"
                                                            GroupName="__Proses" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtNoReg" runat="server" MaxLength="15" AutoPostBack="True" />
                                                        &nbsp;&nbsp; <b>
                                                            <asp:Label ID="lblNama" runat="server" /></b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        <asp:RadioButton runat="server" ID="rbtnRsp" Text="Per Resep" AutoPostBack="True"
                                                            GroupName="__Proses" />
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtNoResep" runat="server" MaxLength="15" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                    <td>
                                                        <asp:RadioButton runat="server" ID="rbtnAll" Text="Semua" AutoPostBack="True" GroupName="__Proses" />
                                                    </td>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                            <table width="100%">
                                                <tr>
                                                    <td>
                                                        <asp:Button runat="server" ID="btnOk" Text="Lihat Transaksi" CausesValidation="False"
                                                            CssClass="sbttn" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    </form>

    <script src='/qislib/scripts/common/util.js' language="javascript"></script>

</body>
</html>
