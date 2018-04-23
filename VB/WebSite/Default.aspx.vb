Option Infer On

Imports Microsoft.VisualBasic
Imports System.Linq
Imports System

Imports DevExpress.Web.ASPxGridView

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Function GetGroupSummaryValue(ByVal container As GridViewGroupFooterCellTemplateContainer) As Object
		Dim summaryItem = Grid.GroupSummary.First(Function(i) i.Tag = "GroupVote")
		Return Grid.GetGroupSummaryValue(container.VisibleIndex, summaryItem)
	End Function
	Protected Function GetTotalSummaryValue() As Object
		Dim summaryItem = Grid.TotalSummary.First(Function(i) i.Tag = "TotalVote")
		Return Grid.GetTotalSummaryValue(summaryItem)
	End Function
End Class