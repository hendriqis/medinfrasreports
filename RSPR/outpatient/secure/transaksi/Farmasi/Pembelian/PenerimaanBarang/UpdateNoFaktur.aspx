<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UpdateNoFaktur.aspx.vb"
    Inherits="QIS.Web.UpdateNoFaktur" %>

<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../../Incl/CSSToolbar.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Update Penjamin Bayar</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">

    <script language="javascript" src="/qislib/scripts/lb_/lb___Dlg_Rs-v2.js"></script>

    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>

    <script language="javascript">
        function center() {
            var xcenter = (screen.availWidth - 600) / 2;
            var ycenter = (screen.availHeight - 400) / 2;
            self.resizeTo(600, 400);
            self.moveTo(xcenter, ycenter);
        }

        function fnClose() {
            //var val = window.opener.document.getElementById('txtNobayar').value;
            //if (val=='')
            window.opener.document.getElementById('txtNoKirim').value = document.getElementById('txtNoFaktur').value;
            window.opener.__doPostBack('txtNoPenerimaan', '');
            //else
            //window.opener.__doPostBack('txtNobayar','');

            window.close()
        }
    </script>

</head>
<body onload="center()">
    <form id="frmUpdatePenjamin" runat="server">
    <table border="0" width="100%" cellspacing="5" cellpadding="0">
        <tr>
            <td width="100%" valign="top">
                <Module:CSSToolbar ID="CSSToolbar" runat="server"></Module:CSSToolbar>
            </td>
        </tr>
        <tr>
            <td align="left">
                <table cellspacing="0" cellpadding="5" width="100%">
                    <tr class="rheader">
                        <td class="rheadercol" align="left" height="25">
                            Update No. Faktur / kirim
                        </td>
                    </tr>
                    <tr class="rbody">
                        <td class="rbodycol" align="center" height="25">
                            <table width="100%">
                                <tr>
                                    <td width="20%">
                                        No.&nbsp;BPB&nbsp;
                                    </td>
                                    <td width="50%">
                                        <asp:TextBox ID="txtNoBPB" runat="server" ReadOnly="true" Width="90%" />
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td width="20%">
                                        Kode Supplier&nbsp;
                                    </td>
                                    <td width="50%">
                                        <asp:TextBox ID="txtKdSupplier" runat="server" ReadOnly="true" Width="45%" />
                                        <asp:TextBox ID="txtNmSupplier" runat="server" ReadOnly="true" Width="45%" />
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                            <table width="100%">
                                <tr>
                                    <td>
                                        <table class="rBodyAddNew" cellspacing="0" bordercolordark="#98aab1" cellpadding="5"
                                            width="100%">
                                            <tr>
                                                <td>
                                                    <table width="100%">
                                                        <tr>
                                                            <td>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td width="20%" class="rBodyAddNewFld" style="height: 13px">
                                                                            <strong>No. Faktur/Kirim</strong>&nbsp;
                                                                        </td>
                                                                        <td width="50%" class="rBodyAddNewFld" style="height: 13px">
                                                                            <asp:TextBox ID="txtNoFaktur" runat="server" Width="95%" MaxLength="100"></asp:TextBox>
                                                                        </td>
                                                                        <td class="rBodyAddNewFld" style="height: 13px">
                                                                            <asp:RequiredFieldValidator ID="rfvInstansi" runat="server" Display="dynamic" ErrorMessage="No Faktur"
                                                                                ControlToValidate="txtNoFaktur">**No faktur / kirim harus diisi.
                                                                            </asp:RequiredFieldValidator>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr class="rheader">
                        <td class="rheadercol" align="left" height="2">
                            <tr>
                                <td align="right">
                                    <input type="button" value="Close" onclick="javascript:fnClose();" class="sbttn">
                                </td>
                            </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>

    <script src='/qislib/scripts/common/common.js' language="javascript"></script>

</body>
</html>
