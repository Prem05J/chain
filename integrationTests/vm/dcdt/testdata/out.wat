(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i64)))
  (type (;10;) (func (param i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i64 i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;13;) (func (param i64 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param i64 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i32 i32) (result i64)))
  (type (;17;) (func (param i32 i32 i32 i32 i32)))
  (type (;18;) (func (param i32 i32 i32 i64 i32 i32)))
  (type (;19;) (func (param i32 i32 i64 i32 i64 i32 i32)))
  (type (;20;) (func (param i32 i64 i32)))
  (type (;21;) (func (param i64)))
  (type (;22;) (func (param i64 i32)))
  (type (;23;) (func (result i64)))
  (type (;24;) (func (param i32) (result i64)))
  (type (;25;) (func (param i64) (result i64)))
  (import "env" "bigIntSetInt64" (func (;0;) (type 9)))
  (import "env" "bigIntAdd" (func (;1;) (type 4)))
  (import "env" "mBufferNew" (func (;2;) (type 6)))
  (import "env" "mBufferAppend" (func (;3;) (type 5)))
  (import "env" "mBufferFinish" (func (;4;) (type 3)))
  (import "env" "managedExecuteOnDestContext" (func (;5;) (type 14)))
  (import "env" "managedSCAddress" (func (;6;) (type 2)))
  (import "env" "bigIntGetCallValue" (func (;7;) (type 2)))
  (import "env" "managedGetMultiDCDTCallValue" (func (;8;) (type 2)))
  (import "env" "mBufferGetLength" (func (;9;) (type 3)))
  (import "env" "signalError" (func (;10;) (type 1)))
  (import "env" "mBufferAppendBytes" (func (;11;) (type 10)))
  (import "env" "managedSignalError" (func (;12;) (type 2)))
  (import "env" "getNumDCDTTransfers" (func (;13;) (type 6)))
  (import "env" "smallIntGetUnsignedArgument" (func (;14;) (type 24)))
  (import "env" "getNumArguments" (func (;15;) (type 6)))
  (import "env" "managedGetOriginalTxHash" (func (;16;) (type 2)))
  (import "env" "getGasLeft" (func (;17;) (type 23)))
  (import "env" "mBufferSetBytes" (func (;18;) (type 10)))
  (import "env" "mBufferCopyByteSlice" (func (;19;) (type 8)))
  (import "env" "bigIntTDiv" (func (;20;) (type 4)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;21;) (type 5)))
  (import "env" "mBufferToBigIntUnsigned" (func (;22;) (type 5)))
  (import "env" "mBufferStorageLoad" (func (;23;) (type 5)))
  (import "env" "mBufferStorageStore" (func (;24;) (type 5)))
  (import "env" "mBufferGetArgument" (func (;25;) (type 5)))
  (import "env" "managedTransferValueExecute" (func (;26;) (type 12)))
  (import "env" "managedAsyncCall" (func (;27;) (type 7)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func (;28;) (type 12)))
  (import "env" "managedWriteLog" (func (;29;) (type 1)))
  (import "env" "checkNoPayment" (func (;30;) (type 0)))
  (import "env" "finish" (func (;31;) (type 1)))
  (import "env" "smallIntFinishUnsigned" (func (;32;) (type 21)))
  (import "env" "bigIntFinishUnsigned" (func (;33;) (type 2)))
  (import "env" "managedExecuteOnSameContext" (func (;34;) (type 14)))
  (import "env" "managedExecuteReadOnly" (func (;35;) (type 13)))
  (import "env" "managedCreateContract" (func (;36;) (type 15)))
  (import "env" "managedDeployFromSourceContract" (func (;37;) (type 15)))
  (import "env" "managedUpgradeContract" (func (;38;) (type 11)))
  (import "env" "managedUpgradeFromSourceContract" (func (;39;) (type 11)))
  (import "env" "bigIntSign" (func (;40;) (type 3)))
  (import "env" "mBufferGetByteSlice" (func (;41;) (type 8)))
  (import "env" "mBufferNewFromBytes" (func (;42;) (type 5)))
  (func (;43;) (type 3) (param i32) (result i32)
    (local i32)
    call 44
    local.tee 1
    i64.const 0
    call 0
    local.get 1
    local.get 1
    local.get 0
    call 1
    local.get 1)
  (func (;44;) (type 6) (result i32)
    (local i32)
    i32.const 1049224
    i32.const 1049224
    i32.load
    i32.const -1
    i32.add
    local.tee 0
    i32.store
    local.get 0)
  (func (;45;) (type 17) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      local.get 1
      i32.ge_u
      if  ;; label = @2
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        call 46
        unreachable
      end
      call 46
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    local.get 3
    i32.add
    i32.store)
  (func (;46;) (type 0)
    call 73
    unreachable)
  (func (;47;) (type 3) (param i32) (result i32)
    (local i32)
    call 2
    local.tee 1
    local.get 0
    call 3
    drop
    local.get 1)
  (func (;48;) (type 1) (param i32 i32)
    (local i32 i64)
    local.get 0
    local.get 1
    i32.load
    local.tee 2
    local.get 1
    i32.load offset=4
    i32.le_u
    if (result i64)  ;; label = @1
      local.get 1
      local.get 2
      i32.const 1
      i32.add
      i32.store
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      i32.load offset=8
      i32.load
      local.get 2
      call 49
      i64.const 1
    else
      i64.const 0
    end
    i64.store)
  (func (;49;) (type 4) (param i32 i32 i32)
    (local i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    local.get 2
    call 128
    call 123
    call 112
    local.get 3
    call 108
    local.tee 2
    call 9
    i32.const 4
    i32.eq
    if  ;; label = @1
      local.get 3
      i32.const 0
      i32.store offset=24
      local.get 2
      i32.const 0
      local.get 3
      i32.const 24
      i32.add
      i32.const 4
      call 70
      drop
      i32.const 2147483646
      local.get 2
      local.get 3
      i32.load offset=24
      i32.const 1145849669
      i32.eq
      select
      local.set 2
    end
    local.get 3
    i64.const 0
    i64.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    call 109
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    call 110
    local.set 4
    local.get 3
    call 108
    call 118
    local.set 1
    local.get 3
    i32.load offset=4
    local.get 3
    i32.load
    i32.eq
    if  ;; label = @1
      local.get 3
      i32.const 16
      i32.add
      i32.load8_u
      if  ;; label = @2
        i32.const 1059228
        i32.const 0
        i32.store
        i32.const 1059232
        i32.const 0
        i32.store8
      end
      local.get 0
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 4
      i64.store
      local.get 3
      i32.const 32
      i32.add
      global.set 0
      return
    end
    i32.const 1048928
    i32.const 14
    call 111
    unreachable)
  (func (;50;) (type 2) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    block (result i32)  ;; label = @1
      i32.const 1059232
      i32.load8_u
      local.tee 2
      i32.eqz
      if  ;; label = @2
        i32.const 1059232
        i32.const 1
        i32.store8
        i32.const 1059228
        i32.const 0
        i32.store
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call 51
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 1049208
        i32.const 0
        call 52
        call 53
        br 1 (;@1;)
      end
      i32.const 1049208
      i32.const 0
      call 54
    end
    i32.store
    local.get 0
    local.get 2
    i32.const 1
    i32.xor
    i32.store8 offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;51;) (type 1) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 1049228
    i32.const 10000
    local.get 1
    call 146
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;52;) (type 7) (param i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 0
      local.get 2
      local.get 1
      call 177
      return
    end
    call 73
    unreachable)
  (func (;53;) (type 6) (result i32)
    (local i32)
    call 44
    local.tee 0
    i32.const 1049208
    i32.const 0
    call 18
    drop
    local.get 0)
  (func (;54;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call 44
    local.tee 2
    local.get 0
    local.get 1
    call 18
    drop
    local.get 2)
  (func (;55;) (type 1) (param i32 i32)
    local.get 0
    local.get 1
    call 56
    call 4
    drop)
  (func (;56;) (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store8 offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call 121
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load8_u offset=12
    if  ;; label = @1
      i32.const 1059228
      i32.const 0
      i32.store
      i32.const 1059232
      i32.const 0
      i32.store8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;57;) (type 1) (param i32 i32)
    local.get 0
    call 58
    local.get 1
    call 59)
  (func (;58;) (type 3) (param i32) (result i32)
    (local i32)
    call 44
    local.tee 1
    local.get 0
    call 21
    drop
    local.get 1)
  (func (;59;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    call 9
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 3
    i32.const 12
    i32.add
    i32.const 4
    call 137
    local.get 1
    i32.load8_u offset=4
    local.set 2
    local.get 1
    i32.const 0
    i32.store8 offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.and
          local.tee 2
          if  ;; label = @4
            local.get 0
            call 9
            local.set 4
            i32.const 10000
            i32.const 1059228
            i32.load
            local.tee 5
            i32.sub
            local.get 4
            i32.lt_u
            br_if 2 (;@2;)
            local.get 3
            local.get 5
            local.get 4
            local.get 5
            i32.add
            local.tee 4
            call 138
            local.get 0
            i32.const 0
            local.get 3
            i32.load
            local.get 3
            i32.load offset=4
            call 115
            drop
            i32.const 1059228
            local.get 4
            i32.store
            br 1 (;@3;)
          end
          local.get 1
          i32.load
          local.get 0
          call 116
        end
        local.get 1
        local.get 2
        i32.store8 offset=4
        br 1 (;@1;)
      end
      local.get 1
      call 121
      local.get 1
      i32.load
      local.get 0
      call 116
      local.get 1
      i32.load8_u offset=4
      local.get 1
      local.get 2
      i32.store8 offset=4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1059228
      i32.const 0
      i32.store
      i32.const 1059232
      i32.const 0
      i32.store8
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;60;) (type 4) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    i64.const 0
    call 53
    call 53
    call 61)
  (func (;61;) (type 18) (param i32 i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call 63)
  (func (;62;) (type 7) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 27
    unreachable)
  (func (;63;) (type 19) (param i32 i32 i64 i32 i64 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 7
    global.set 0
    call 53
    local.set 8
    local.get 1
    call 47
    local.set 1
    local.get 7
    local.get 3
    call 43
    i32.store offset=12
    local.get 7
    local.get 2
    i64.store
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 8
    local.get 7
    call 119
    local.get 0
    local.get 8
    local.get 4
    local.get 5
    local.get 6
    call 28
    drop
    local.get 7
    i32.const 16
    i32.add
    global.set 0)
  (func (;64;) (type 13) (param i64 i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call 44
    local.tee 1
    call 5
    drop
    local.get 1)
  (func (;65;) (type 6) (result i32)
    (local i32)
    call 44
    local.tee 0
    call 6
    local.get 0)
  (func (;66;) (type 6) (result i32)
    (local i32)
    i32.const 1059240
    i32.load8_u
    local.tee 0
    if  ;; label = @1
      i32.const -11
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 1059240
    i32.const 1
    i32.store8
    i32.const -11
    call 7
    i32.const -11)
  (func (;67;) (type 6) (result i32)
    (local i32)
    i32.const 1059244
    i32.load8_u
    local.tee 0
    if  ;; label = @1
      i32.const -21
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 1059244
    i32.const 1
    i32.store8
    i32.const -21
    call 8
    i32.const -21)
  (func (;68;) (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1
    local.set 3
    block  ;; label = @1
      call 67
      local.tee 4
      call 69
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 4
        call 9
        local.set 6
        local.get 1
        i32.const 16
        i32.add
        local.set 7
        loop  ;; label = @3
          local.get 5
          local.set 8
          local.get 2
          i32.const 16
          i32.add
          local.tee 9
          local.get 6
          i32.gt_u
          br_if 2 (;@1;)
          local.get 7
          i64.const 0
          i64.store
          local.get 1
          i64.const 0
          i64.store offset=8
          local.get 4
          local.get 2
          local.get 1
          i32.const 8
          i32.add
          i32.const 16
          call 70
          drop
          local.get 1
          i32.const 0
          i32.store offset=28
          i32.const 1
          local.set 5
          local.get 3
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call 71
          local.set 11
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call 72
          local.set 13
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call 71
          local.set 12
          i32.const 0
          local.set 3
          local.get 9
          local.set 2
          br_if 0 (;@3;)
        end
        call 73
        unreachable
      end
      i32.const 1048714
      i32.const 34
      call 10
      unreachable
    end
    local.get 13
    i64.eqz
    if  ;; label = @1
      local.get 0
      local.get 12
      i32.store offset=4
      local.get 0
      local.get 11
      i32.store
      local.get 1
      i32.const 32
      i32.add
      global.set 0
      return
    end
    i32.const 1049160
    i32.const 28
    call 10
    unreachable)
  (func (;69;) (type 3) (param i32) (result i32)
    local.get 0
    call 9
    i32.const 4
    i32.shr_u)
  (func (;70;) (type 8) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call 41
    i32.const 0
    i32.ne)
  (func (;71;) (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    local.get 0
    local.get 1
    i32.load
    local.tee 0
    local.get 0
    i32.const 4
    i32.add
    local.tee 0
    call 120
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 52
    local.get 1
    local.get 0
    i32.store
    local.get 2
    i32.load offset=12
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 0
    i32.const 24
    i32.shl
    i32.or
    local.get 0
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 0
    i32.const 24
    i32.shr_u
    i32.or
    i32.or)
  (func (;72;) (type 16) (param i32 i32) (result i64)
    (local i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 0
    local.get 1
    i32.load
    local.tee 0
    local.get 0
    i32.const 8
    i32.add
    local.tee 0
    call 120
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 52
    local.get 1
    local.get 0
    i32.store
    local.get 2
    i64.load offset=8
    local.set 3
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    local.get 3
    i64.const 56
    i64.shl
    i64.or
    local.get 3
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 3
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 3
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 3
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 3
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 3
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or)
  (func (;73;) (type 0)
    call 176
    unreachable)
  (func (;74;) (type 2) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              call 67
              local.tee 2
              call 69
              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 1048714
            i32.const 34
            call 10
            unreachable
          end
          call 66
          local.set 3
          i32.const 2147483646
          br 1 (;@2;)
        end
        local.get 1
        local.get 2
        call 75
        local.get 1
        i64.load
        i64.const 0
        i64.ne
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        local.set 3
        local.get 1
        i32.load offset=8
      end
      local.set 2
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 2
      i32.store
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1049160
    i32.const 28
    call 10
    unreachable)
  (func (;75;) (type 1) (param i32 i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 1
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    call 115
    local.get 2
    i32.const 0
    i32.store offset=28
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call 71
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call 72
    local.set 5
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call 71
    local.set 4
    if  ;; label = @1
      i32.const 1048957
      i32.const 29
      call 10
      unreachable
    end
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=8
    local.get 0
    local.get 5
    i64.store
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;76;) (type 7) (param i32 i32 i32 i32)
    (local i32)
    i32.const 1048748
    i32.const 23
    call 54
    local.tee 4
    local.get 0
    local.get 1
    call 11
    drop
    local.get 4
    i32.const 1048771
    i32.const 3
    call 11
    drop
    local.get 4
    local.get 2
    local.get 3
    call 11
    drop
    local.get 4
    call 12
    unreachable)
  (func (;77;) (type 0)
    call 13
    i32.eqz
    if  ;; label = @1
      return
    end
    i32.const 1048774
    i32.const 37
    call 10
    unreachable)
  (func (;78;) (type 3) (param i32) (result i32)
    (local i32 i32 i32)
    call 53
    local.set 2
    local.get 0
    i32.load
    local.set 1
    loop  ;; label = @1
      local.get 1
      i32.const 1059236
      i32.load
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.const 1
        i32.add
        local.tee 3
        i32.store
        local.get 2
        local.get 1
        call 79
        call 80
        local.get 3
        local.set 1
        br 1 (;@1;)
      end
    end
    local.get 2)
  (func (;79;) (type 3) (param i32) (result i32)
    local.get 0
    call 44
    local.tee 0
    call 25
    drop
    local.get 0)
  (func (;80;) (type 1) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 1
    i32.const 24
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 11
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;81;) (type 6) (result i32)
    (local i64)
    i32.const 0
    call 14
    local.tee 0
    i64.const 4294967296
    i64.ge_u
    if  ;; label = @1
      i32.const 1048695
      i32.const 5
      i32.const 1048928
      i32.const 14
      call 76
      unreachable
    end
    local.get 0
    i32.wrap_i64)
  (func (;82;) (type 10) (param i32 i32 i32) (result i32)
    local.get 0
    call 79
    local.tee 0
    call 9
    i32.const 32
    i32.ne
    if  ;; label = @1
      local.get 1
      local.get 2
      i32.const 1049034
      i32.const 16
      call 76
      unreachable
    end
    local.get 0)
  (func (;83;) (type 2) (param i32)
    i32.const 1059236
    i32.load
    local.get 0
    i32.le_s
    if  ;; label = @1
      return
    end
    i32.const 1048828
    i32.const 18
    call 10
    unreachable)
  (func (;84;) (type 2) (param i32)
    call 15
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048846
    i32.const 25
    call 10
    unreachable)
  (func (;85;) (type 2) (param i32)
    i32.const 1059236
    i32.load
    local.get 0
    i32.ge_s
    if  ;; label = @1
      return
    end
    i32.const 1048811
    i32.const 17
    call 10
    unreachable)
  (func (;86;) (type 0)
    i32.const 1059236
    call 15
    i32.store)
  (func (;87;) (type 2) (param i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load offset=16
    local.tee 3
    if  ;; label = @1
      call 44
      local.tee 2
      call 16
      i32.const 1048871
      i32.const 10
      call 54
      local.tee 4
      local.get 2
      call 3
      drop
      local.get 1
      i32.const 16
      i32.add
      call 50
      local.get 1
      local.get 1
      i32.load8_u offset=20
      i32.store8 offset=28
      local.get 1
      local.get 1
      i32.load offset=16
      i32.store offset=24
      local.get 3
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.get 1
      i32.const 24
      i32.add
      call 88
      local.get 0
      i32.const 24
      i32.add
      local.tee 3
      i32.load
      local.tee 2
      call 89
      local.get 1
      i32.const 24
      i32.add
      call 90
      local.get 2
      call 9
      local.set 2
      local.get 1
      local.get 3
      i32.store offset=40
      local.get 1
      local.get 2
      i32.store offset=36
      local.get 1
      i32.const 0
      i32.store offset=32
      loop  ;; label = @2
        local.get 1
        i32.const 8
        i32.add
        local.get 1
        i32.const 32
        i32.add
        call 91
        local.get 1
        i32.load offset=8
        if  ;; label = @3
          local.get 1
          i32.load offset=12
          local.get 1
          i32.const 24
          i32.add
          call 59
          br 1 (;@2;)
        end
      end
      local.get 4
      local.get 1
      i32.load offset=24
      local.get 1
      i32.load8_u offset=28
      call 92
    end
    local.get 0
    call 93
    unreachable)
  (func (;88;) (type 4) (param i32 i32 i32)
    local.get 1
    local.get 2
    call 90
    local.get 2
    local.get 0
    local.get 1
    call 137)
  (func (;89;) (type 3) (param i32) (result i32)
    local.get 0
    call 9
    i32.const 2
    i32.shr_u)
  (func (;90;) (type 1) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 0
    i32.const 24
    i32.shl
    i32.or
    local.get 0
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 0
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 137
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;91;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block (result i32)  ;; label = @1
      i32.const 0
      local.get 1
      i32.load
      local.tee 2
      i32.const 4
      i32.add
      local.tee 4
      local.get 1
      i32.load offset=4
      i32.gt_u
      br_if 0 (;@1;)
      drop
      local.get 1
      i32.load offset=8
      local.get 3
      i32.const 0
      i32.store offset=12
      i32.load
      local.get 2
      local.get 3
      i32.const 12
      i32.add
      i32.const 4
      call 115
      drop
      local.get 3
      i32.load offset=12
      local.set 2
      local.get 1
      local.get 4
      i32.store
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      local.get 2
      i32.const 24
      i32.shl
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      local.set 2
      i32.const 1
    end
    local.set 1
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;92;) (type 4) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 56
    call 24
    drop)
  (func (;93;) (type 2) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call 62
    unreachable)
  (func (;94;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 3
    drop
    local.get 0)
  (func (;95;) (type 1) (param i32 i32)
    call 53
    drop
    local.get 0
    local.get 1
    call 47
    call 80)
  (func (;96;) (type 1) (param i32 i32)
    call 53
    drop
    local.get 0
    local.get 1
    call 58
    call 80)
  (func (;97;) (type 9) (param i32 i64)
    (local i32)
    call 53
    local.tee 2
    local.get 1
    call 98
    local.get 0
    local.get 2
    call 80)
  (func (;98;) (type 9) (param i32 i64)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    call 126
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 18
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;99;) (type 25) (param i64) (result i64)
    local.get 0
    i64.const -1
    i64.eq
    if (result i64)  ;; label = @1
      call 17
      local.tee 0
      i64.const -100000
      i64.add
      local.get 0
      local.get 0
      i64.const 100000
      i64.gt_u
      select
    else
      local.get 0
    end)
  (func (;100;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 16
    i32.add
    local.set 3
    local.get 1
    i32.load offset=12
    local.set 4
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      local.tee 5
      i32.const 2147483646
      i32.ne
      if  ;; label = @2
        local.get 1
        i64.load
        local.set 6
        local.get 2
        i32.const 48
        i32.add
        local.get 3
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 40
        i32.add
        local.get 3
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 2
        local.get 3
        i64.load
        i64.store offset=32
        local.get 2
        call 101
        i32.store offset=56
        local.get 2
        local.get 4
        i32.store offset=12
        local.get 2
        local.get 5
        i32.store offset=8
        local.get 2
        local.get 6
        i64.store
        local.get 2
        i32.const -64
        i32.sub
        local.get 2
        call 102
        local.get 2
        local.get 2
        i32.const 32
        i32.add
        local.get 2
        i32.const -64
        i32.sub
        call 103
        local.get 2
        i32.load offset=24
        local.set 4
        br 1 (;@1;)
      end
      local.get 2
      i32.const 16
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 2
      i32.const 8
      i32.add
      local.get 3
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get 2
      local.get 3
      i64.load
      i64.store
    end
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 2
    i64.load offset=12 align=4
    i64.store offset=8 align=4
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store
    local.get 2
    i32.const 80
    i32.add
    global.set 0)
  (func (;101;) (type 6) (result i32)
    (local i32)
    call 44
    local.tee 0
    i64.const 0
    call 0
    local.get 0)
  (func (;102;) (type 1) (param i32 i32)
    (local i32)
    local.get 1
    i32.load offset=8
    local.tee 2
    i32.const 2147483646
    i32.eq
    if  ;; label = @1
      i32.const 1048986
      i32.const 13
      call 10
      unreachable
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.load offset=12
    i32.store offset=12
    local.get 0
    local.get 1
    i64.load
    i64.store)
  (func (;103;) (type 4) (param i32 i32 i32)
    (local i32 i32 i64)
    local.get 2
    i64.load
    local.set 5
    call 53
    local.tee 3
    local.get 2
    i32.load offset=8
    call 95
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i64.eqz
            if  ;; label = @5
              local.get 3
              local.get 2
              i32.load offset=12
              call 96
              local.get 1
              i32.load offset=12
              local.tee 2
              call 106
              i32.eqz
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 3
            local.get 5
            call 97
            local.get 3
            local.get 2
            i32.load offset=12
            call 96
            call 53
            drop
            local.get 3
            local.get 1
            i32.load offset=8
            call 47
            call 80
            local.get 1
            i32.load offset=12
            local.tee 2
            call 106
            br_if 1 (;@3;)
            local.get 3
            local.get 2
            call 95
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          call 95
          br 1 (;@2;)
        end
        call 65
        local.set 2
        i32.const 1048901
        i32.const 15
        call 54
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=8
      local.set 2
      i32.const 1048916
      i32.const 12
      call 54
    end
    local.set 4
    local.get 3
    local.get 1
    i32.load offset=16
    call 94
    local.set 3
    local.get 1
    i64.load
    local.set 5
    local.get 0
    call 101
    i32.store offset=24
    local.get 0
    local.get 3
    i32.store offset=16
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 5
    i64.store)
  (func (;104;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=24
    local.set 3
    call 101
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            call 69
            br_table 2 (;@2;) 1 (;@3;) 0 (;@4;)
          end
          local.get 1
          i32.load offset=16
          local.set 6
          local.get 1
          i32.load offset=12
          local.set 4
          local.get 1
          i64.load
          local.set 8
          local.get 1
          i32.load offset=8
          local.set 5
          local.get 2
          local.get 3
          i32.store offset=64
          call 53
          local.set 1
          call 53
          drop
          local.get 1
          local.get 5
          call 47
          call 80
          local.get 3
          call 69
          local.set 5
          call 53
          local.tee 7
          local.get 5
          i64.extend_i32_u
          call 98
          local.get 1
          local.get 7
          call 80
          local.get 2
          local.get 3
          call 9
          i32.store offset=4
          local.get 2
          i32.const 0
          i32.store
          local.get 2
          local.get 2
          i32.const -64
          i32.sub
          i32.store offset=8
          loop  ;; label = @4
            local.get 2
            i32.const 32
            i32.add
            local.get 2
            call 105
            local.get 2
            i64.load offset=32
            i64.eqz
            if  ;; label = @5
              local.get 4
              call 106
              i32.eqz
              if  ;; label = @6
                call 53
                drop
                local.get 1
                local.get 4
                call 47
                call 80
              end
              call 65
              local.set 3
              i32.const 1048881
              i32.const 20
              call 54
              local.set 5
              local.get 1
              local.get 6
              call 94
              local.set 1
              call 101
              local.set 4
              local.get 2
              local.get 1
              i32.store offset=16
              local.get 2
              local.get 5
              i32.store offset=12
              local.get 2
              local.get 3
              i32.store offset=8
              local.get 2
              local.get 8
              i64.store
              br 4 (;@1;)
            else
              local.get 2
              i32.load offset=52
              local.set 3
              local.get 2
              i64.load offset=40
              local.set 9
              local.get 1
              local.get 2
              i32.load offset=48
              call 95
              local.get 1
              local.get 9
              call 97
              local.get 1
              local.get 3
              call 96
              br 1 (;@4;)
            end
            unreachable
          end
          unreachable
        end
        local.get 2
        i32.const 48
        i32.add
        local.get 1
        i32.const 16
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 40
        i32.add
        local.get 1
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 2
        local.get 4
        i32.store offset=56
        local.get 2
        local.get 1
        i64.load
        i64.store offset=32
        local.get 2
        i32.const -64
        i32.sub
        local.get 3
        call 75
        local.get 2
        local.get 2
        i32.const 32
        i32.add
        local.get 2
        i32.const -64
        i32.sub
        call 103
        local.get 2
        i32.load offset=24
        local.set 4
        br 1 (;@1;)
      end
      local.get 2
      i32.const 16
      i32.add
      local.get 1
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 2
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get 2
      local.get 1
      i64.load
      i64.store
    end
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 2
    i64.load offset=12 align=4
    i64.store offset=8 align=4
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store
    local.get 2
    i32.const 80
    i32.add
    global.set 0)
  (func (;105;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    local.get 1
    i32.load
    local.tee 3
    i32.const 16
    i32.add
    local.tee 4
    local.get 1
    i32.load offset=4
    i32.le_u
    if (result i64)  ;; label = @1
      local.get 1
      i32.load offset=8
      local.get 2
      i32.const 16
      i32.add
      i64.const 0
      i64.store
      local.get 2
      i64.const 0
      i64.store offset=8
      i32.load
      local.get 3
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      call 115
      drop
      local.get 2
      i32.const 0
      i32.store offset=28
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call 71
      local.set 3
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call 72
      local.set 6
      local.get 0
      i32.const 20
      i32.add
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call 71
      i32.store
      local.get 0
      i32.const 16
      i32.add
      local.get 3
      i32.store
      local.get 0
      local.get 6
      i64.store offset=8
      local.get 1
      local.get 4
      i32.store
      i64.const 1
    else
      i64.const 0
    end
    i64.store
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;106;) (type 3) (param i32) (result i32)
    local.get 0
    call 9
    i32.eqz)
  (func (;107;) (type 4) (param i32 i32 i32)
    (local i32 i32)
    i32.const 1048602
    i32.const 29
    call 54
    local.set 3
    call 53
    local.set 4
    local.get 0
    local.get 2
    i32.store offset=24
    local.get 0
    local.get 4
    i32.store offset=16
    local.get 0
    local.get 3
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i64.const -1
    i64.store)
  (func (;108;) (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call 109
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call 110
    local.set 5
    local.get 0
    i32.load
    local.set 2
    call 2
    local.set 3
    local.get 0
    i32.load offset=8
    local.get 2
    local.get 5
    i32.wrap_i64
    local.tee 4
    local.get 3
    call 19
    if  ;; label = @1
      i32.const 1048942
      i32.const 15
      call 111
      unreachable
    end
    local.get 0
    local.get 2
    local.get 4
    i32.add
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;109;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i32.load
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 16
          i32.add
          i32.load8_u
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 4
            call 9
            local.tee 6
            i32.const 10000
            i32.gt_u
            br_if 1 (;@3;)
            i32.const 1059232
            i32.load8_u
            br_if 1 (;@3;)
            i32.const 1059228
            local.get 6
            i32.store
            i32.const 1059232
            i32.const 1
            i32.store8
            local.get 3
            i32.const 8
            i32.add
            local.get 6
            call 51
            local.get 4
            i32.const 0
            local.get 3
            i32.load offset=8
            local.get 3
            i32.load offset=12
            call 115
            drop
            local.get 0
            i32.const 1
            i32.store8 offset=16
          end
          local.get 2
          local.get 5
          i32.add
          local.tee 4
          i32.const 1059228
          i32.load
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 5
          local.get 4
          call 122
          local.get 1
          local.get 2
          local.get 3
          i32.load
          local.get 3
          i32.load offset=4
          call 52
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.store8 offset=16
        local.get 4
        local.get 5
        local.get 1
        local.get 2
        call 115
        br_if 1 (;@1;)
        local.get 2
        local.get 5
        i32.add
        local.set 4
      end
      local.get 0
      local.get 4
      i32.store
      local.get 3
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048942
    i32.const 15
    call 111
    unreachable)
  (func (;110;) (type 16) (param i32 i32) (result i64)
    (local i64)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const -1
        i32.add
        local.set 1
        local.get 0
        i64.load8_u
        local.get 2
        i64.const 8
        i64.shl
        i64.or
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 2)
  (func (;111;) (type 1) (param i32 i32)
    (local i32)
    i32.const 1049008
    i32.const 22
    call 54
    local.tee 2
    local.get 0
    local.get 1
    call 11
    drop
    local.get 2
    call 12
    unreachable)
  (func (;112;) (type 1) (param i32 i32)
    (local i32)
    local.get 1
    call 9
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i32.store8
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store)
  (func (;113;) (type 1) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 4
    call 11
    drop)
  (func (;114;) (type 1) (param i32 i32)
    (local i32)
    local.get 1
    call 89
    local.set 2
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;115;) (type 8) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 70)
  (func (;116;) (type 1) (param i32 i32)
    local.get 0
    local.get 1
    call 3
    drop)
  (func (;117;) (type 3) (param i32) (result i32)
    i32.const -14
    i64.const 2
    call 0
    local.get 0
    local.get 0
    i32.const -14
    call 20
    local.get 0)
  (func (;118;) (type 3) (param i32) (result i32)
    local.get 0
    call 44
    local.tee 0
    call 22
    drop
    local.get 0)
  (func (;119;) (type 1) (param i32 i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.load offset=8
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store
    local.get 3
    local.get 1
    i32.load offset=12
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 3
    local.get 1
    i64.load
    local.tee 4
    i64.const 56
    i64.shl
    local.get 4
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 4
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 4
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 4
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 4
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 4
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 4
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=4 align=4
    local.get 0
    local.get 3
    i32.const 16
    call 11
    drop
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;120;) (type 7) (param i32 i32 i32 i32)
    block  ;; label = @1
      local.get 3
      local.get 2
      i32.ge_u
      if  ;; label = @2
        local.get 3
        i32.const 16
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        local.get 2
        i32.sub
        i32.store offset=4
        local.get 0
        local.get 1
        local.get 2
        i32.add
        i32.store
        return
      end
      call 46
      unreachable
    end
    call 46
    unreachable)
  (func (;121;) (type 2) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load8_u offset=4
    local.get 0
    i32.const 0
    i32.store8 offset=4
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      i32.const 0
      i32.const 1059228
      i32.load
      call 122
      local.get 0
      i32.load
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=12
      call 11
      drop
      i32.const 1059228
      i32.const 0
      i32.store
      i32.const 1059232
      i32.const 0
      i32.store8
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;122;) (type 4) (param i32 i32 i32)
    block  ;; label = @1
      local.get 2
      local.get 1
      i32.ge_u
      if  ;; label = @2
        local.get 2
        i32.const 10000
        i32.le_u
        br_if 1 (;@1;)
        call 46
        unreachable
      end
      call 46
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 1049228
    i32.add
    i32.store)
  (func (;123;) (type 3) (param i32) (result i32)
    local.get 0
    call 44
    local.tee 0
    call 23
    drop
    local.get 0)
  (func (;124;) (type 2) (param i32)
    i32.const -20
    i32.const 0
    i32.const 0
    call 18
    drop
    local.get 0
    i32.const -20
    call 24
    drop)
  (func (;125;) (type 1) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    i64.extend_i32_u
    local.get 2
    i32.const 8
    i32.add
    call 126
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 54
    call 24
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;126;) (type 20) (param i32 i64 i32)
    (local i32 i32)
    local.get 2
    local.get 1
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    local.get 1
    i64.const 56
    i64.shl
    i64.or
    local.get 1
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 1
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store align=1
    block  ;; label = @1
      local.get 1
      i64.eqz
      if  ;; label = @2
        i32.const 1049208
        local.set 4
        br 1 (;@1;)
      end
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 8
            i32.ne
            if  ;; label = @5
              local.get 2
              local.get 3
              i32.add
              local.tee 4
              i32.load8_u
              i32.eqz
              br_if 2 (;@3;)
              local.get 3
              i32.const 9
              i32.ge_u
              br_if 1 (;@4;)
              i32.const 8
              local.get 3
              i32.sub
              local.set 3
              br 4 (;@1;)
            end
            call 73
            unreachable
          end
          call 176
          unreachable
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store)
  (func (;127;) (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    local.get 1
    call 128
    call 123
    local.set 1
    call 53
    local.set 0
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    call 112
    loop  ;; label = @1
      local.get 2
      i32.load offset=12
      local.get 2
      i32.load offset=8
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 2
        i32.const 8
        i32.add
        call 108
        call 80
        br 1 (;@1;)
      end
    end
    local.get 2
    i32.const 24
    i32.add
    i32.load8_u
    if  ;; label = @1
      i32.const 1059228
      i32.const 0
      i32.store
      i32.const 1059232
      i32.const 0
      i32.store8
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func (;128;) (type 5) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    call 47
    local.tee 0
    i32.const 1049003
    i32.const 5
    call 11
    drop
    local.get 2
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 1
    i32.const 24
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    call 113
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;129;) (type 3) (param i32) (result i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    block  ;; label = @1
      local.get 0
      call 123
      local.tee 0
      call 9
      local.tee 2
      i32.const 9
      i32.lt_u
      if  ;; label = @2
        local.get 1
        local.get 1
        i32.const 8
        i32.add
        local.get 2
        call 130
        local.get 0
        i32.const 0
        local.get 1
        i32.load
        local.tee 0
        local.get 1
        i32.load offset=4
        local.tee 2
        call 70
        drop
        local.get 0
        local.get 2
        call 110
        local.tee 3
        i64.const 4294967296
        i64.ge_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 16
        i32.add
        global.set 0
        local.get 3
        i32.wrap_i64
        return
      end
      i32.const 1048928
      i32.const 14
      call 111
      unreachable
    end
    i32.const 1048928
    i32.const 14
    call 111
    unreachable)
  (func (;130;) (type 4) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    local.get 2
    call 146
    local.get 3
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;131;) (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    local.get 1
    call 129
    i32.const 1
    i32.add
    local.tee 0
    call 128
    local.get 3
    call 50
    local.get 3
    local.get 3
    i32.load8_u offset=4
    i32.store8 offset=12
    local.get 3
    local.get 3
    i32.load
    i32.store offset=8
    local.get 2
    i32.load offset=8
    local.get 3
    i32.const 8
    i32.add
    call 132
    local.get 2
    i64.load
    local.get 3
    i32.const 8
    i32.add
    call 133
    local.get 2
    i32.load offset=12
    local.get 3
    i32.const 8
    i32.add
    call 57
    local.get 3
    i32.load offset=8
    local.get 3
    i32.load8_u offset=12
    call 92
    local.get 1
    local.get 0
    call 125
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;132;) (type 1) (param i32 i32)
    local.get 0
    i32.const 2147483646
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      call 59
      return
    end
    i32.const 1048999
    i32.const 4
    local.get 1
    call 88)
  (func (;133;) (type 22) (param i64 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    local.get 0
    i64.const 56
    i64.shl
    i64.or
    local.get 0
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 0
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call 137
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;134;) (type 3) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    call 53
    i32.store offset=12
    local.get 1
    i32.const 8
    i32.add
    local.get 1
    i32.const 12
    i32.add
    call 135
    local.get 1
    i32.load offset=12
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;135;) (type 1) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load
    call 47
    local.set 3
    local.get 0
    i32.load
    call 9
    local.set 4
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 4
    i32.store offset=20
    local.get 2
    i32.const 0
    i32.store offset=16
    loop  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 16
      i32.add
      call 91
      local.get 2
      i32.load offset=8
      if  ;; label = @2
        local.get 2
        local.get 2
        i32.load offset=12
        local.tee 4
        call 9
        local.tee 0
        i32.const 24
        i32.shl
        local.get 0
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        i32.or
        local.get 0
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 0
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store offset=28
        local.get 3
        local.get 2
        i32.const 28
        i32.add
        call 113
        local.get 3
        local.get 4
        call 3
        drop
        br 1 (;@1;)
      else
        local.get 1
        local.get 3
        i32.store
        local.get 2
        i32.const 32
        i32.add
        global.set 0
      end
    end)
  (func (;136;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call 53
    local.tee 2
    local.get 0
    local.get 1
    call 54
    call 80
    local.get 2)
  (func (;137;) (type 4) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        if  ;; label = @3
          i32.const 10000
          i32.const 1059228
          i32.load
          local.tee 4
          i32.sub
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          local.get 3
          i32.const 8
          i32.add
          local.get 4
          local.get 2
          local.get 4
          i32.add
          local.tee 0
          call 138
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call 52
          i32.const 1059228
          local.get 0
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call 11
        drop
        br 1 (;@1;)
      end
      local.get 0
      call 121
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call 11
      drop
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;138;) (type 4) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    i32.const 1049228
    i32.const 10000
    call 45
    local.get 3
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;139;) (type 3) (param i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.load
    local.get 3
    i32.const 2
    i32.shl
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call 115
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load offset=12
      local.set 2
      local.get 0
      local.get 3
      i32.const 1
      i32.add
      i32.store offset=8
      local.get 2
      i32.const 8
      i32.shl
      i32.const 16711680
      i32.and
      local.get 2
      i32.const 24
      i32.shl
      i32.or
      local.get 2
      i32.const 8
      i32.shr_u
      i32.const 65280
      i32.and
      local.get 2
      i32.const 24
      i32.shr_u
      i32.or
      i32.or
      call 47
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1049050
    i32.const 8
    i32.const 1048811
    i32.const 17
    call 76
    unreachable)
  (func (;140;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=4
      i32.lt_u
      if (result i64)  ;; label = @2
        local.get 1
        call 139
        call 47
        local.set 5
        local.get 1
        call 139
        local.set 3
        local.get 2
        i64.const 0
        i64.store offset=8
        local.get 3
        call 9
        local.tee 4
        i32.const 9
        i32.ge_u
        br_if 1 (;@1;)
        local.get 2
        local.get 2
        i32.const 8
        i32.add
        local.get 4
        call 130
        local.get 3
        i32.const 0
        local.get 2
        i32.load
        local.tee 3
        local.get 2
        i32.load offset=4
        local.tee 4
        call 70
        drop
        local.get 3
        local.get 4
        call 110
        local.set 6
        local.get 0
        i32.const 20
        i32.add
        local.get 1
        call 139
        call 118
        i32.store
        local.get 0
        i32.const 16
        i32.add
        local.get 5
        i32.store
        local.get 0
        local.get 6
        i64.store offset=8
        i64.const 1
      else
        i64.const 0
      end
      i64.store
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1049050
    i32.const 8
    i32.const 1048928
    i32.const 14
    call 76
    unreachable)
  (func (;141;) (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.const 32
    i32.add
    i32.load
    local.set 2
    local.get 0
    i32.const 28
    i32.add
    i32.load
    local.set 3
    local.get 0
    i32.const 24
    i32.add
    i32.load
    local.set 4
    local.get 0
    i64.load offset=16
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      i32.const 2147483646
      i32.ne
      if  ;; label = @2
        local.get 1
        i32.const 24
        i32.add
        local.get 0
        i32.const 8
        i32.add
        i64.load
        i64.store
        local.get 1
        local.get 0
        i64.load
        i64.store offset=16
        local.get 1
        local.get 1
        i32.const 16
        i32.add
        call 102
        local.get 6
        call 99
        local.set 6
        local.get 1
        i32.load offset=12
        local.set 0
        local.get 1
        i32.load offset=8
        local.set 5
        local.get 1
        i64.load
        local.tee 7
        i64.eqz
        if  ;; label = @3
          local.get 4
          local.get 5
          local.get 0
          local.get 6
          local.get 3
          local.get 2
          call 61
          br 2 (;@1;)
        end
        local.get 4
        local.get 5
        local.get 7
        local.get 0
        local.get 6
        local.get 3
        local.get 2
        call 63
        br 1 (;@1;)
      end
      local.get 4
      local.get 0
      i32.load offset=12
      local.get 6
      call 99
      local.get 3
      local.get 2
      call 26
      drop
    end
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;142;) (type 2) (param i32)
    (local i32 i32)
    i32.const 1049058
    i32.const 13
    call 54
    local.tee 1
    call 47
    local.tee 2
    i32.const 1049030
    i32.const 4
    call 11
    drop
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;143;) (type 2) (param i32)
    (local i32 i32)
    i32.const 1049071
    i32.const 17
    call 54
    local.tee 1
    call 47
    local.tee 2
    i32.const 1049030
    i32.const 4
    call 11
    drop
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;144;) (type 2) (param i32)
    i32.const 1049100
    i32.const 30
    call 136
    local.get 0
    call 134
    call 29)
  (func (;145;) (type 1) (param i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load8_u offset=8
      br_if 0 (;@1;)
      local.get 1
      i32.load
      local.tee 3
      local.get 1
      i32.load offset=4
      local.tee 4
      i32.gt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 4
      i32.ge_u
      if  ;; label = @2
        i32.const 1
        local.set 2
        local.get 1
        i32.const 1
        i32.store8 offset=8
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
      local.get 1
      local.get 3
      i32.const 1
      i32.add
      i32.store
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func (;146;) (type 7) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 8
    i32.add
    i32.const 0
    local.get 3
    local.get 1
    local.get 2
    call 45
    local.get 4
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;147;) (type 2) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 16
    i32.add
    call 50
    local.get 1
    local.get 1
    i32.load8_u offset=20
    i32.store8 offset=28
    local.get 1
    local.get 1
    i32.load offset=16
    i32.store offset=24
    local.get 0
    i32.load
    call 9
    local.set 2
    local.get 1
    local.get 0
    i32.store offset=40
    local.get 1
    local.get 2
    i32.store offset=36
    local.get 1
    i32.const 0
    i32.store offset=32
    loop  ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 32
      i32.add
      call 91
      local.get 1
      i32.load offset=8
      if  ;; label = @2
        local.get 1
        i32.load offset=12
        local.get 1
        i32.const 24
        i32.add
        call 59
        br 1 (;@1;)
      end
    end
    local.get 1
    i32.load offset=24
    local.get 1
    i32.load8_u offset=28
    call 55
    local.get 1
    i32.const 48
    i32.add
    global.set 0)
  (func (;148;) (type 0)
    call 30
    i32.const 0
    call 84)
  (func (;149;) (type 0)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1
    call 84
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call 74
    local.get 0
    i32.load offset=12
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.const 2147483646
      i32.ne
      if  ;; label = @2
        local.get 1
        local.get 3
        local.get 2
        call 60
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i64.const 0
      call 53
      call 53
      call 26
      drop
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;150;) (type 0)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 1
    call 84
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.get 0
    i32.const 8
    i32.add
    call 68
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call 60
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;151;) (type 0)
    i32.const 1
    call 84
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    call 67
    i64.const 0
    call 53
    call 53
    call 28
    drop)
  (func (;152;) (type 0)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 1
    i32.const 1
    call 79
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    call 78
    local.set 3
    local.get 0
    i32.load offset=40
    call 83
    local.get 0
    call 74
    local.get 0
    i64.load
    local.set 4
    call 53
    drop
    local.get 0
    i32.const 72
    i32.add
    local.get 3
    i32.store
    local.get 0
    i32.const 68
    i32.add
    local.get 2
    i32.store
    local.get 0
    i32.const -64
    i32.sub
    local.get 1
    i32.store
    local.get 0
    i64.const -1
    i64.store offset=56
    local.get 0
    local.get 4
    i64.store offset=48
    local.get 0
    i64.const 0
    i64.store offset=40
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 40
    i32.add
    call 100
    local.get 0
    i32.const 8
    i32.add
    call 87
    unreachable)
  (func (;153;) (type 0)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 1
    i32.const 1
    call 79
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    call 78
    local.set 3
    local.get 0
    i32.load offset=40
    call 83
    local.get 0
    call 74
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=4
    call 117
    local.set 5
    call 53
    drop
    local.get 0
    i32.const 72
    i32.add
    local.get 3
    i32.store
    local.get 0
    i32.const 68
    i32.add
    local.get 2
    i32.store
    local.get 0
    i32.const -64
    i32.sub
    local.get 1
    i32.store
    local.get 0
    i64.const -1
    i64.store offset=56
    local.get 0
    local.get 5
    i32.store offset=52
    local.get 0
    local.get 4
    i32.store offset=48
    local.get 0
    i64.const 0
    i64.store offset=40
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.const 40
    i32.add
    call 100
    local.get 0
    i32.const 8
    i32.add
    call 87
    unreachable)
  (func (;154;) (type 0)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 77
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 1
    i32.const 1
    call 79
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call 78
    local.set 3
    local.get 0
    i32.load offset=8
    call 83
    call 66
    local.set 4
    call 53
    drop
    call 17
    local.set 5
    local.get 0
    local.get 3
    i32.store offset=40
    local.get 0
    local.get 2
    i32.store offset=36
    local.get 0
    local.get 1
    i32.store offset=32
    local.get 0
    local.get 4
    i32.store offset=20
    local.get 0
    i32.const 2147483646
    i32.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 5
    i64.const 1
    i64.shr_u
    i64.store offset=24
    local.get 0
    i32.const 8
    i32.add
    call 141
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;155;) (type 0)
    (local i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 1
    i32.const 1
    call 79
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call 78
    local.set 3
    local.get 0
    i32.load offset=8
    call 83
    local.get 0
    call 68
    local.get 0
    i64.load
    local.set 4
    call 53
    drop
    call 17
    local.set 5
    local.get 0
    local.get 3
    i32.store offset=40
    local.get 0
    local.get 2
    i32.store offset=36
    local.get 0
    local.get 1
    i32.store offset=32
    local.get 0
    local.get 4
    i64.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 5
    i64.const 1
    i64.shr_u
    i64.store offset=24
    local.get 0
    i32.const 8
    i32.add
    call 141
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;156;) (type 0)
    (local i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 1
    i32.const 1
    call 79
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call 78
    local.set 3
    local.get 0
    i32.load offset=8
    call 83
    local.get 0
    call 74
    local.get 0
    i64.load
    local.set 4
    call 53
    drop
    call 17
    local.set 5
    local.get 0
    local.get 3
    i32.store offset=40
    local.get 0
    local.get 2
    i32.store offset=36
    local.get 0
    local.get 1
    i32.store offset=32
    local.get 0
    local.get 4
    i64.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 5
    i64.const 1
    i64.shr_u
    i64.store offset=24
    local.get 0
    i32.const 8
    i32.add
    call 141
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;157;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 0
    global.set 0
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 4
    i32.const 1
    call 79
    local.set 5
    local.get 0
    i32.const 2
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    call 78
    local.set 1
    local.get 0
    i32.load offset=24
    call 83
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    i32.const 8
    i32.add
    call 74
    i32.const 2147483646
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load offset=12
    call 117
    local.set 6
    local.get 4
    call 47
    local.set 8
    local.get 3
    i32.const 2147483646
    i32.ne
    if  ;; label = @1
      local.get 3
      call 47
      local.set 2
    end
    local.get 6
    call 43
    local.set 9
    local.get 5
    call 47
    local.set 10
    call 53
    local.set 7
    local.get 0
    local.get 1
    call 9
    i32.store offset=28
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=32
    loop  ;; label = @1
      local.get 0
      local.get 0
      i32.const 24
      i32.add
      call 91
      local.get 0
      i32.load
      if  ;; label = @2
        local.get 7
        local.get 0
        i32.load offset=4
        call 47
        call 80
        br 1 (;@1;)
      end
    end
    call 53
    drop
    call 17
    local.set 11
    local.get 0
    local.get 7
    i32.store offset=56
    local.get 0
    local.get 10
    i32.store offset=52
    local.get 0
    local.get 8
    i32.store offset=48
    local.get 0
    local.get 9
    i32.store offset=36
    local.get 0
    local.get 2
    i32.store offset=32
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 0
    local.get 11
    i64.const 1
    i64.shr_u
    i64.store offset=40
    local.get 0
    i32.const 24
    i32.add
    call 141
    local.get 0
    i32.load offset=20
    local.set 1
    call 53
    drop
    call 17
    local.set 11
    local.get 0
    local.get 1
    i32.store offset=56
    local.get 0
    local.get 5
    i32.store offset=52
    local.get 0
    local.get 4
    i32.store offset=48
    local.get 0
    local.get 6
    i32.store offset=36
    local.get 0
    local.get 3
    i32.store offset=32
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 0
    local.get 11
    i64.const 1
    i64.shr_u
    i64.store offset=40
    local.get 0
    i32.const 24
    i32.add
    call 141
    local.get 0
    i32.const -64
    i32.sub
    global.set 0)
  (func (;158;) (type 0)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 0
    global.set 0
    call 30
    call 86
    i32.const 1
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 3
    local.get 0
    i32.const 1
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    call 78
    local.set 2
    local.get 0
    i32.load offset=40
    call 83
    call 53
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call 114
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i32.load
    i32.store
    local.get 0
    local.get 0
    i64.load offset=8
    i64.store offset=24
    loop  ;; label = @1
      local.get 0
      i32.const 40
      i32.add
      local.get 0
      i32.const 24
      i32.add
      call 140
      local.get 0
      i64.load offset=40
      i64.eqz
      if  ;; label = @2
        local.get 3
        call 101
        i32.const 1048576
        i32.const 26
        call 54
        local.get 1
        call 62
        unreachable
      else
        local.get 0
        i32.load offset=60
        local.set 2
        local.get 0
        i64.load offset=48
        local.set 4
        local.get 1
        local.get 0
        i32.load offset=56
        call 95
        local.get 1
        local.get 4
        call 97
        local.get 1
        local.get 2
        call 96
        br 1 (;@1;)
      end
      unreachable
    end
    unreachable)
  (func (;159;) (type 0)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 0
    global.set 0
    call 30
    call 86
    i32.const 1
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 2
    local.get 0
    i32.const 1
    i32.store offset=64
    local.get 0
    i32.const -64
    i32.sub
    call 78
    local.set 3
    local.get 0
    i32.load offset=64
    call 83
    call 53
    local.set 1
    local.get 0
    local.get 3
    call 114
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 0
    local.get 0
    i64.load
    i64.store offset=16
    loop  ;; label = @1
      local.get 0
      i32.const -64
      i32.sub
      local.get 0
      i32.const 16
      i32.add
      call 140
      local.get 0
      i64.load offset=64
      i64.eqz
      if  ;; label = @2
        local.get 0
        i32.const -64
        i32.sub
        local.get 2
        local.get 1
        call 107
        local.get 0
        i32.const 32
        i32.add
        local.get 0
        i32.const -64
        i32.sub
        call 104
        local.get 0
        i32.const 32
        i32.add
        call 93
        unreachable
      else
        local.get 0
        i64.load offset=80
        local.set 4
        local.get 0
        local.get 0
        i64.load offset=72
        i64.store offset=32
        local.get 0
        local.get 4
        i64.store offset=40
        local.get 1
        local.get 0
        i32.const 32
        i32.add
        call 119
        br 1 (;@1;)
      end
      unreachable
    end
    unreachable)
  (func (;160;) (type 0)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 0
    call 84
    local.get 0
    call 142
    local.get 0
    i32.load
    local.set 2
    local.get 0
    i32.load offset=4
    call 129
    local.set 3
    i32.const 1
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.get 3
      i32.gt_u
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 2
        local.get 1
        call 127
        i32.store offset=12
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 12
        i32.add
        call 147
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;161;) (type 0)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 0
    call 84
    local.get 0
    i32.const 16
    i32.add
    call 143
    local.get 0
    local.get 0
    i32.load offset=20
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 0
    i32.load offset=16
    i32.store offset=24
    local.get 0
    local.get 1
    call 129
    i32.store offset=36
    local.get 0
    i32.const 1
    i32.store offset=32
    local.get 0
    local.get 0
    i32.const 24
    i32.add
    i32.store offset=40
    loop  ;; label = @1
      local.get 0
      i32.const 48
      i32.add
      local.get 0
      i32.const 32
      i32.add
      call 48
      local.get 0
      i64.load offset=48
      i64.eqz
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.load offset=68
        local.get 0
        i64.load offset=56
        local.get 0
        i32.load offset=64
        local.get 0
        i32.const 8
        i32.add
        call 50
        local.get 0
        local.get 0
        i32.load8_u offset=12
        i32.store8 offset=76
        local.get 0
        local.get 0
        i32.load offset=8
        i32.store offset=72
        local.get 0
        i32.const 72
        i32.add
        call 132
        local.get 0
        i32.const 72
        i32.add
        call 133
        local.get 0
        i32.const 72
        i32.add
        call 57
        local.get 0
        i32.load offset=72
        local.get 0
        i32.load8_u offset=76
        call 55
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set 0)
  (func (;162;) (type 0)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 0
    call 84
    call 53
    local.set 2
    local.get 0
    i32.const 16
    i32.add
    call 143
    local.get 0
    local.get 0
    i32.load offset=20
    local.tee 1
    i32.store offset=36
    local.get 0
    local.get 0
    i32.load offset=16
    i32.store offset=32
    local.get 0
    local.get 1
    call 129
    i32.store offset=44
    local.get 0
    i32.const 1
    i32.store offset=40
    local.get 0
    local.get 0
    i32.const 32
    i32.add
    i32.store offset=48
    loop  ;; label = @1
      local.get 0
      i32.const 56
      i32.add
      local.get 0
      i32.const 40
      i32.add
      call 48
      local.get 0
      i64.load offset=56
      i64.eqz
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.load offset=72
        local.set 3
        local.get 0
        i32.load offset=76
        local.set 4
        local.get 0
        i64.load offset=64
        local.set 5
        call 53
        local.set 1
        block  ;; label = @3
          local.get 3
          i32.const 2147483646
          i32.ne
          if  ;; label = @4
            local.get 3
            call 47
            local.set 1
            br 1 (;@3;)
          end
          local.get 1
          i32.const 1048999
          i32.const 4
          call 18
          drop
        end
        local.get 2
        local.get 1
        call 80
        call 53
        local.tee 1
        local.get 5
        call 98
        local.get 2
        local.get 1
        call 80
        call 53
        drop
        local.get 2
        local.get 4
        call 58
        call 80
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 0
    local.get 2
    call 9
    i32.store offset=60
    local.get 0
    i32.const 0
    i32.store offset=56
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=64
    loop  ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.const 56
      i32.add
      call 91
      local.get 0
      i32.load offset=8
      if  ;; label = @2
        local.get 0
        i32.load offset=12
        call 4
        drop
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set 0)
  (func (;163;) (type 0)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 0
    call 84
    local.get 0
    i32.const 24
    i32.add
    call 142
    local.get 0
    i32.load offset=24
    local.set 1
    local.get 0
    i32.load offset=28
    local.tee 2
    call 129
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=40
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    i32.const 1
    i32.store offset=32
    loop  ;; label = @1
      local.get 0
      i32.const 16
      i32.add
      local.get 0
      i32.const 32
      i32.add
      call 145
      local.get 0
      i32.load offset=16
      if  ;; label = @2
        local.get 1
        local.get 0
        i32.load offset=20
        call 128
        call 124
        br 1 (;@1;)
      end
    end
    local.get 2
    i32.const 0
    call 125
    local.get 0
    i32.const 8
    i32.add
    call 143
    local.get 0
    i32.load offset=8
    local.set 1
    local.get 0
    i32.load offset=12
    local.tee 2
    call 129
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=40
    local.get 0
    local.get 3
    i32.store offset=36
    local.get 0
    i32.const 1
    i32.store offset=32
    loop  ;; label = @1
      local.get 0
      local.get 0
      i32.const 32
      i32.add
      call 145
      local.get 0
      i32.load
      if  ;; label = @2
        local.get 1
        local.get 0
        i32.load offset=4
        call 128
        call 124
        br 1 (;@1;)
      end
    end
    local.get 2
    i32.const 0
    call 125
    local.get 0
    i32.const 48
    i32.add
    global.set 0)
  (func (;164;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 1
    call 84
    call 81
    local.set 1
    local.get 0
    i32.const 16
    i32.add
    call 142
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=16
      local.set 2
      local.get 0
      i32.load offset=20
      call 129
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call 127
      local.tee 1
      i32.store offset=28
      local.get 0
      local.get 1
      call 9
      i32.store offset=36
      local.get 0
      i32.const 0
      i32.store offset=32
      local.get 0
      local.get 0
      i32.const 28
      i32.add
      i32.store offset=40
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 32
        i32.add
        call 91
        local.get 0
        i32.load offset=8
        if  ;; label = @3
          local.get 0
          i32.load offset=12
          call 4
          drop
          br 1 (;@2;)
        end
      end
      local.get 0
      i32.const 48
      i32.add
      global.set 0
      return
    end
    i32.const 1049188
    i32.const 18
    call 10
    unreachable)
  (func (;165;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 1
    call 84
    call 81
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call 143
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 0
      i32.load offset=12
      call 129
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      local.get 2
      local.get 1
      call 49
      block  ;; label = @2
        local.get 0
        i32.load offset=24
        local.tee 1
        i32.const 2147483646
        i32.ne
        if  ;; label = @3
          local.get 1
          call 4
          drop
          br 1 (;@2;)
        end
        i32.const 1048999
        i32.const 4
        call 31
      end
      local.get 0
      i64.load offset=16
      call 32
      local.get 0
      i32.load offset=28
      call 33
      local.get 0
      i32.const 32
      i32.add
      global.set 0
      return
    end
    i32.const 1049188
    i32.const 18
    call 10
    unreachable)
  (func (;166;) (type 0)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 77
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 1
    i32.const 1
    call 79
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 78
    local.set 3
    local.get 0
    i32.load offset=12
    call 83
    call 66
    local.set 4
    call 17
    i64.const 1
    i64.shr_u
    local.get 1
    local.get 4
    local.get 2
    local.get 3
    call 64
    call 144
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;167;) (type 0)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 77
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 2
    i32.const 1
    call 79
    local.set 3
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 78
    local.set 4
    local.get 0
    i32.load offset=12
    call 83
    call 66
    local.set 1
    call 17
    i64.const 3
    i64.div_u
    local.tee 5
    local.get 2
    local.get 1
    call 117
    local.tee 1
    local.get 3
    local.get 4
    call 64
    call 144
    local.get 5
    local.get 2
    local.get 1
    local.get 3
    local.get 4
    call 64
    call 144
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;168;) (type 0)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 77
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 1
    i32.const 1
    call 79
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 78
    local.set 3
    local.get 0
    i32.load offset=12
    call 83
    call 66
    local.set 4
    call 17
    i64.const 1
    i64.shr_u
    local.get 1
    local.get 4
    local.get 2
    local.get 3
    call 44
    local.tee 1
    call 34
    drop
    i32.const 1049130
    i32.const 30
    call 136
    local.get 1
    call 134
    call 29
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;169;) (type 0)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048660
    i32.const 2
    call 82
    local.set 1
    i32.const 1
    call 79
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 78
    local.set 3
    local.get 0
    i32.load offset=12
    call 83
    call 17
    i64.const 1
    i64.shr_u
    local.get 1
    local.get 2
    local.get 3
    call 44
    local.tee 1
    call 35
    drop
    local.get 1
    call 144
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;170;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    call 86
    i32.const 1
    call 85
    i32.const 0
    call 79
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 78
    local.set 2
    local.get 0
    i32.load offset=12
    call 83
    call 17
    call 101
    local.get 1
    i32.const 0
    call 171
    local.get 2
    call 44
    local.tee 1
    call 44
    local.tee 2
    call 36
    drop
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 1
    call 4
    drop
    local.get 0
    i32.const 4
    i32.or
    call 147
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;171;) (type 3) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.const 8
    i32.shl
    local.get 0
    i32.const 65280
    i32.and
    i32.const 8
    i32.shr_u
    i32.or
    i32.store16 offset=14
    local.get 1
    i32.const 14
    i32.add
    i32.const 2
    call 42
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;172;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    call 86
    i32.const 1
    call 85
    i32.const 0
    i32.const 1048662
    i32.const 23
    call 82
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 78
    local.set 2
    local.get 0
    i32.load offset=12
    call 83
    call 17
    call 101
    local.get 1
    i32.const 0
    call 171
    local.get 2
    call 44
    local.tee 1
    call 44
    call 37
    drop
    local.get 1
    call 4
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;173;) (type 0)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048640
    i32.const 16
    call 82
    i32.const 1
    call 79
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 78
    local.set 3
    local.get 0
    i32.load offset=12
    call 83
    call 17
    call 101
    local.get 2
    i32.const 256
    call 171
    local.get 3
    i32.const -25
    call 38
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;174;) (type 0)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    call 86
    i32.const 2
    call 85
    i32.const 0
    i32.const 1048685
    i32.const 10
    call 82
    i32.const 1
    i32.const 1048662
    i32.const 23
    call 82
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    call 78
    local.set 3
    local.get 0
    i32.load offset=12
    call 83
    call 17
    call 101
    local.get 2
    i32.const 0
    call 171
    local.get 3
    i32.const -25
    call 39
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;175;) (type 0)
    (local i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 112
    i32.sub
    local.tee 0
    global.set 0
    call 53
    drop
    call 53
    drop
    call 86
    i32.const 0
    call 85
    local.get 0
    i32.const 0
    i32.store offset=72
    local.get 0
    i32.const 72
    i32.add
    call 78
    local.set 3
    local.get 0
    i32.load offset=72
    call 83
    local.get 0
    call 67
    local.tee 1
    i32.store offset=52
    block  ;; label = @1
      local.get 1
      call 9
      if  ;; label = @2
        local.get 0
        local.get 1
        call 9
        i32.store offset=60
        local.get 0
        i32.const 0
        i32.store offset=56
        local.get 0
        local.get 0
        i32.const 52
        i32.add
        i32.store offset=64
        loop  ;; label = @3
          local.get 0
          i32.const 72
          i32.add
          local.get 0
          i32.const 56
          i32.add
          call 105
          local.get 0
          i64.load offset=72
          i64.eqz
          br_if 2 (;@1;)
          local.get 0
          i64.load offset=88
          local.set 5
          local.get 0
          i64.load offset=80
          local.set 6
          local.get 0
          i32.const 40
          i32.add
          call 143
          local.get 0
          i32.load offset=44
          local.set 1
          local.get 0
          i32.load offset=40
          local.get 0
          local.get 6
          i64.store offset=96
          local.get 0
          local.get 5
          i64.store offset=104
          local.get 1
          local.get 0
          i32.const 96
          i32.add
          call 131
          br 0 (;@3;)
        end
        unreachable
      end
      call 66
      local.tee 1
      call 40
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.add
      call 143
      local.get 0
      i32.load offset=36
      local.set 2
      local.get 0
      i32.load offset=32
      local.get 0
      local.get 1
      i32.store offset=84
      local.get 0
      i64.const 0
      i64.store offset=72
      local.get 0
      i32.const 2147483646
      i32.store offset=80
      local.get 2
      local.get 0
      i32.const 72
      i32.add
      call 131
    end
    local.get 0
    local.get 3
    i32.store offset=56
    i32.const 1049088
    i32.const 12
    call 136
    local.get 0
    call 53
    i32.store offset=72
    local.get 0
    i32.const 56
    i32.add
    local.get 0
    i32.const 72
    i32.add
    call 135
    local.get 0
    i32.load offset=72
    call 29
    local.get 0
    i32.const 24
    i32.add
    call 142
    local.get 0
    i32.load offset=24
    local.get 0
    i32.load offset=28
    local.tee 1
    call 129
    i32.const 1
    i32.add
    local.tee 3
    call 128
    local.get 0
    i32.const 16
    i32.add
    call 50
    local.get 0
    local.get 0
    i32.load8_u offset=20
    i32.store8 offset=100
    local.get 0
    local.get 0
    i32.load offset=16
    i32.store offset=96
    local.get 0
    local.get 0
    i32.load offset=56
    call 9
    i32.store offset=76
    local.get 0
    i32.const 0
    i32.store offset=72
    local.get 0
    local.get 0
    i32.const 56
    i32.add
    i32.store offset=80
    loop  ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.const 72
      i32.add
      call 91
      local.get 0
      i32.load offset=8
      if  ;; label = @2
        local.get 0
        i32.load offset=12
        local.get 0
        i32.const 96
        i32.add
        call 59
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.load offset=96
    local.get 0
    i32.load8_u offset=100
    call 92
    local.get 1
    local.get 3
    call 125
    local.get 0
    i32.const 112
    i32.add
    global.set 0)
  (func (;176;) (type 0)
    i32.const 1049208
    i32.const 14
    call 10
    unreachable)
  (func (;177;) (type 4) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 2
    i32.const 15
    i32.gt_u
    if  ;; label = @1
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 5
      i32.add
      local.set 3
      local.get 5
      if  ;; label = @2
        local.get 1
        local.set 4
        loop  ;; label = @3
          local.get 0
          local.get 4
          i32.load8_u
          i32.store8
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 3
      local.get 2
      local.get 5
      i32.sub
      local.tee 7
      i32.const -4
      i32.and
      local.tee 6
      i32.add
      local.set 0
      block  ;; label = @2
        local.get 1
        local.get 5
        i32.add
        local.tee 5
        i32.const 3
        i32.and
        local.tee 2
        if  ;; label = @3
          local.get 6
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 5
          i32.const -4
          i32.and
          local.tee 4
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 2
          i32.const 3
          i32.shl
          local.tee 8
          i32.sub
          i32.const 24
          i32.and
          local.set 2
          local.get 4
          i32.load
          local.set 4
          loop  ;; label = @4
            local.get 3
            local.get 4
            local.get 8
            i32.shr_u
            local.get 1
            i32.load
            local.tee 4
            local.get 2
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 3
            i32.const 4
            i32.add
            local.tee 3
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
          end
          br 1 (;@2;)
        end
        local.get 6
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 5
        local.set 1
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 3
          i32.const 4
          i32.add
          local.tee 3
          local.get 0
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 7
      i32.const 3
      i32.and
      local.set 2
      local.get 5
      local.get 6
      i32.add
      local.set 1
    end
    local.get 2
    if  ;; label = @1
      local.get 0
      local.get 2
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.tee 0
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1059245))
  (global (;2;) i32 (i32.const 1059248))
  (export "memory" (memory 0))
  (export "init" (func 148))
  (export "forward_payment" (func 149))
  (export "forward_direct_dcdt_via_transf_exec" (func 150))
  (export "forward_direct_dcdt_multi" (func 151))
  (export "forward_async_call" (func 152))
  (export "forward_async_call_half_payment" (func 153))
  (export "forward_transf_exec_rewa" (func 154))
  (export "forward_transf_exec_dcdt" (func 155))
  (export "forward_transf_exec" (func 156))
  (export "forward_transf_exec_twice" (func 157))
  (export "forward_async_retrieve_multi_transfer_funds" (func 158))
  (export "forwarder_async_send_and_retrieve_multi_transfer_funds" (func 159))
  (export "callback_args" (func 160))
  (export "callback_payments" (func 161))
  (export "callback_payments_triples" (func 162))
  (export "clear_callback_info" (func 163))
  (export "callback_args_at_index" (func 164))
  (export "callback_payment_at_index" (func 165))
  (export "call_execute_on_dest_context" (func 166))
  (export "call_execute_on_dest_context_twice" (func 167))
  (export "call_execute_on_same_context" (func 168))
  (export "call_execute_on_dest_context_readonly" (func 169))
  (export "deploy_contract" (func 170))
  (export "deploy_from_source" (func 172))
  (export "upgrade" (func 173))
  (export "upgrade_from_source" (func 174))
  (export "callBack" (func 175))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "retrieve_multi_funds_asyncburn_and_create_retrive_asyncargumentschild_sc_addressargstosource_contract_addresssc_addressindextoken_paymentsincorrect number of DCDT transfersargument decode error (): function does not accept DCDT paymenttoo few argumentstoo many argumentswrong number of argumentsCB_CLOSUREMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferinput too longinput too shortManagedVec index out of rangeDCDT expectedREWA.itemstorage decode error: .lenbad array lengthvar argscallback_argscallback_paymentscallback_rawexecute_on_dest_context_resultexecute_on_same_context_resultfungible DCDT token expectedindex out of range\00\00panic occurred")
  (data (;1;) (i32.const 1049224) "\9c\ff\ff\ff"))
