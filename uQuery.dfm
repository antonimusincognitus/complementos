object dmQuery: TdmQuery
  OldCreateOrder = False
  Left = 618
  Top = 201
  Height = 150
  Width = 215
  object dbTransaction: TpFIBTransaction
    TimeoutAction = TARollback
    CSMonitorSupport.Enabled = csmeDatabaseDriven
    Left = 40
    Top = 16
  end
  object dbQuery: TpFIBQuery
    Transaction = dbTransaction
    CSMonitorSupport.Enabled = csmeTransactionDriven
    Left = 128
    Top = 24
    qoStartTransaction = True
  end
end
