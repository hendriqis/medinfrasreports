<%--<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../incl/calendarModule2.ascx" %>--%>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../../../incl/RadMenu.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InformasiResep.aspx.vb" Inherits=".InformasiResep" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Antrian Resep</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <meta http-equiv="refresh" content="30" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
    <script>
        (function () {
            'use strict';

            var dbh, sto, num = 50, temp = 0, scrolldelay = 100;

            function init() {
                dbh = document.body.offsetHeight;
                pageScroll();
            }

            function pageScroll() {
                window.scrollBy(0, 1);
                scrolldelay = setTimeout(pageScroll, 120);
            }
            window.addEventListener ?
            window.addEventListener('load', init, false) :
            window.attachEvent('onload', init);
        })();

        window.onscroll = function (ev) {
            if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
                window.scrollTo(0, 0);
            }
        };

        setTimeout(function () {
            window.location.reload(1);
        }, 60000);
    </script>
</head>
<body>
    <form id="frmStatRsp" runat="server">
    <table border="0" width="100%" height="100%" cellspacing="0" cellpadding="2">
       <%-- <tr>
            <td>
                <!-- BEGIN PAGE HEADER -->
                <Module:RadMenu ID="RadMenu" runat="server" />
                <!-- END PAGE HEADER -->
            </td>
        </tr>--%>
        <tr>
            <td width="100%" height="100%" valign="top">
                <div style="width: 100%; height: 100%; overflow: auto;">
                    <table cellspacing="10" cellpadding="0" width="100%" border="0">
                        <tr>
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <%--<tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            ANTRIAN RESEP
                                        </td>
                                    </tr>--%>
                                    <tr class="rbody">
                                        <td class="rbodycol" align="top">
                                            <table width="100%">
                                            <tr>
                                                    <td class="rheader" colspan="2">
                                                        <table width="100%" style="font-family: Dekar, Arial, Tahoma;">
                                                            <td style="width: 100;">
                                                                <img src="/qislib/images/qisLogo.png" width="40" alt="" border="" />
                                                            </td>
                                                            <td style="font-size: 24pt;">
                                                                <asp:Label ID="lblCompanyName" runat="server"></asp:Label>
                                                            </td>
                                                            <td class="rheader" style="text-align: right; font-size: 24pt;">
                                                                ANTRIAN RESEP
                                                            </td>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="hseparator" style="width: 100%;" colspan="2">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 50%; text-align: left; font-size: 14pt;">
                                                        <asp:Label ID="lblCompanyAddress" runat="server"></asp:Label>
                                                    </td>
                                                    <td style="width: 50%; text-align: right; font-size: 14pt;">
                                                        <asp:Label ID="lblDateTime" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 50%; text-align: left; font-size: 12pt;">
                                                        <asp:Label ID="lblTlp" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 50%; text-align: left; font-size: 12pt;">
                                                        <asp:Label ID="lblWeb" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="hseparator" style="width: 100%;" colspan="2">
                                                    </td>
                                                </tr>
                                                <tr valign="top">
                                                    <%--<td width="100%">--%>
                                                    <td align="left" colspan="2">
                                                        <asp:Panel ID="panelgridRinci" runat="server" Width ="100%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td>
                                                                        <table width="100%">
                                                                            <tr valign="top">
                                                                                <td width="50%">
                                                                                    <table width="100%">
                                                                                        <tr>
                                                                                            <td style="background-color: #FF9900; color: #ffffff; font-size: 14pt;" align="center" class="rfieldsubgroup">
                                                                                                Resep yang Sedang Dikerjakan
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr valign="top">
                                                                                            <td>
                                                                                                <asp:DataGrid ID="gridOnProgressedResep" runat="server" Width="100%" CellPadding="0"
                                                                                                    Height="100%" GridLines="Horizontal" BorderWidth="1" BorderColor="Gainsboro"
                                                                                                    AutoGenerateColumns="False" AllowSorting="True" CellSpacing="0" ShowFooter="False"
                                                                                                    AllowPaging="false" style="font-size: 12pt;">
                                                                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                                                    <EditItemStyle Font-Bold="false" />
                                                                                                    <PagerStyle HorizontalAlign="right" />
                                                                                                    <Columns>
                                                                                                        <asp:TemplateColumn runat="server" HeaderText="No. Resep">
                                                                                                            <ItemTemplate>
                                                                                                                <asp:Label ID="_lblNoRsp" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "PrescriptionNo") %>'></asp:Label>
                                                                                                            </ItemTemplate>
                                                                                                        </asp:TemplateColumn>
                                                                                                      <asp:TemplateColumn runat="server" HeaderText="MRN">
                                                                                                            <ItemTemplate>
                                                                                                                <asp:Label ID="_lblMRN" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "MedicalNo") %>'></asp:Label>
                                                                                                            </ItemTemplate>
                                                                                                        </asp:TemplateColumn>
                                                                                                        <asp:TemplateColumn runat="server" HeaderText="Nama Pasien"
                                                                                                                        HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="middle">
                                                                                                            <ItemTemplate>
                                                                                                                           <table>
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                       <asp:Label runat="server" Style="margin-left: 0; margin-right: 5; font-size: 12pt;" Text='<%# DataBinder.Eval(Container.DataItem, "PatientName") %>'
                                                                                                                                                        ID="_lblNama" />
                                                                                                                                    &nbsp;
                                                                                                                                       <asp:Label runat="server" Style="margin-left: 5; margin-right: 0; font-size: 12pt; color: #FF0000" Text="( RACIKAN )"
                                                                                                                                                       font-bold="True" Visible='<%# DataBinder.Eval(Container.DataItem, "racikan")="1" %>'  ID="_lblRacikan" />
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td class="txtweak">
                                                                                                                                    &nbsp;&nbsp;
                                                                                                                                       <asp:Label runat="server" Style="margin-left: 0; margin-right: 5; font-size: 12pt; color: #FF0000; display: none " Text='<%# DataBinder.Eval(Container.DataItem, "DoctorName") %>'
                                                                                                                                                        ID="_lblDokter" />
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                            </ItemTemplate> 
                                                                                                        </asp:TemplateColumn>
                                                                                                    </Columns>
                                                                                                </asp:DataGrid>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="50%" >
                                                                                    <table width="100%">
                                                                                        <tr>
                                                                                            <td style="background-color: #1F872E; color: #ffffff; font-size: 14pt;" align="center" class="rfieldsubgroup">
                                                                                                Resep yang Sudah Selesai
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:DataGrid ID="gridCompletedResep" runat="server" Width="100%" CellPadding="0"
                                                                                                    Height="100%" GridLines="Horizontal" BorderWidth="1" BorderColor="Gainsboro"
                                                                                                    AutoGenerateColumns="False" AllowSorting="True" CellSpacing="0" ShowFooter="False"
                                                                                                    AllowPaging="false" style="font-size: 12pt;">
                                                                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                                                    <EditItemStyle Font-Bold="false" />
                                                                                                    <PagerStyle HorizontalAlign="right" />
                                                                                                    <Columns>
                                                                                                        <asp:TemplateColumn runat="server" HeaderText="No. Resep">
                                                                                                            <ItemTemplate>
                                                                                                                <asp:Label ID="_lblNoRsp" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "PrescriptionNo") %>'></asp:Label>
                                                                                                            </ItemTemplate>
                                                                                                        </asp:TemplateColumn>
                                                                                                      <asp:TemplateColumn runat="server" HeaderText="MRN">
                                                                                                            <ItemTemplate>
                                                                                                                <asp:Label ID="_lblMRN" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "MedicalNo") %>'></asp:Label>
                                                                                                            </ItemTemplate>
                                                                                                        </asp:TemplateColumn>
                                                                                                        <asp:TemplateColumn runat="server" HeaderText="Nama Pasien"
                                                                                                                        HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="middle">
                                                                                                            <ItemTemplate>
                                                                                                                          <table>
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                       <asp:Label runat="server" Style="margin-left: 0; margin-right: 5; font-size: 12pt;" Text='<%# DataBinder.Eval(Container.DataItem, "PatientName") %>'
                                                                                                                                                        ID="_lblNama" />
                                                                                                                                    &nbsp;
                                                                                                                                       <asp:Label runat="server" Style="margin-left: 5; margin-right: 0; font-size: 12pt; color: #FF0000" Text="( RACIKAN )"
                                                                                                                                                         Font-Bold="True" Visible='<%# DataBinder.Eval(Container.DataItem, "racikan")="1" %>'  ID="_lblRacikan" />
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td class="txtweak">
                                                                                                                                    &nbsp;&nbsp;
                                                                                                                                       <asp:Label runat="server" Style="margin-left: 0; margin-right: 5; font-size: 12pt; color: #FF0000; display: none" Text='<%# DataBinder.Eval(Container.DataItem, "DoctorName") %>'
                                                                                                                                                        ID="_lblDokter" />
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                            </ItemTemplate> 
                                                                                                        </asp:TemplateColumn>
                                                                                                    </Columns>
                                                                                                </asp:DataGrid>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
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
    <script src='/qislib/scripts/common/common.js' language="javascript"></script>
    </table> </form>
</body>
</html>
