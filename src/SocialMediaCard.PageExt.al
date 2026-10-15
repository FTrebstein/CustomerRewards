pageextension 50110 "Social Media Card" extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            group(SocialMedia)
            {
                Caption = 'Social Media';
                field(Facebook; Rec.Facebook)
                {
                    ApplicationArea = All;
                    Caption = 'Facebook';
                    ToolTip = 'Facebook profile of the customer.';
                }

                field(Twitter; Rec.Twitter)
                {
                    ApplicationArea = All;
                    Caption = 'Twitter';
                    ToolTip = 'Twitter profile of the customer.';
                }
                field(Instagram; Rec.Instagram)
                {
                    ApplicationArea = All;
                    Caption = 'Instagram';
                    ToolTip = 'Instagram profile of the customer.';
                }
                field(LinkedIn; Rec.LinkedIn)
                {
                    ApplicationArea = All;
                    Caption = 'LinkedIn';
                    ToolTip = 'LinkedIn profile of the customer.';
                }
            }
        }
        // Add changes to page layout here
    }



}
