object Form1: TForm1
  Left = 0
  Top = 0
  Align = alRight
  Caption = 'Calculator'
  ClientHeight = 789
  ClientWidth = 1517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 160
    Top = 224
    Width = 225
    Height = 161
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = NumInEdit
  end
  object Button2: TButton
    Left = 447
    Top = 224
    Width = 225
    Height = 161
    Caption = '2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = NumInEdit
  end
  object Button3: TButton
    Left = 735
    Top = 224
    Width = 218
    Height = 161
    Caption = '3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = NumInEdit
  end
  object Button4: TButton
    Left = 160
    Top = 416
    Width = 225
    Height = 161
    Caption = '4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = NumInEdit
  end
  object Button5: TButton
    Left = 447
    Top = 416
    Width = 217
    Height = 161
    Caption = '5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = NumInEdit
  end
  object Button6: TButton
    Left = 735
    Top = 416
    Width = 218
    Height = 165
    Caption = '6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = NumInEdit
  end
  object Button7: TButton
    Left = 160
    Top = 608
    Width = 225
    Height = 161
    Caption = '7'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = NumInEdit
  end
  object Button8: TButton
    Left = 447
    Top = 608
    Width = 225
    Height = 161
    Caption = '8'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = NumInEdit
  end
  object Button9: TButton
    Left = 735
    Top = 608
    Width = 218
    Height = 161
    Caption = '9'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = NumInEdit
  end
  object Button0: TButton
    Left = 1024
    Top = 608
    Width = 225
    Height = 161
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -60
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = NumInEdit
  end
  object btnAdd: TButton
    Left = 1024
    Top = 414
    Width = 225
    Height = 163
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -128
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = OpBtn
  end
  object btnmin: TButton
    Left = 1024
    Top = 224
    Width = 225
    Height = 161
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -128
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = OpBtn
  end
  object btndivide: TButton
    Left = 1288
    Top = 224
    Width = 213
    Height = 161
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -128
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = OpBtn
  end
  object btnmutply: TButton
    Left = 1288
    Top = 414
    Width = 213
    Height = 163
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -128
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = OpBtn
  end
  object btnequal: TButton
    Left = 1288
    Top = 608
    Width = 213
    Height = 161
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -128
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = btnequalClick
  end
  object btnClear: TButton
    Left = 1032
    Top = 57
    Width = 477
    Height = 137
    Caption = 'Clear'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -128
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = btnClearClick
  end
  object edtInput: TEdit
    Left = 160
    Top = 65
    Width = 793
    Height = 153
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -108
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    Text = 'Input Integer'
  end
end
