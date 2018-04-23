# ASPxGridView - Сustomize GroupSummary/TotalSummary via GroupFooter/Footer templates


<p>This example illustrates how to get Summary Item values and change the default Summary rendering. Average values are calculated against the "Vote" column and are visualized via the ASPxProgressBar in GroupFooterTemplate (against each group of rows) and FooterTemplate (against all the rows).</p><p> </p><p>The "Tag" attribute is added for the summaries that are visualized via the ASPxProgressBar. This attribute contains a summary's identificator.</p><p> </p><p>The progress bars that visualize the group summaries get their values via the GetGroupSummaryValue() function. GroupFooterCellTemplateContainer object is passed to this function as a parameter that contains information about a group index.</p><p> </p><p>In the GetGroupSummaryValue() function, the ASPxGridView.GetGroupSummaryValue method is used to get the GroupSummary value. This method has the following parameters:</p><p>VisibleIndex - is accessible from GroupFooterCellTemplateContainer;</p><p>SummaryItem - can be found by the ASPxSummaryItem.Tag value.</p><p> </p><p>The progress bar that visualizes the overall summary gets its value via the GetTotalSummaryValue() function. This function utilizes the ASPxGridView.GetTotalSummaryValue method to get the total summary.</p><p> </p><p>To perform text formatting for all the progress bars, the ASPxProgressBar.CustomDisplayFormat property is used. The ASPxProgressBar.DisplayMode property value is set to "Custom".</p>

<br/>


