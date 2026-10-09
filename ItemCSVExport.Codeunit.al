
codeunit 50103 "Item CSV Export"
{
    procedure ExportItems()
    var
        Item: Record Item;
        TempBlob: Codeunit "Temp Blob";
        OutStream: OutStream;
        InStream: InStream;
        FileName: Text;
        
    begin
        // CSV-Datei im Speicher erzeugen
        TempBlob.CreateOutStream(OutStream, TextEncoding::UTF8);

        // Kopfzeile
        WriteCSVLine(
            OutStream,
            'Nr.',
            'Bezeichnung',
            'Basiseinheit'
        );
     
        // Alle Artikel exportieren
        Item.Reset();

        if Item.FindSet() then
            repeat
                WriteCSVLine(
                    OutStream,
                    Item."No.",
                    Item.Description,
                    Item."Base Unit of Measure"
                );
            until Item.Next() = 0;

        // Datei zum Download bereitstellen
        TempBlob.CreateInStream(InStream, TextEncoding::UTF8);

        FileName :=
            'Artikel_' +
            Format(
                Today(),
                0,
                '<Year4><Month,2><Day,2>'
            ) +
            '.csv';

        DownloadFromStream(
            InStream,
            'Artikel exportieren',
            '',
            'CSV-Datei (*.csv)|*.csv',
            FileName
        );
    end;

    local procedure WriteCSVLine(
        var OutStream: OutStream;
        Field1: Text;
        Field2: Text;
        Field3: Text)
    begin
        OutStream.WriteText(
            CSVField(Field1) + ';' +
            CSVField(Field2) + ';' +
            CSVField(Field3)
        );

        OutStream.WriteText();
    end;

    local procedure CSVField(Value: Text): Text
    begin
        // Doppelte Anführungszeichen innerhalb
        // eines Feldes verdoppeln.
        Value := Value.Replace('"', '""');

        exit('"' + Value + '"');
    end;
}
