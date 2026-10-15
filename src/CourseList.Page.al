page 50103 "CRONUS-Kursliste"
{
    Caption = 'Kursliste';
    PageType = List;
    SourceTable = "CRONUS-Kurs";
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "CRONUS-Kurskarte";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Caption = 'Allgemein';

                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
