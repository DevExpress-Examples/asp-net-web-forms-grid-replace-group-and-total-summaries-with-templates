<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128536641/12.2.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4153)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - Сustomize GroupSummary/TotalSummary via GroupFooter/Footer templates


<p>This example illustrates how to get Summary Item values and change the default Summary rendering. Average values are calculated against the "Vote" column and are visualized via the ASPxProgressBar in GroupFooterTemplate (against each group of rows) and FooterTemplate (against all the rows).</p><p> </p><p>The "Tag" attribute is added for the summaries that are visualized via the ASPxProgressBar. This attribute contains a summary's identificator.</p><p> </p><p>The progress bars that visualize the group summaries get their values via the GetGroupSummaryValue() function. GroupFooterCellTemplateContainer object is passed to this function as a parameter that contains information about a group index.</p><p> </p><p>In the GetGroupSummaryValue() function, the ASPxGridView.GetGroupSummaryValue method is used to get the GroupSummary value. This method has the following parameters:</p><p>VisibleIndex - is accessible from GroupFooterCellTemplateContainer;</p><p>SummaryItem - can be found by the ASPxSummaryItem.Tag value.</p><p> </p><p>The progress bar that visualizes the overall summary gets its value via the GetTotalSummaryValue() function. This function utilizes the ASPxGridView.GetTotalSummaryValue method to get the total summary.</p><p> </p><p>To perform text formatting for all the progress bars, the ASPxProgressBar.CustomDisplayFormat property is used. The ASPxProgressBar.DisplayMode property value is set to "Custom".</p>

<br/>


<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-replace-group-and-total-summaries-with-templates&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-grid-replace-group-and-total-summaries-with-templates&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
