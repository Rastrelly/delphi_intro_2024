unit uDelphiIntro2024;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    bCalculate: TButton;
    bCompare: TButton;
    bCalcSqRoots: TButton;
    edSqA: TEdit;
    edSqB: TEdit;
    edSqC: TEdit;
    edSqX1: TEdit;
    edSqX2: TEdit;
    edValA: TEdit;
    edValB: TEdit;
    edValC: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    labelSymPlus: TLabel;
    procedure bCalcSqRootsClick(Sender: TObject);
    procedure bCalculateClick(Sender: TObject);
    procedure bCompareClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a,b,c:integer;
  ca,cb,cc,x1,x2,d:real;
  g:boolean;
  //(a<b)

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.bCalculateClick(Sender: TObject);
begin
  a:=StrToInt(edValA.Text);
  b:=StrToInt(edValB.Text);
  c:=a+b;
  edValC.Text:=IntToStr(c)
end;

procedure TForm1.bCalcSqRootsClick(Sender: TObject);
begin
  ca:=StrToFloat(edSqA.Text);
  cb:=StrToFloat(edSqB.Text);
  cc:=StrToFloat(edSqC.Text);

  d:=power(cb,2)-4*ca*cc; //power(cb,2) == sqr(cb) == cb*cb

  if (d>=0) then
  begin
    //1 or 2 roots
    x1:=(-cb+sqrt(d))/(2*ca);
    if (d=0) then x2:=x1 else
    x2:=(-cb-sqrt(d))/(2*ca);
    edSqX1.Text:=FloatToStr(x1);
    edSqX2.Text:=FloatToStr(x2);
  end
  else
  begin
    //no roots
    edSqX1.Text:='N/A';
    edSqX2.Text:='N/A';
  end;
end;

procedure TForm1.bCompareClick(Sender: TObject);
begin
  a:=StrToInt(edValA.Text);
  b:=StrToInt(edValB.Text);
  if (a<b) then
  begin
    edValC.Text:='a<b';
  end
  else
  begin
    if (a=b) then
      edValC.Text:='a=b'
    else
      edValC.Text:='a>=b';
  end;
end;

end.

