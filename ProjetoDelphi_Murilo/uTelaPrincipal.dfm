object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Bem vindo!'
  ClientHeight = 405
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 405
    Align = alClient
    Anchors = [akLeft, akRight]
    TabOrder = 0
    DesignSize = (
      774
      405)
    object Label1: TLabel
      Left = 56
      Top = 25
      Width = 630
      Height = 30
      Anchors = [akLeft, akRight]
      Caption = 'Bem vindo ao gerenciador de celulares'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Fixedsys'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 208
      Top = 94
      Width = 333
      Height = 26
      Anchors = [akLeft, akRight]
      Caption = 'Escolha abaixo o que deseja fazer'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Franklin Gothic Medium'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnCadastroCidades: TButton
      Left = 520
      Top = 138
      Width = 237
      Height = 162
      Anchors = [akLeft, akRight]
      Caption = 'Cadastro de cidades'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnCadastroCidadesClick
    end
    object btnCadastroNumeros: TButton
      Left = 5
      Top = 138
      Width = 237
      Height = 162
      Anchors = [akLeft, akRight]
      Caption = 'Cadastro de numeros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCadastroNumerosClick
    end
    object btnCadastroCliente: TButton
      Left = 264
      Top = 138
      Width = 237
      Height = 162
      Anchors = [akLeft, akRight]
      Caption = 'Cadastro de clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnCadastroClienteClick
    end
  end
end
