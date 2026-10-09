pageextension 50100 "Customer Card" extends "Customer Card"
{

    layout
    {
        addafter(Name)
        {
            field(RewardLevel; RewardLevel)
            {
                ApplicationArea = All;
                Caption = 'Reward Level';
                Description = 'Reward level of the customer.';
                ToolTip = 'Specifies the level of reward that the customer has at this point.';
                Editable = false;
            }

            field(RewardPoints; Rec.RewardPoints)
            {
                ApplicationArea = All;
                Caption = 'Reward Points';
                Description = 'Reward points accrued by customer';
                ToolTip = 'Specifies the total number of points that the customer has at this point.';
                Editable = false;
            }
        }
    }


    actions
    {
        addlast(reporting)
        {
            action(ExportItemsToCSV)
            {
                ApplicationArea = All;
                Caption = 'Artikel nach CSV exportieren';
                Image = Export;
                ToolTip = 'Exportiert alle Artikel mit Nr., Bezeichnung und Basiseinheit als CSV-Datei.';

                trigger OnAction()
                var
                    ItemCSVExport: Codeunit "Item CSV Export";
                begin
                    ItemCSVExport.ExportItems();

                end;
            }
        }
    }


    trigger OnAfterGetRecord();
    var
        CustomerRewardsMgtExt: Codeunit "Customer Rewards Ext. Mgt";
    begin
        // Get the reward level associated with reward points 
        RewardLevel := CustomerRewardsMgtExt.GetRewardLevel(Rec.RewardPoints);
    end;

    var
        RewardLevel: Text;
}