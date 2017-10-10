object frmGridListeForm: TfrmGridListeForm
  Left = 0
  Top = 0
  Caption = 'frmGridListeForm'
  ClientHeight = 404
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGridGelis: TcxGrid
    Left = 0
    Top = 0
    Width = 770
    Height = 404
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 72
    object cxGridGelisler: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'SGK Ba'#351'vuru Bilgileri'
          FixedKind = fkLeft
        end
        item
          Caption = 'Ba'#351'vuru Detay Bilgileri'
        end>
      object cxGridGelislerTakpNo: TcxGridDBBandedColumn
        Caption = 'Takip No'
        DataBinding.FieldName = 'TakIpNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridGelislerBasvuruNo: TcxGridDBBandedColumn
        Caption = 'Ba'#351'vuru No'
        DataBinding.FieldName = 'BasvuruNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridGelislerdosyaNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'dosyaNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridGelislergelisNo: TcxGridDBBandedColumn
        Caption = 'Geli'#351
        DataBinding.FieldName = 'gelisNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 38
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridGelislerBHDAT: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tarih'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridGelislerdoktor: TcxGridDBBandedColumn
        Caption = 'Doktor'
        DataBinding.FieldName = 'doktor'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 63
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridGelislerSERVIS: TcxGridDBBandedColumn
        Caption = 'Servis'
        DataBinding.FieldName = 'SERVIS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 56
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridGelislerTEDAVITURU: TcxGridDBBandedColumn
        Caption = 'Tedavi'
        DataBinding.FieldName = 'TEDAVITURU'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 48
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridGelislerKullanici: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Kullanici'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 58
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridGelislerilkTakipNo: TcxGridDBBandedColumn
        Caption = #304'lk Takip No'
        DataBinding.FieldName = 'ilkTakipNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 67
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridGelislerSIRANO: TcxGridDBBandedColumn
        Caption = 'SiraNo'
        DataBinding.FieldName = 'SIRANO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridGelisleryupass: TcxGridDBBandedColumn
        DataBinding.FieldName = 'yupass'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGridGelisleryardimHakki: TcxGridDBBandedColumn
        DataBinding.FieldName = 'yardimHakki'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGridGelislerSYSTakipNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SYSTakipNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object cxGridGelisLevel1: TcxGridLevel
      GridView = cxGridGelisler
    end
  end
end
