object InterestingSubjectsForm: TInterestingSubjectsForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'InterestingSubjects'
  ClientHeight = 156
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object StatisticsLbl: TLabel
    Left = 24
    Top = 128
    Width = 31
    Height = 15
    Caption = 'Total: '
    Visible = False
  end
  object MathCheckBox: TCheckBox
    Left = 24
    Top = 24
    Width = 89
    Height = 17
    Caption = 'Math'
    TabOrder = 0
    OnClick = CheckBoxClick
  end
  object PhysicsCheckBox: TCheckBox
    Left = 24
    Top = 47
    Width = 89
    Height = 17
    Caption = 'Physics'
    TabOrder = 1
    OnClick = CheckBoxClick
  end
  object ChemistryCheckBox: TCheckBox
    Left = 24
    Top = 70
    Width = 89
    Height = 17
    Caption = 'Chemistery'
    TabOrder = 2
    OnClick = CheckBoxClick
  end
  object IctCheckBox: TCheckBox
    Left = 24
    Top = 93
    Width = 89
    Height = 17
    Caption = 'ICT'
    TabOrder = 3
    OnClick = CheckBoxClick
  end
  object SubmitBtn: TButton
    Left = 208
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Submit'
    Enabled = False
    TabOrder = 4
    OnClick = SubmitBtnClick
  end
  object StatisticsBtn: TButton
    Left = 208
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Statistics'
    Enabled = False
    TabOrder = 5
    OnClick = StatisticsBtnClick
  end
end
