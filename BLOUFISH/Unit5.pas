unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
const
 my_key = 33189;
var
  sEncrypted, sDecrypted :AnsiString;
begin

  sEncrypted := Encrypt('this is a sample text to encrypt...abcd 123 {}[]?=)=(',my_key);
  // Show encrypted string
  ShowMessage(sEncrypted);
  // Decrypt the string
  sDecrypted := Decrypt(sEncrypted,my_key);
   // Show decrypted string
  ShowMessage(sDecrypted);
end;

end.
