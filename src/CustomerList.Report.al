report 50107 CustomerListLangRecReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Customer List Report Language Recipient';
    AdditionalSearchTerms = 'Customer List Report Language Recipient';
    DefaultRenderingLayout = Example_RDLCLayout;
    //RDLCLayout = 'CustomerListReportLangRep.rdl';

    //DefaultLayout = RDLC;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNo; "No.")
            {
            }
            column(CustomerNoCptn; fieldcaption("No."))
            {
            }
            column(CustomerName; Name)
            {
            }
            column(CustomerNameCptn; fieldcaption(Name))
            {
            }
            column(CustomerLanguageCode; "Language Code")
            {
            }
            column(CustomerLanguageCodeCptn; fieldcaption("Language Code"))
            {
            }
            column(City; City)
            {
            }
            column(CityCptn; fieldcaption(City))
            {
            }
            column(BalanceLCY; "Balance (LCY)")
            {
            }
            column(BalanceLCYCptn; fieldcaption("Balance (LCY)"))
            {
            }
            trigger OnAfterGetRecord()
            begin
                CurrReport.Language := LanguageMgt.GetLanguageIdOrDefault("Language Code");
            end;
        }
    }
    rendering
    {
        layout(Example_RDLCLayout)
        {
            Type = RDLC;
            LayoutFile = './src/Reports/Layouts/CustomerListCaption_RDLCLayout.rdl';
            Caption = 'Example_CustomerListCaption_RDLCLayout';
            Summary = 'An example of a Multi Language Report Layout with RDLC.';
        }
    }

    var
        LanguageMgt: Codeunit Language;
        ReportTitle: Label 'Report Title', Comment = 'Foo', MaxLength = 999, Locked = true;
}


