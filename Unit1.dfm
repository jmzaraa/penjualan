object Form1: TForm1
  Left = 235
  Top = 139
  Width = 743
  Height = 480
  Caption = 'DASHBOARD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 24
    Top = 16
    object F1: TMenuItem
      Caption = 'FILE'
      object L2: TMenuItem
        Caption = 'LOGIN'
        OnClick = L2Click
      end
      object L3: TMenuItem
        Caption = 'LOGOUT'
        OnClick = L3Click
      end
    end
    object D1: TMenuItem
      Caption = 'DATA MASTER'
      object K1: TMenuItem
        Caption = 'KATAGORI'
        OnClick = K1Click
      end
      object S1: TMenuItem
        Caption = 'SATUAN'
        OnClick = S1Click
      end
      object S2: TMenuItem
        Caption = 'SUPPLIER'
        OnClick = S2Click
      end
      object K2: TMenuItem
        Caption = 'CUSTOMER'
        OnClick = K2Click
      end
      object U1: TMenuItem
        Caption = 'USER'
        OnClick = U1Click
      end
      object B1: TMenuItem
        Caption = 'BARANG'
        OnClick = B1Click
      end
    end
    object T1: TMenuItem
      Caption = 'TRANSAKSI'
      object P1: TMenuItem
        Caption = 'PENJUALAN'
      end
      object P2: TMenuItem
        Caption = 'PEMBELIAN'
      end
    end
    object L1: TMenuItem
      Caption = 'LAPORAN'
      object L4: TMenuItem
        Caption = 'LAPORAN PENJUALAN'
      end
      object L5: TMenuItem
        Caption = 'LAPORAN STOK BARANG'
      end
      object L6: TMenuItem
        Caption = 'LAPORAN BARANG'
      end
    end
  end
end
