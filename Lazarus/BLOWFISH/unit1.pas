unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;

type

  { TForm1 }

  TForm1 = class(TForm)
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}


{ TForm1 }
USES UNIT4;

procedure TForm1.Button1Click(Sender: TObject);
const
 my_key = 33189;
 var
  sEncrypted, sDecrypted :AnsiString;
begin
  Encrypt a string
  sEncrypted := Encrypt('this is a sample text
    to encrypt...abcd 123 {}[]?=)=(',my_key);
  // Show encrypted string
  ShowMessage(sEncrypted);
  // Decrypt the string
  sDecrypted := Decrypt(sEncrypted,my_key);
   // Show decrypted string
  ShowMessage(sDecrypted);
end;

end.

