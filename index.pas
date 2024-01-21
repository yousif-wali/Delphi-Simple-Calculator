unit CalculatorUnit;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls;

type
  TFormCalculator = class(TForm)
    EditDisplay: TEdit;
    ButtonOne: TButton;
    ButtonTwo: TButton;
    ButtonAdd: TButton;
    ButtonEquals: TButton;
    // ... other components ...

    procedure ButtonOneClick(Sender: TObject);
    procedure ButtonTwoClick(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonEqualsClick(Sender: TObject);
    // ... other event handlers ...

  private
    { Private declarations }
    FOperand: Double;
    FOperator: Char;
  public
    { Public declarations }
  end;

var
  FormCalculator: TFormCalculator;

implementation

{$R *.dfm}

procedure TFormCalculator.ButtonOneClick(Sender: TObject);
begin
  EditDisplay.Text := EditDisplay.Text + '1';
end;

procedure TFormCalculator.ButtonTwoClick(Sender: TObject);
begin
  EditDisplay.Text := EditDisplay.Text + '2';
end;

procedure TFormCalculator.ButtonAddClick(Sender: TObject);
begin
  FOperand := StrToFloat(EditDisplay.Text);
  FOperator := '+';
  EditDisplay.Clear;
end;

procedure TFormCalculator.ButtonEqualsClick(Sender: TObject);
var
  SecondOperand: Double;
begin
  SecondOperand := StrToFloat(EditDisplay.Text);
  case FOperator of
    '+': EditDisplay.Text := FloatToStr(FOperand + SecondOperand);
    // ... handle other operations ...
  end;
end;

end.
