--
-- Autogenerated by Thrift
--
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
-- @generated
--


require 'Thrift'
require 'struct_constants'

ApiResult = __TObject:new{
  resultCode,
  resultMsg,
  data
}

function ApiResult:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I32 then
        self.resultCode = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.resultMsg = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRING then
        self.data = iprot:readString()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function ApiResult:write(oprot)
  oprot:writeStructBegin('ApiResult')
  if self.resultCode ~= nil then
    oprot:writeFieldBegin('resultCode', TType.I32, 1)
    oprot:writeI32(self.resultCode)
    oprot:writeFieldEnd()
  end
  if self.resultMsg ~= nil then
    oprot:writeFieldBegin('resultMsg', TType.STRING, 2)
    oprot:writeString(self.resultMsg)
    oprot:writeFieldEnd()
  end
  if self.data ~= nil then
    oprot:writeFieldBegin('data', TType.STRING, 3)
    oprot:writeString(self.data)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

BalanceResult = __TObject:new{
  resultCode,
  resultMsg,
  balance
}

function BalanceResult:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I32 then
        self.resultCode = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.resultMsg = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.I32 then
        self.balance = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function BalanceResult:write(oprot)
  oprot:writeStructBegin('BalanceResult')
  if self.resultCode ~= nil then
    oprot:writeFieldBegin('resultCode', TType.I32, 1)
    oprot:writeI32(self.resultCode)
    oprot:writeFieldEnd()
  end
  if self.resultMsg ~= nil then
    oprot:writeFieldBegin('resultMsg', TType.STRING, 2)
    oprot:writeString(self.resultMsg)
    oprot:writeFieldEnd()
  end
  if self.balance ~= nil then
    oprot:writeFieldBegin('balance', TType.I32, 3)
    oprot:writeI32(self.balance)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

AccountRecords = __TObject:new{
  type,
  limit,
  timestamp
}

function AccountRecords:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I16 then
        self.type = iprot:readI16()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.DOUBLE then
        self.limit = iprot:readDouble()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.I64 then
        self.timestamp = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function AccountRecords:write(oprot)
  oprot:writeStructBegin('AccountRecords')
  if self.type ~= nil then
    oprot:writeFieldBegin('type', TType.I16, 1)
    oprot:writeI16(self.type)
    oprot:writeFieldEnd()
  end
  if self.limit ~= nil then
    oprot:writeFieldBegin('limit', TType.DOUBLE, 2)
    oprot:writeDouble(self.limit)
    oprot:writeFieldEnd()
  end
  if self.timestamp ~= nil then
    oprot:writeFieldBegin('timestamp', TType.I64, 3)
    oprot:writeI64(self.timestamp)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

RecordsResult = __TObject:new{
  resultCode,
  resultMsg,
  records
}

function RecordsResult:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I32 then
        self.resultCode = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.resultMsg = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.LIST then
        self.records = {}
        local _etype3, _size0 = iprot:readListBegin()
        for _i=1,_size0 do
          local _elem4 = AccountRecords:new{}
          _elem4:read(iprot)
          table.insert(self.records, _elem4)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function RecordsResult:write(oprot)
  oprot:writeStructBegin('RecordsResult')
  if self.resultCode ~= nil then
    oprot:writeFieldBegin('resultCode', TType.I32, 1)
    oprot:writeI32(self.resultCode)
    oprot:writeFieldEnd()
  end
  if self.resultMsg ~= nil then
    oprot:writeFieldBegin('resultMsg', TType.STRING, 2)
    oprot:writeString(self.resultMsg)
    oprot:writeFieldEnd()
  end
  if self.records ~= nil then
    oprot:writeFieldBegin('records', TType.LIST, 3)
    oprot:writeListBegin(TType.STRUCT, #self.records)
    for _,iter5 in ipairs(self.records) do
      iter5:write(oprot)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

TravelRecord = __TObject:new{
  startTimeStamp,
  duration,
  amount
}

function TravelRecord:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.startTimeStamp = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.I32 then
        self.duration = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.I32 then
        self.amount = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function TravelRecord:write(oprot)
  oprot:writeStructBegin('TravelRecord')
  if self.startTimeStamp ~= nil then
    oprot:writeFieldBegin('startTimeStamp', TType.I64, 1)
    oprot:writeI64(self.startTimeStamp)
    oprot:writeFieldEnd()
  end
  if self.duration ~= nil then
    oprot:writeFieldBegin('duration', TType.I32, 2)
    oprot:writeI32(self.duration)
    oprot:writeFieldEnd()
  end
  if self.amount ~= nil then
    oprot:writeFieldBegin('amount', TType.I32, 3)
    oprot:writeI32(self.amount)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

TravelResult = __TObject:new{
  resultCode,
  resultMsg,
  data,
  mileage,
  discharge,
  calorie,
  records
}

function TravelResult:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I32 then
        self.resultCode = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.resultMsg = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRING then
        self.data = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.DOUBLE then
        self.mileage = iprot:readDouble()
      else
        iprot:skip(ftype)
      end
    elseif fid == 5 then
      if ftype == TType.DOUBLE then
        self.discharge = iprot:readDouble()
      else
        iprot:skip(ftype)
      end
    elseif fid == 6 then
      if ftype == TType.DOUBLE then
        self.calorie = iprot:readDouble()
      else
        iprot:skip(ftype)
      end
    elseif fid == 7 then
      if ftype == TType.LIST then
        self.records = {}
        local _etype9, _size6 = iprot:readListBegin()
        for _i=1,_size6 do
          local _elem10 = TravelRecord:new{}
          _elem10:read(iprot)
          table.insert(self.records, _elem10)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function TravelResult:write(oprot)
  oprot:writeStructBegin('TravelResult')
  if self.resultCode ~= nil then
    oprot:writeFieldBegin('resultCode', TType.I32, 1)
    oprot:writeI32(self.resultCode)
    oprot:writeFieldEnd()
  end
  if self.resultMsg ~= nil then
    oprot:writeFieldBegin('resultMsg', TType.STRING, 2)
    oprot:writeString(self.resultMsg)
    oprot:writeFieldEnd()
  end
  if self.data ~= nil then
    oprot:writeFieldBegin('data', TType.STRING, 3)
    oprot:writeString(self.data)
    oprot:writeFieldEnd()
  end
  if self.mileage ~= nil then
    oprot:writeFieldBegin('mileage', TType.DOUBLE, 4)
    oprot:writeDouble(self.mileage)
    oprot:writeFieldEnd()
  end
  if self.discharge ~= nil then
    oprot:writeFieldBegin('discharge', TType.DOUBLE, 5)
    oprot:writeDouble(self.discharge)
    oprot:writeFieldEnd()
  end
  if self.calorie ~= nil then
    oprot:writeFieldBegin('calorie', TType.DOUBLE, 6)
    oprot:writeDouble(self.calorie)
    oprot:writeFieldEnd()
  end
  if self.records ~= nil then
    oprot:writeFieldBegin('records', TType.LIST, 7)
    oprot:writeListBegin(TType.STRUCT, #self.records)
    for _,iter11 in ipairs(self.records) do
      iter11:write(oprot)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end