page 50102 "CRONUS-Kurskarte"
{
    Caption = 'Kurskarte';
    PageType = Card;
    SourceTable = "CRONUS-Kurs";
    UsageCategory = None;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'Allgemein';

                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                    ToolTip = 'Gibt den Code des Kurses an.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Gibt den Namen des Kurses an.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Gibt die Beschreibung des Kurses an.';
                }
            }
            group(Details)
            {
                Caption = 'Details';

                field(Duration; Rec.Duration)
                {
                    ApplicationArea = All;
                    ToolTip = 'Gibt die Dauer des Kurses an.';
                }
                field(Price; Rec.Price)
                {
                    ApplicationArea = All;
                    ToolTip = 'Gibt den Preis des Kurses an.';
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Gibt den Typ des Kurses an.';
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Gibt an, ob der Kurs aktiv ist.';
                }
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Gibt den Code des Kursleiters an.';
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Gibt den Namen des Kursleiters an.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ResourceCard)
            {
                ApplicationArea = All;
                Caption = 'Ressource';
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor Code");
                ToolTip = 'Ressourcenkarte öffnen';
            }
        }
    }
}
