report 50106 CustomerListReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    AdditionalSearchTerms = 'Customer List Report';
    //RDLCLayout = 'CustomerListReport.rdl';
    //DefaultLayout = RDLC;
    DefaultRenderingLayout = Example_RDLCLayout;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNo; "No.")
            {
                IncludeCaption = true;
            }
            column(CustomerName; Name)
            {
                IncludeCaption = true;
            }
            column(City; City)
            {
                IncludeCaption = true;
            }
            column(BalanceLCY; "Balance (LCY)")
            {
                IncludeCaption = true;
            }
        }
    }







//     rendering
//     {
//         layout(Example_RDLCLayout)
//         {
//             Type = RDLC;
//             LayoutFile = './src/Reports/Layouts/CustomerList_RDLCLayout.rdl';
//             Caption = 'Example_CustomerListCaption_RDLCLayout';
//             Summary = 'An example of a Multi Language Report Layout with RDLC.';
//         }
//     }
// }