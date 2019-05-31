<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PermintaanBarang.aspx.vb"
    Inherits="QIS.Web.Permintaan.PermintaanBarang" %>

<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../incl/RadMenu.ascx" %>
<%@ Register TagPrefix="Module" TagName="CSSToolbar" Src="../../../../incl/CSSToolbar.ascx" %>
<%@ Register Src="~/Libs/Controls/GeneralCtl.ascx" TagName="GeneralCtl" TagPrefix="uc1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<html>
<head>
    <title>Permintaan Barang</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link href="/qislib/css/styles.css" type="text/css" rel="Stylesheet">
    <script language="javascript" src="/qislib/scripts/fm_/fm___Dlg_Rs-v2.js"></script>
    <script language="javascript" src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>'></script>
    <script language="javascript">
		<!--

        var oPopup = window.createPopup();

        function richDialog() {
            var lefter = event.offsetY + 0;
            var topper = event.offsetX + 15;
            //var lefter = (screen.availWidth - 200)/2;
            //var topper = (screen.availHeight - 550)/2;
            oPopup.document.createStyleSheet('/qislib/css/styles.css')
            oPopup.document.body.innerHTML = oDialog.innerHTML;
            // x,y,w,h
            oPopup.show(topper, lefter + 20, 550, 200, ttip);
        }
		
		//-->
    </script>
    <style type="text/css">
        .transparent
        {
            filter: alpha(opacity=20);
            background-color: Transparent;
            display: none;
            width: 170;
            height: 100;
            position: absolute;
            color: white; /*border: 1 green solid;*/
        }
    </style>
</head>
<body ms_positioning="GridLayout" onload="ShowPosting();fokus();">
    <form id="frmPermintaanBarang" method="post" runat="server">
    <uc1:GeneralCtl ID="ctlGeneral" runat="server" />
    <asp:Panel ID="pnlposting" runat="server">
        <div id="Popup" class="transparent">
            <div>
                <font size="72" color="Red">APPROVED</font>
            </div>
        </div>
    </asp:Panel>
    <table border="0" width="100%" height="100%" cellspacing="0" cellpadding="2">
        <tr>
            <td width="100%" valign="top">
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>
        <tr>
            <td width="100%" valign="top">
                <Module:CSSToolbar ID="CSSToolbar" runat="server">
                </Module:CSSToolbar>
            </td>
        </tr>
        <tr>
            <td width="100%" height="100%" valign="top">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <asp:Panel ID="panelHeader" runat="server">
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rheader">
                                            <td class="rheadercol" align="left" height="25">
                                                Permintaan Barang
                                            </td>
                                        </tr>
                                        <tr class="rbody">
                                            <td class="rbodycol" align="center" height="25">
                                                <!--#include file="PermintaanBarang_Header.aspx" -->
                                                <!--#include file="PermintaanBarang_Addnewrow.aspx" -->
                                                <!--#include file="PermintaanBarang_Grid.aspx" -->
                                            </td>
                                        </tr>
                                    </table>
                                    <table cellspacing="0" cellpadding="5" width="100%">
                                        <tr class="rbody">
                                            <td align="left">
                                                <p>
                                                    <asp:ValidationSummary ID="ValidationSummary" runat="server" HeaderText="Field(s) berikut harus diisi atau perlu diperbaiki.">
                                                    </asp:ValidationSummary>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- Begin Related Links -->
                                    <table border="0" width="100%" cellspacing="0" cellpadding="1" style="display: none;">
                                        <tr>
                                            <td class="rBodyInfo" width="99%" valign="top">
                                                <table width="100%">
                                                    <tr class="rheaderexpable">
                                                        <td align="left" height="10" valign="middle">
                                                            <img style="cursor: hand" onclick="javascript:if (RelatedLinkDiv.style.display == '') {RelatedLinkDiv.style.display = 'none'; this.src='/qislib/images/expand.png'; } else { RelatedLinkDiv.style.display = ''; this.src='/qislib/images/collapse.png';}"
                                                                alt="Collapse/Expand" src="/qislib/images/collapse.png" align="absmiddle" />
                                                            Quick Menu:
                                                        </td>
                                                    </tr>
                                                </table>
                                                <div id="RelatedLinkDiv" style="overflow: auto; width: 100%;">
                                                    <table width="100%" bgcolor="MintCream" cellspacing="10" cellpadding="0">
                                                        <tr valign="top">
                                                            <td width="30%" id="rbiup">
                                                                <p>
                                                                    <font class="txtstrong">Batal Approval</font>
                                                                    <br />
                                                                    Batal Approval Transaksi Permintaan Barang.
                                                                </p>
                                                            </td>
                                                            <td align="left">
                                                                <asp:Button ID="btnCLPermintaan" runat="server" onmouseover="rbikd.style.backgroundColor='#ffd27a'"
                                                                    onmouseout="rbikd.style.backgroundColor='MintCream'" Text="Go" CssClass="sbttn"
                                                                    CausesValidation="False" />
                                                                <asp:Button ID="btnUnposting" runat="server" CausesValidation="False" ONMOUSEOVER="rbiup.style.backgroundColor='#ffd27a'"
                                                                    ONMOUSEOUT="rbiup.style.backgroundColor='MintCream'" Text="Go..." CssClass="sbttn">
                                                                </asp:Button>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <!-- End Related Links -->
                                </asp:Panel>
                                <asp:Panel ID="PanelCLPermintaan" runat="server">
                                    <!--#include file="Permintaan_CheckList_Grid.incl.aspx" -->
                                    <script language="javascript">
                                        function ShowPosting() {
                                            if (typeof (Popup) !== 'undefined') {
                                                /*x = event.clientX + document.body.scrollLeft; */
                                                var lebar;
                                                var tinggi;
                                                tinggi = delpx(Popup.currentStyle.height);
                                                lebar = delpx(Popup.currentStyle.width);
                                                var x = (screen.availWidth - lebar) / 2;
                                                var y = (screen.availHeight - tinggi) / 2;
                                                /* get the mouse left position */
                                                /*y = event.clientY + document.body.scrollTop + 10; */
                                                /* get the mouse top position  */
                                                Popup.style.display = "block";
                                                /* display the pop-up */
                                                Popup.style.left = x;
                                                /* set the pop-up's left */
                                                Popup.style.top = y;
                                                /* set the pop-up's top */
                                            }
                                        }	
                                    </script>
                                    <script src='/qislib/scripts/common/util.js' language="javascript"></script>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
    <!-- Begin Side Menu -->
    <%--<div id="divRightPanelPrintContent">
        <div class="rightPanelContent borderBox">
            <asp:Button ID="btnCetakPermintaanBarang" runat="server" Text="Go" CausesValidation="False"
                onmouseover="rbip.style.backgroundColor='#ffd27a'" onmouseout="rbip.style.backgroundColor='MintCream'"
                AutoPostBack="False" CssClass="sbttn" />
            <div class='qmtitle'>
                Cetak Bukti Permintaan Barang</div>
            <div class='qmdescription'>
                Cetak Bukti Permintaan Barang.</div>
        </div>
    </div>--%>
    <div id="divRightPanelPrintContent">
        <div class="printToolbar">
            <asp:ImageButton runat="server" ID="btnRightPanelPrint" ImageUrl="/qislib/images/tbprint.png" />
        </div>
        <asp:RadioButtonList ID="rdbCetakan" CssClass="rdbCetakan" runat="server">
            <asp:ListItem Value="ctkPermintaanBarang" Text="Cetak Bukti Permintaan Barang" Selected="True"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <div id="divJmlLabel" style="display:none">
            Banyak Label : 
            <asp:TextBox runat="server" ID="txtJmlLabel" Text="1" Width="50"></asp:TextBox>
        </div>
    </div>
    <!-- End Side Menu -->
    </form>
    <script language="javascript" src="/qislib/scripts/common/common.js"></script>
    <script language="vbscript" src="/qislib/scripts/common/common.vbs"></script>
    <script language="vbscript">
			Public Function ditrim(ByVal x)
				ditrim = Trim(x)			
			End Function			
    </script>
    <script language="javascript">
        function fokus() {
            try {
                var nobukti;
                nobukti = ditrim(document.getElementById('txtNoPermintaanBeli').value);
                //alert(nobukti);
                var kdgudang;
                kdgudang = ditrim(document.getElementById('txtKodeGudang').value);
                //alert(kdsupplier);
                if (nobukti == '') {
                    if (kdgudang == '') {
                        document.getElementById('lbtnKodeGudang').focus();
                        //document.getElementById('lbtnKodeSupplier').select();
                    }
                    else {
                        document.getElementById('gridPermintaan__ctl2__btnAddNewRow').focus();
                        //document.getElementById('Pemesanan_AddNewRow_txtKodeItem').select();
                    }
                }
                else {
                    document.getElementById('lbtnNoBukti').focus();
                }

                if (typeof (document.getElementById('txtKodeItem')) !== 'undefined') {
                    var kdbarang;
                    kdbarang = ditrim(document.getElementById('txtKodeItem').value);

                    if (kdbarang == '') {
                        document.getElementById('lBtnKodeItem').focus();
                        document.getElementById('lBtnKodeItem').select();
                    }
                    else {
                        document.getElementById('txtKuantitas').focus();
                        document.getElementById('txtKuantitas').select();
                    }
                }
            }
            catch (e) {
            }
        }
		    
    </script>
</body>
</html>
