unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button0: TButton;
    btnAdd: TButton;
    btnmin: TButton;
    btndivide: TButton;
    btnmutply: TButton;
    btnequal: TButton;
    btnClear: TButton;
    edtInput: TEdit;
    function returnAnswer(Sender: TObject; a: double; b: double; operV: char): double;
    procedure btnClearClick(Sender: TObject);
    procedure ClearFun(Sender: TObject);
    procedure OpBtn(Sender: TObject);
    procedure btnequalClick(Sender: TObject);
    procedure ClearAll(Sender: TObject);
    procedure SetAandClear(Sender:TObject; SetOper: char);
    function Caption2char(Sender:TObject; SetTcap: TCaption):char;
    procedure Num2edit(Sender:TObject; SetTnum: TCaption);
    procedure NumInEdit(Sender: TObject);
  private
    { Private declarations }
    intgerA: double;
    intgerB: double;
    oper: char;
    when2clr: bool;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  intA, intB : string;


implementation

{$R *.dfm}

{
//Name:	Num2edit
//Precondition: takes in the TObject and TCaption
//Postcondition: Edit the input te
//Description: Takes a caption and replace 0 or 'Input Edit' ;
}
procedure TForm1.Num2edit(Sender: TObject; SetTnum: TCaption);
var
  newString: string;
  addChar: char;
begin
  newString := edtInput.Text;
  if newString = 'Input Integer' then
    begin
     ClearFun(Sender);

    end;

  if newString = '0' then
    addChar := Caption2char(Sender,SetTnum);
  edtInput.Text := newString + addchar;

end;
{
//Name:	NumInEdit
//Precondition:Takes and TObject
//Postcondition: To takes a caption from an intger button add or places edit text
//Description: The purpose of this function is to take integer caption and replace or add
// to the to edtInput Tedit
}
procedure TForm1.NumInEdit(Sender: TObject);
var
b : TButton;

begin
b := Sender as TButton;
  if (edtInput.Text = '0') or (edtInput.Text = 'Input Integer') then
  begin
        edtInput.Text := b.Caption;
  end
  else
    edtInput.Text := edtInput.Text + b.Caption;



end;
{
//Name: OpbBtn
//Precondition: Takes in TObject
//Postcondition:Assigns operator to
//Description: To assign the current_string to " " ;
}
procedure TForm1.OpBtn(Sender: TObject);
var
b :TButton;

begin
  b := Sender as TButton;
  SetAandClear(Sender,Caption2char(Sender,b.Caption));
end;
{
//Name: ClearFun
//Precondition:Take in TObject
//Postcondition:Clear the Tedit
//Description: The purpose of this function is to take a tedit;
}


procedure TForm1.ClearFun(Sender: TObject);
begin
    edtInput.Text := '0';

end;
{
//Name: ClearAll
//Precondition:Takes in a TObject
//Postcondition:Cears all varables
//Description: The purpose of this function is to clear a variables ;
}
procedure TForm1.ClearAll(Sender: TObject);
begin
    edtInput.Text := '0';
    intgerA := 0;
    intgerB := 0;
    oper := '0';
end;
{
//Name: SetAandClear
//Precondition: Takes in a Tobject and char
//Postcondition:Set IntegerA and the operator and clears the
//Description: Set and Integer and operator and clears Tedit ;
}
procedure TForm1.SetAandClear(Sender:TObject; SetOper: char);

begin
       intgerA:= StrToFloat(edtInput.Text);
       oper := SetOper;
       ClearFun(Sender);
end;

{
//Name: Caption2char
//Precondition: Takes in TCaption and TObject
//Postcondition:Sets a TCaption as Char
//Description: Takes in Tcaption and converts to char ;
}
function TForm1.Caption2char(Sender: TObject; SetTcap: TCaption):char;
var
  myChar: Char;
  myCaption: string;

begin
  myCaption := SetTcap;
  if Length(myCaption) > 0 then
    myChar := myCaption[1]
    else
    myChar := #0;

  Result:= myChar;

end;
{
//Name: btnClearClick
//Precondition:TObject and clear
//Postcondition: To clear all varibles
//Description: Clears all varibles ;
}

procedure TForm1.btnClearClick(Sender: TObject);
begin
    ClearFun(Sender)
end;
{
//Name:	btnequalClick
//Precondition:There are no precondition in this function
//Postcondition:Takes an IntgerA and IntegerB and Oper perform calculation
//Description: Takes in hte IntegerA and IntegerB and Oper perform calculatin
// and  sets the answer to InputEdit ;
}

procedure TForm1.btnequalClick(Sender: TObject);
var
  anwser: double;
begin
  intgerB := StrToFloat(edtInput.Text);
  anwser := returnAnswer(Sender,intgerA,intgerB,oper);
  edtInput.Text := FloatToStr(anwser);

end;
{
//Name: returnAnswer
//Precondition:Takes IntgerA and IntgerB and Oper and TObject
//Postcondition: returns and awswer
//Description: returns the answer after operation are formed ;
}

function TForm1.returnAnswer(Sender: TObject; a: double; b: double; operV: char): double;

begin

  if operV = '*' then Result := a * b
  else if operV = '/' then Result := a / b
  else if operV = '+' then Result := a + b
  else if operV = '-' then Result := a - b
  else Result := 0.00;

end;

end.
