﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Address.aspx.cs" Inherits="Find_Address" Title="Untitled Page" %>
<%@ Register Assembly="Simplovation.Web.Maps.VE" Namespace="Simplovation.Web.Maps.VE" TagPrefix="Simplovation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_PageTitle" Runat="Server">Find - Find Address</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_PageDescription" Runat="Server">
THis is a basic example of performing a Find that essentially geocodes the address entered.
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder_Main" Runat="Server">

<asp:ScriptManager runat="server" ID="ScriptManager1"></asp:ScriptManager>

<asp:UpdatePanel runat="server" ID="UpdatePanel_Fields">
    <ContentTemplate>
        Where: <asp:TextBox runat="server" ID="txtWhere" Text="1 Microsoft Way, Redmond, WA" Width="500px"></asp:TextBox><br />
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="btnFind" EventName="Click" />
    </Triggers>
</asp:UpdatePanel>

<asp:Button runat="server" ID="btnFind" Text="Find" OnClick="btnFind_Click" />

<br />
<small>Click "Find" to find what you're looking for. Then click on the items Title in the left bar, to zoom/pan to that location.</small><br />

<table cellspacing="0" cellpadding="0">
    <tr>
        <td>
        
            <div style="width: 200px; height:450px; border: solid 1px black; padding: 2px; border-right: none; overflow: scroll;">
            
                <asp:UpdatePanel runat="server" ID="UpdatePanel_Results">
                    <ContentTemplate>
                    
                        <asp:Repeater runat="server" ID="rptrFindResults">
                            <HeaderTemplate>
                                <strong>Find Results:</strong><hr />
                            </HeaderTemplate>
                            <ItemTemplate>
                                <small>
                                    <Simplovation:LocationLink runat="server" ID="LocationLink1" Text='<%# Eval("Name") %>' TargetMapID="Map1" Latitude='<%# Eval("LatLong.Latitude") %>' Longitude='<%# Eval("LatLong.Longitude") %>' ZoomLevel="16"></Simplovation:LocationLink>
                                    <br />
                                    Latitude:&nbsp;<%# Eval("LatLong.Latitude") %><br />
                                    Longitude:&nbsp;<%# Eval("LatLong.Longitude")%><br />
                                </small>
                            </ItemTemplate>
                            <SeparatorTemplate>
                                <hr />
                            </SeparatorTemplate>
                        </asp:Repeater>
                    
                    </ContentTemplate>
                </asp:UpdatePanel>
            
            </div>
        
        </td>
        <td>

            <Simplovation:Map runat="server" ID="Map1" Width="600px" Height="450px" CssClass="map" OnFindLoaded="Map1_FindLoaded" />        
           
        </td>
    </tr>
</table>

</asp:Content>

