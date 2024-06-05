program InterestingSubjects;

uses
  Vcl.Forms,
  InterestingSubjectsUnit in 'InterestingSubjectsUnit.pas' {InterestingSubjectsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TInterestingSubjectsForm, InterestingSubjectsForm);
  Application.Run;
end.
