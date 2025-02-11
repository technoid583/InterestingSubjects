unit InterestingSubjectsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TInterestingSubjectsForm = class(TForm)
    MathCheckBox: TCheckBox;
    PhysicsCheckBox: TCheckBox;
    ChemistryCheckBox: TCheckBox;
    IctCheckBox: TCheckBox;
    SubmitBtn: TButton;
    StatisticsBtn: TButton;
    StatisticsLbl: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SubmitBtnClick(Sender: TObject);
    procedure StatisticsBtnClick(Sender: TObject);
    procedure CheckBoxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InterestingSubjectsForm: TInterestingSubjectsForm;
  n: array[0..4] of integer;

implementation

{$R *.dfm}

procedure TInterestingSubjectsForm.FormCreate(Sender: TObject);
  var i: integer;
begin
  for i := 0 to 4 do n[i] := 0;
end;

procedure TInterestingSubjectsForm.CheckBoxClick(Sender: TObject);
begin
   SubmitBtn.Enabled := MathCheckBox.Checked or PhysicsCheckBox.Checked or
                        ChemistryCheckBox.Checked or IctCheckBox.Checked;
end;

procedure TInterestingSubjectsForm.StatisticsBtnClick(Sender: TObject);
begin

//  StatisticsLbl.Visible := not(StatisticsLbl.Visible); !Toggle the Visibility
//  showMessage(Sender as TButton).Name; !Get a Sender's Name
//  (!) if (Sender as TButton).Name <> 'StatisticsBtn' then

  // Check for recursiveness, If its the current button running the procedure then Toggle the visibility
  if (Sender as TButton).Name = 'StatisticsBtn' then
    StatisticsLbl.Visible := not(StatisticsLbl.Visible);


  StatisticsLbl.Caption := 'Total: ' + IntToStr(n[0]);
  StatisticsLbl.Caption := StatisticsLbl.Caption + ', Math: ' + IntToStr(n[1]);
  StatisticsLbl.Caption := StatisticsLbl.Caption + ', Physics: ' + IntToStr(n[2]);
  StatisticsLbl.Caption := StatisticsLbl.Caption + ', Chemistery: ' + IntToStr(n[3]);
  StatisticsLbl.Caption := StatisticsLbl.Caption + ', ICT: ' + IntToStr(n[4]);

end;

procedure TInterestingSubjectsForm.SubmitBtnClick(Sender: TObject);
begin
  n[0] := n[0] + 1;

  if MathCheckBox.Checked then n[1] := n[1] + 1; MathCheckBox.Checked := False;
  if PhysicsCheckBox.Checked then n[2] := n[2] + 1; PhysicsCheckBox.Checked := False;
  if ChemistryCheckBox.Checked then n[3] := n[3] + 1; ChemistryCheckBox.Checked := False;
  if IctCheckBox.Checked then n[4] := n[4] + 1; IctCheckBox.Checked := False;

  if StatisticsLbl.Visible then StatisticsBtnClick(Sender);
  StatisticsBtn.Enabled := n[0] <> 0;
end;
end.
