<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ASPxGridView - How to customize GroupSummary and TotalSummary rendering via GroupFooterTemplate and FooterTemplate</title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="Grid" runat="server" AutoGenerateColumns="False" 
            Width="400px" DataSourceID="AccessDataSource1">
            <Columns>
                <dx:GridViewDataColumn FieldName="Country" GroupIndex="0" />
                <dx:GridViewDataColumn FieldName="FirstName" />
                <dx:GridViewDataColumn FieldName="LastName" />
                <dx:GridViewDataDateColumn FieldName="BirthDate" />
                <dx:GridViewDataProgressBarColumn FieldName="Vote">
                    <PropertiesProgressBar Minimum="0" Maximum="5" DisplayMode="Position" Width="150" />
                    <GroupFooterTemplate>
                        <dx:ASPxProgressBar ID="GroupProgressBar" runat="server" Minimum="0" Maximum="5" DisplayMode="Custom" 
                            Width="150" CustomDisplayFormat="Avg={0}" DisplayFormatString="{0:N2}" 
                            Value='<%# GetGroupSummaryValue(Container) %>' />
                    </GroupFooterTemplate>
                    <FooterTemplate>
                        <dx:ASPxProgressBar ID="TotalProgressBar" runat="server" Minimum="0" Maximum="5" DisplayMode="Custom" 
                            Width="150" CustomDisplayFormat="Avg={0}" DisplayFormatString="{0:N2}"
                            Value='<%# GetTotalSummaryValue() %>' />
                    </FooterTemplate>
                </dx:GridViewDataProgressBarColumn>
            </Columns>
            <Settings ShowGroupFooter="VisibleAlways" ShowFooter="true" />
            <SettingsBehavior AutoExpandAllGroups="true" />
            <SettingsPager Mode="ShowAllRecords" />
            <TotalSummary>
                <dx:ASPxSummaryItem FieldName="Vote" SummaryType="Average" Tag="TotalVote" />
                <dx:ASPxSummaryItem FieldName="BirthDate" SummaryType="Count" />
            </TotalSummary>
            <GroupSummary>
                <dx:ASPxSummaryItem FieldName="Vote" ShowInGroupFooterColumn="Vote" SummaryType="Average" Tag="GroupVote" />
                <dx:ASPxSummaryItem FieldName="BirthDate" ShowInGroupFooterColumn="BirthDate" SummaryType="Count" />
            </GroupSummary>
        </dx:ASPxGridView>

        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/DATA.mdb" 
            SelectCommand="SELECT [Vote], [FirstName], [LastName], [BirthDate], [Country] FROM [Employees]">
        </asp:AccessDataSource>
    </form>
</body>
</html>
