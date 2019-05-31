<%@ Register TagPrefix="Module" TagName="webcal" Src="../../../incl/calendarModule2.ascx" %>
<%@ Register TagPrefix="Module" TagName="RadMenu" Src="../../../incl/RadMenu.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StatusResep.aspx.vb" Inherits=".StatusResep" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Perubahan Status Resep</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0" />
    <meta name="CODE_LANGUAGE" content="Visual Basic 7.0" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
    <meta http-equiv="refresh" content="600" />
    <link href='/qislib/css/styles.css' type="text/css" rel="Stylesheet">
    <script src='<%= UrlBase + "/JSDLGGlobalVar.aspx" %>' language="javascript"></script>
    <script src='/qislib/scripts/fm_/fm___Dlg_Rs-v2.js' language="javascript"></script>
</head>
<body>
    <form id="frmStatRsp" runat="server">
    <table border="0" width="100%" height="100%" cellspacing="0" cellpadding="2">
        <tr>
            <td>
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
                            <td align="left">
                                <table cellspacing="0" cellpadding="5" width="100%">
                                    <tr class="rheader">
                                        <td class="rheadercol" align="left" height="25">
                                            Perubahan Status Resep
                                        </td>
                                    </tr>
                                    <tr class="rbody">
                                        <td class="rbodycol" align="top">
                                            <table width="100%">
                                                <tr valign="top">
                                                    <td width="100%">
                                                        <asp:Panel ID="panelgridRinci" runat="server">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td width="100%" align="center">
                                                                        <table width="100%">
                                                                            <tr>
                                                                                <td width="30%" align="right">
                                                                                    Tanggal Resep
                                                                                </td>
                                                                                <td width="50%" align="left">
                                                                                    <Module:webcal ID="calTglResep" runat="server" DontResetDate="true"></Module:webcal>
                                                                                </td>
                                                                                <td align="right"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="right">
                                                                                    Modul
                                                                                </td>
                                                                                <td align="left">
                                                                                    <asp:DropDownList ID="ddlAsalPasien" runat="server" Width="300px">
                                                                                        <asp:ListItem Value="%">Semua Pasien</asp:ListItem>
                                                                                        <asp:ListItem Value="XRI" Selected="True">Selain Rawat Inap</asp:ListItem>
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                                <td align="right">
                                                                                    Halaman ini akan
                                                                                    <asp:LinkButton ID="lbtnRefreshResep" runat="server" CausesValidation="False" Text="[refresh]"></asp:LinkButton>
                                                                                    setiap 10 menit
                                                                                </td>
                                                                            </tr>
                                                                            <%--<tr>
                                                                                <td align="left" class="rfieldsubgroup" colspan="3">
                                                                                    1. Resep yang Sudah Disetujui
                                                                                </td>
                                                                            </tr>--%>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                    <div style="overflow:auto; width:100%; height:400px; display:none">
                                                                        <asp:DataGrid ID="gridApprovedResep" runat="server" Width="100%" CellPadding="0"
                                                                            Height="100%" GridLines="Horizontal" BorderWidth="1" BorderColor="Gainsboro"
                                                                            AutoGenerateColumns="False" AllowSorting="True" CellSpacing="0" ShowFooter="false">
                                                                            <HeaderStyle CssClass="gridHeaderStyle" />
                                                                            <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                            <EditItemStyle Font-Bold="false" />
                                                                            <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                            <Columns>
                                                                                <asp:TemplateColumn ItemStyle-Width="150px" HeaderText="No. Registrasi">
                                                                                    <ItemTemplate>
                                                                                        <asp:Label ID="_lblNoRsp" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "PrescriptionNo") %>'></asp:Label>
                                                                                        <asp:Label ID="_lblAppID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "AppID") %>'
                                                                                            Style="display: none"></asp:Label>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateColumn>
                                                                                <asp:BoundColumn DataField="MedicalNo" ItemStyle-Width="150px" HeaderText="No. Rekam Medis"></asp:BoundColumn>

                                                                                <%--<asp:BoundColumn DataField="PatientName" HeaderText="Nama Pasien"></asp:BoundColumn>--%>
                                                                                <asp:TemplateColumn runat="server" HeaderText="Informasi Pasien"
                                                                                                HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="middle">
                                                                                    <ItemTemplate>
                                                                                        <table>
                                                                                            <tr>
                                                                                                <td>
                                                                                                   <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "PatientName") %>'
                                                                                                                    ID="_lblNama" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="txtweak">
                                                                                                &nbsp;&nbsp;
                                                                                                   <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "DoctorName") %>'
                                                                                                                    ID="_lblDokter" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </ItemTemplate> 
                                                                                </asp:TemplateColumn>
                                                                                <asp:BoundColumn DataField="RoomName" HeaderText="Asal Pasien"></asp:BoundColumn>
                                                                                <asp:TemplateColumn HeaderText="Instansi">
                                                                                    <ItemTemplate> 
                                                                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "instansi")%>'
                                                                                                                    ID="_lblInstansi" />
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateColumn>
                                                                                <asp:TemplateColumn HeaderText="Tanggal Update Terakhir">
                                                                                    <ItemTemplate> 
                                                                                        <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "LastUpdate"), "dd-MMM-yyyy, HH:mm:ss") %>'
                                                                                                                    ID="_lblTglUpdate" />
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateColumn>
                                                                                <asp:TemplateColumn ItemStyle-Width="100">
                                                                                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                    <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                    <ItemTemplate>
                                                                                        <asp:Button ID="btnprocess" runat="server" Text="Proses" CommandName="_Process" CssClass="sbttn"
                                                                                            Width="100"></asp:Button>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateColumn>
                                                                            </Columns>
                                                                        </asp:DataGrid>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <table width="100%">
                                                                            <tr valign="top">
                                                                                <td width="50%">
                                                                                    <table width="100%">
                                                                                        <tr>
                                                                                            <td class="rfieldsubgroup">
                                                                                                1. Resep yang Sedang Dikerjakan
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr valign="top">
                                                                                            <td>
                                                                                                <div style="overflow:auto; width:100%; height:400px">
                                                                                                <asp:DataGrid ID="gridOnProgressedResep" runat="server" Width="100%" CellPadding="0"
                                                                                                    Height="100%" GridLines="Horizontal" BorderWidth="1" BorderColor="Gainsboro"
                                                                                                    AutoGenerateColumns="False" AllowSorting="True" CellSpacing="0" ShowFooter="False">
                                                                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                                                    <EditItemStyle Font-Bold="false" />
                                                                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                                                    <Columns>
                                                                                                        <asp:TemplateColumn ItemStyle-Width="100px" HeaderText="No. Registrasi">
                                                                                                            <ItemTemplate>
                                                                                                                <asp:Label ID="_lblNoRsp" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "PrescriptionNo") %>'></asp:Label>
                                                                                                                <asp:Label ID="_lblAppID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "AppID") %>'
                                                                                                                    Style="display: none"></asp:Label>
                                                                                                            </ItemTemplate>
                                                                                                        </asp:TemplateColumn>
                                                                                                        <%--<asp:BoundColumn DataField="PatientName" HeaderText="Nama Pasien"></asp:BoundColumn>--%>
                                                                                                        <asp:TemplateColumn runat="server" HeaderText="Informasi Pasien"
                                                                                                                        HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="middle">
                                                                                                            <ItemTemplate>
                                                                                                                <table>
                                                                                                                    <tr>
                                                                                                                        <td>
                                                                                                                           <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "PatientName") %>'
                                                                                                                                            ID="_lblNama" />
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td class="txtweak">
                                                                                                                        &nbsp;&nbsp;
                                                                                                                           <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "DoctorName") %>'
                                                                                                                                            ID="_lblDokter" />
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </ItemTemplate> 
                                                                                                        </asp:TemplateColumn>
                                                                                                         <%--<asp:BoundColumn DataField="ProcessedDate" HeaderText="Tanggal Update Terakhir"></asp:BoundColumn>--%>
                                                                                                         <asp:TemplateColumn HeaderText="Instansi">
                                                                                                                <ItemTemplate> 
                                                                                                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "instansi")%>'
                                                                                                                                                ID="_lblInstansi" />
                                                                                                                </ItemTemplate>
                                                                                                         </asp:TemplateColumn>
                                                                                                         <asp:TemplateColumn HeaderText="Tanggal Update Terakhir">
                                                                                                            <ItemTemplate> 
                                                                                                                <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "ProcessedDate"), "dd-MMM-yyyy, HH:mm:ss") %>'
                                                                                                                                            ID="_lblTglUpdate" />
                                                                                                            </ItemTemplate>
                                                                                                        </asp:TemplateColumn>
                                                                                                        <asp:TemplateColumn ItemStyle-Width="100">
                                                                                                            <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                            <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                            <ItemTemplate>
                                                                                                                <asp:Button ID="btnDone" runat="server" Text="Selesai" CommandName="_Done" CssClass="sbttn"
                                                                                                                    Width="100"></asp:Button>
                                                                                                            </ItemTemplate>
                                                                                                        </asp:TemplateColumn>
                                                                                                    </Columns>
                                                                                                </asp:DataGrid>
                                                                                                </div> 
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="50%" >
                                                                                    <table width="100%">
                                                                                        <tr>
                                                                                            <td class="rfieldsubgroup">
                                                                                                2. Resep yang Sudah Selesai
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <div style="overflow:auto; width:100%; height:400px">
                                                                                                <asp:DataGrid ID="gridCompletedResep" runat="server" Width="100%" CellPadding="0"
                                                                                                    Height="100%" GridLines="Horizontal" BorderWidth="1" BorderColor="Gainsboro"
                                                                                                    AutoGenerateColumns="False" AllowSorting="True" CellSpacing="0" ShowFooter="False">
                                                                                                    <HeaderStyle CssClass="gridHeaderStyle" />
                                                                                                    <AlternatingItemStyle CssClass="gridAlternatingItemStyle" />
                                                                                                    <EditItemStyle Font-Bold="false" />
                                                                                                    <PagerStyle Mode="NumericPages" HorizontalAlign="right" />
                                                                                                    <Columns>
                                                                                                        <asp:TemplateColumn ItemStyle-Width="100px" HeaderText="No. Registrasi">
                                                                                                            <ItemTemplate>
                                                                                                                <asp:Label ID="_lblNoRsp" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "PrescriptionNo") %>'></asp:Label>
                                                                                                                <asp:Label ID="_lblAppID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "AppID") %>'
                                                                                                                    Style="display: none"></asp:Label>
                                                                                                            </ItemTemplate>
                                                                                                        </asp:TemplateColumn>
                                                                                                       <%-- <asp:BoundColumn DataField="PatientName" HeaderText="Nama Pasien"></asp:BoundColumn>--%>
                                                                                                       <asp:TemplateColumn runat="server" HeaderText="Informasi Pasien"
                                                                                                                        HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" ItemStyle-VerticalAlign="middle">
                                                                                                            <ItemTemplate>
                                                                                                                <table>
                                                                                                                    <tr>
                                                                                                                        <td>
                                                                                                                           <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "PatientName") %>'
                                                                                                                                            ID="_lblNama" />
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td class="txtweak">
                                                                                                                          &nbsp;&nbsp;
                                                                                                                          <asp:Label runat="server" Style="margin-left: 0; margin-right: 5" Text='<%# DataBinder.Eval(Container.DataItem, "DoctorName") %>'
                                                                                                                                            ID="_lblDokter" />
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </ItemTemplate> 
                                                                                                        </asp:TemplateColumn>
                                                                                                        
                                                                                                       <%-- <asp:BoundColumn DataField="CompletedDate" HeaderText="Tanggal Update Terakhir"></asp:BoundColumn>--%>
                                                                                                       <asp:TemplateColumn HeaderText="Instansi">
                                                                                                        <ItemTemplate> 
                                                                                                            <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "instansi")%>'
                                                                                                                                        ID="_lblInstansi" />
                                                                                                        </ItemTemplate>
                                                                                                       </asp:TemplateColumn>
                                                                                                       <asp:TemplateColumn HeaderText="Tanggal Update Terakhir">
                                                                                                            <ItemTemplate> 
                                                                                                                <asp:Label runat="server" Text='<%# Format(DataBinder.Eval(Container.DataItem, "CompletedDate"), "dd-MMM-yyyy, HH:mm:ss") %>'
                                                                                                                                            ID="_lblTglUpdate" />
                                                                                                            </ItemTemplate>
                                                                                                        </asp:TemplateColumn>
                                                                                                        <asp:TemplateColumn ItemStyle-Width="100">
                                                                                                            <HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                                                                                                            <ItemStyle HorizontalAlign="Left"></ItemStyle>
                                                                                                            <ItemTemplate>
                                                                                                                <asp:Button ID="btnTaken" runat="server" Text="Ambil" CommandName="_Taken" CssClass="sbttn"
                                                                                                                    Width="100"></asp:Button>
                                                                                                            </ItemTemplate>
                                                                                                        </asp:TemplateColumn>
                                                                                                    </Columns>
                                                                                                </asp:DataGrid>
                                                                                                </div> 
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
