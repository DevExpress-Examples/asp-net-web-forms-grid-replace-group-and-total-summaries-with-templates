using System.Linq;
using System;

using DevExpress.Web;

public partial class _Default : System.Web.UI.Page {
    protected object GetGroupSummaryValue(GridViewGroupFooterCellTemplateContainer container) {
        var summaryItem = Grid.GroupSummary.First(i => i.Tag == "GroupVote");
        return Grid.GetGroupSummaryValue(container.VisibleIndex, summaryItem);
    }
    protected object GetTotalSummaryValue() {
        var summaryItem = Grid.TotalSummary.First(i => i.Tag == "TotalVote");
        return Grid.GetTotalSummaryValue(summaryItem);
    }
}