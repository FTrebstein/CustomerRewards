table 50103 "CRONUS-Kurs"
{
    Caption = 'CRONUS-Kurs';
    DataClassification = CustomerContent;
    LookupPageId = "CRONUS-Kursliste";
    DrillDownPageId = "CRONUS-Kursliste";

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; Description; Text[250])
        {
            Caption = 'Beschreibung';
            DataClassification = CustomerContent;
        }
        field(4; Duration; Integer)
        {
            Caption = 'Dauer';
            DataClassification = CustomerContent;
        }
        field(5; Price; Decimal)
        {
            Caption = 'Preis';
            DataClassification = CustomerContent;
        }
        field(6; Type; Text[30])
        {
            Caption = 'Typ';
            DataClassification = CustomerContent;
        }
        field(7; Active; Boolean)
        {
            Caption = 'Aktiv';
            DataClassification = CustomerContent;
        }
        field(8; "Instructor Code"; Code[20])
        {
            Caption = 'Kursleitercode';
            DataClassification = CustomerContent;
            TableRelation = Resource."No.";
        }
        field(9; "Instructor Name"; Text[100])
        {
            Caption = 'Name des Kursleiters';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}
