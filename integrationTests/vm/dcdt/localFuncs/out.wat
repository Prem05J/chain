(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32)))
  (type (;8;) (func (param i32 i64)))
  (type (;9;) (func (param i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32) (result i64)))
  (type (;13;) (func (param i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i64 i32 i32)))
  (type (;15;) (func (param i32 i64 i32)))
  (type (;16;) (func (param i64)))
  (type (;17;) (func (param i64 i32 i32) (result i32)))
  (type (;18;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;19;) (func (result i64)))
  (type (;20;) (func (param i32) (result i64)))
  (import "env" "checkNoPayment" (func (;0;) (type 0)))
  (import "env" "mBufferFinish" (func (;1;) (type 3)))
  (import "env" "bigIntFinishUnsigned" (func (;2;) (type 2)))
  (import "env" "mBufferGetLength" (func (;3;) (type 3)))
  (import "env" "signalError" (func (;4;) (type 1)))
  (import "env" "getGasLeft" (func (;5;) (type 19)))
  (import "env" "smallIntFinishUnsigned" (func (;6;) (type 16)))
  (import "env" "managedOwnerAddress" (func (;7;) (type 2)))
  (import "env" "mBufferSetBytes" (func (;8;) (type 9)))
  (import "env" "managedWriteLog" (func (;9;) (type 1)))
  (import "env" "managedTransferValueExecute" (func (;10;) (type 11)))
  (import "env" "bigIntAdd" (func (;11;) (type 7)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func (;12;) (type 11)))
  (import "env" "mBufferToBigIntUnsigned" (func (;13;) (type 5)))
  (import "env" "mBufferAppendBytes" (func (;14;) (type 9)))
  (import "env" "mBufferAppend" (func (;15;) (type 5)))
  (import "env" "bigIntSetInt64" (func (;16;) (type 8)))
  (import "env" "managedAsyncCall" (func (;17;) (type 6)))
  (import "env" "managedCaller" (func (;18;) (type 2)))
  (import "env" "managedSCAddress" (func (;19;) (type 2)))
  (import "env" "bigIntGetCallValue" (func (;20;) (type 2)))
  (import "env" "managedGetMultiDCDTCallValue" (func (;21;) (type 2)))
  (import "env" "managedExecuteOnDestContext" (func (;22;) (type 18)))
  (import "env" "cleanReturnData" (func (;23;) (type 0)))
  (import "env" "mBufferGetArgument" (func (;24;) (type 5)))
  (import "env" "getNumArguments" (func (;25;) (type 4)))
  (import "env" "smallIntGetUnsignedArgument" (func (;26;) (type 20)))
  (import "env" "bigIntGetUnsignedArgument" (func (;27;) (type 1)))
  (import "env" "managedSignalError" (func (;28;) (type 2)))
  (import "env" "mBufferStorageLoad" (func (;29;) (type 5)))
  (import "env" "mBufferStorageStore" (func (;30;) (type 5)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;31;) (type 5)))
  (import "env" "mBufferNew" (func (;32;) (type 4)))
  (import "env" "mBufferGetByteSlice" (func (;33;) (type 10)))
  (func (;34;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 0
    call 35
    i32.const 0
    call 36
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 1048684
    i32.const 15
    call 37
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=12
    call 38
    i32.eqz
    if  ;; label = @1
      local.get 1
      call 1
      drop
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;35;) (type 0)
    i32.const 1049028
    call 25
    i32.store)
  (func (;36;) (type 2) (param i32)
    i32.const 1049028
    i32.load
    local.get 0
    i32.ge_s
    if  ;; label = @1
      return
    end
    i32.const 1048879
    i32.const 17
    call 4
    unreachable)
  (func (;37;) (type 6) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const 1049028
      i32.load
      i32.ge_s
      if  ;; label = @2
        i32.const 1
        local.set 4
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      local.get 3
      call 98
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store)
  (func (;38;) (type 2) (param i32)
    i32.const 1049028
    i32.load
    local.get 0
    i32.gt_s
    if  ;; label = @1
      i32.const 1048921
      i32.const 18
      call 4
      unreachable
    end)
  (func (;39;) (type 0)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 40
    local.get 0
    call 41
    i32.store offset=12
    call 42
    local.get 0
    i32.const 12
    i32.add
    call 43
    i32.const 1048590
    i32.const 12
    call 44
    call 45
    local.tee 1
    local.get 1
    call 46
    i32.const 1
    i32.add
    call 47
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;40;) (type 2) (param i32)
    call 25
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048896
    i32.const 25
    call 4
    unreachable)
  (func (;41;) (type 4) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 0
    global.set 0
    local.get 0
    call 51
    local.tee 2
    i32.store offset=12
    call 58
    local.set 1
    local.get 0
    local.get 2
    call 3
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=20
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=16
    loop (result i32)  ;; label = @1
      local.get 0
      i32.const 32
      i32.add
      local.get 0
      i32.const 16
      i32.add
      call 60
      local.get 0
      i64.load offset=32
      i64.const 1
      i64.ne
      if (result i32)  ;; label = @2
        local.get 0
        i32.const -64
        i32.sub
        global.set 0
        local.get 1
      else
        local.get 0
        i32.load offset=52
        local.get 0
        i64.load offset=40
        local.set 4
        local.get 0
        i32.load offset=48
        local.set 3
        call 58
        drop
        local.get 1
        local.get 3
        call 67
        call 59
        local.get 1
        local.get 4
        call 84
        local.get 0
        call 58
        i32.store offset=60
        local.get 0
        i32.const 60
        i32.add
        call 95
        local.get 1
        local.get 0
        i32.load offset=60
        call 59
        br 1 (;@1;)
      end
    end)
  (func (;42;) (type 4) (result i32)
    (local i32)
    i32.const 1049020
    i32.load
    local.tee 0
    i32.const 2147483647
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1049020
      i32.const -11
      i32.store
      i32.const -11
      call 20
      i32.const -11
    else
      local.get 0
    end)
  (func (;43;) (type 1) (param i32 i32)
    (local i32)
    i32.const 1048590
    i32.const 12
    call 83
    local.tee 2
    local.get 0
    call 63
    local.get 2
    local.get 1
    call 96
    local.get 2
    call 58
    call 9)
  (func (;44;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call 77
    local.tee 2
    local.get 0
    local.get 1
    call 8
    drop
    local.get 2)
  (func (;45;) (type 3) (param i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1048673
    i32.const 11
    call 44
    local.set 2
    local.get 1
    local.get 0
    call 3
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 2
    local.get 1
    i32.const 12
    i32.add
    i32.const 4
    call 14
    drop
    local.get 2
    local.get 0
    call 15
    drop
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func (;46;) (type 3) (param i32) (result i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    call 77
    local.tee 0
    call 29
    drop
    block  ;; label = @1
      local.get 0
      call 3
      local.tee 2
      i32.const 9
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 1
      i32.const 8
      i32.add
      local.get 2
      call 92
      local.get 0
      i32.const 0
      local.get 1
      i32.load
      local.tee 0
      local.get 1
      i32.load offset=4
      local.tee 2
      call 53
      drop
      local.get 0
      local.get 2
      call 93
      local.tee 3
      i64.const 4294967296
      i64.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      local.get 3
      i32.wrap_i64
      return
    end
    i32.const 1048965
    i32.const 22
    call 44
    local.tee 0
    i32.const 1048781
    i32.const 14
    call 14
    drop
    local.get 0
    call 28
    unreachable)
  (func (;47;) (type 1) (param i32 i32)
    (local i32 i32 i32)
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
    call 100
    local.get 2
    i32.load offset=4
    local.set 1
    local.get 2
    i32.load
    local.set 3
    call 77
    local.tee 4
    local.get 3
    local.get 1
    call 8
    drop
    local.get 0
    local.get 4
    call 30
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;48;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 40
    call 42
    local.set 1
    local.get 0
    call 41
    i32.store offset=16
    local.get 1
    local.get 0
    i32.const 16
    i32.add
    call 43
    i32.const 1048602
    i32.const 25
    call 44
    call 45
    local.tee 2
    local.get 2
    call 46
    i32.const 1
    i32.add
    call 47
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 0
    i32.load offset=16
    local.tee 2
    i32.store offset=12
    local.get 1
    call 2
    local.get 0
    local.get 2
    call 3
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=20
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    i32.store offset=16
    loop  ;; label = @1
      local.get 0
      local.get 0
      i32.const 16
      i32.add
      call 49
      local.get 0
      i32.load
      if  ;; label = @2
        local.get 0
        i32.load offset=4
        call 1
        drop
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;49;) (type 1) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block (result i32)  ;; label = @1
      i32.const 0
      local.get 1
      i32.load offset=4
      local.tee 2
      i32.const 4
      i32.add
      local.tee 4
      local.get 1
      i32.load offset=8
      i32.gt_u
      br_if 0 (;@1;)
      drop
      local.get 3
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.load
      i32.load
      local.get 2
      local.get 3
      i32.const 12
      i32.add
      i32.const 4
      call 105
      drop
      local.get 3
      i32.load offset=12
      local.set 2
      local.get 1
      local.get 4
      i32.store offset=4
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
  (func (;50;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 40
    i32.const 1
    local.set 2
    block  ;; label = @1
      call 51
      local.tee 3
      call 52
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 3
        call 3
        local.set 5
        local.get 0
        i32.const 16
        i32.add
        local.set 6
        loop  ;; label = @3
          local.get 4
          local.set 7
          local.get 1
          i32.const 16
          i32.add
          local.tee 8
          local.get 5
          i32.gt_u
          br_if 2 (;@1;)
          local.get 6
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=8
          local.get 3
          local.get 1
          local.get 0
          i32.const 8
          i32.add
          i32.const 16
          call 53
          drop
          local.get 0
          i32.const 0
          i32.store offset=28
          i32.const 1
          local.set 4
          local.get 2
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call 54
          drop
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call 55
          drop
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call 54
          drop
          local.get 8
          local.set 1
          i32.const 0
          local.set 2
          br_if 0 (;@3;)
        end
        call 56
        unreachable
      end
      i32.const 1048747
      i32.const 34
      call 4
      unreachable
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;51;) (type 4) (result i32)
    (local i32)
    i32.const 1049024
    i32.load
    local.tee 0
    i32.const 2147483647
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1049024
      i32.const -21
      i32.store
      i32.const -21
      call 21
      i32.const -21
    else
      local.get 0
    end)
  (func (;52;) (type 3) (param i32) (result i32)
    local.get 0
    call 3
    i32.const 4
    i32.shr_u)
  (func (;53;) (type 10) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call 33
    i32.const 0
    i32.ne)
  (func (;54;) (type 5) (param i32 i32) (result i32)
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
    call 106
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 107
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
  (func (;55;) (type 12) (param i32 i32) (result i64)
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
    call 106
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 107
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
  (func (;56;) (type 0)
    call 109
    unreachable)
  (func (;57;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 40
    local.get 0
    call 51
    local.tee 1
    i32.store offset=28
    local.get 0
    call 58
    local.tee 3
    i32.store offset=32
    local.get 3
    call 58
    call 59
    local.get 0
    call 58
    i32.store offset=36
    local.get 0
    local.get 1
    call 3
    i32.store offset=48
    local.get 0
    i32.const 0
    i32.store offset=44
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=40
    loop  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 56
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call 60
        local.get 0
        i64.load offset=56
        i64.const 1
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=76
        local.set 3
        local.get 0
        i64.load offset=64
        local.set 7
        local.get 0
        i32.load offset=72
        local.set 5
        call 58
        local.tee 1
        local.get 5
        call 61
        block (result i32)  ;; label = @3
          local.get 7
          i64.eqz
          if  ;; label = @4
            i32.const 13
            local.set 4
            i32.const 1048853
            br 1 (;@3;)
          end
          call 58
          local.tee 2
          local.get 7
          call 62
          local.get 1
          local.get 2
          call 59
          i32.const 11
          local.set 4
          i32.const 1048842
        end
        local.set 2
        local.get 1
        local.get 3
        call 63
        call 5
        local.get 2
        local.get 4
        call 44
        local.get 1
        call 64
        drop
        call 58
        local.set 2
        call 65
        local.set 4
        call 58
        local.set 6
        call 58
        local.tee 1
        local.get 5
        call 61
        local.get 1
        local.get 3
        call 63
        local.get 1
        local.get 2
        call 61
        local.get 1
        local.get 4
        call 63
        local.get 1
        local.get 6
        call 61
        call 58
        local.tee 2
        call 66
        local.get 1
        local.get 2
        call 59
        block  ;; label = @3
          local.get 0
          i32.load offset=32
          call 3
          if  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=32
            call 3
            i32.store offset=88
            local.get 0
            i32.const 0
            i32.store offset=84
            local.get 0
            local.get 0
            i32.const 32
            i32.add
            i32.store offset=80
            loop  ;; label = @5
              local.get 0
              i32.const 16
              i32.add
              local.get 0
              i32.const 80
              i32.add
              call 49
              local.get 0
              i32.load offset=16
              i32.eqz
              br_if 2 (;@3;)
              local.get 0
              i32.load offset=20
              local.set 2
              call 58
              drop
              local.get 1
              local.get 2
              call 67
              call 59
              br 0 (;@5;)
            end
            unreachable
          end
          call 58
          local.tee 2
          call 66
          local.get 1
          local.get 2
          call 59
        end
        local.get 0
        i32.const 8
        i32.add
        call 5
        i32.const 1048866
        i32.const 13
        call 44
        local.get 1
        call 64
        i32.const 0
        call 68
        i64.const 0
        local.set 7
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=12
          local.tee 2
          call 3
          local.tee 1
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          i64.const 0
          i64.store offset=80
          local.get 2
          i32.const 0
          local.get 0
          local.get 1
          i32.sub
          i32.const 88
          i32.add
          local.get 1
          call 53
          br_if 0 (;@3;)
          local.get 0
          i64.load offset=80
          local.tee 7
          i64.const 56
          i64.shl
          local.get 7
          i64.const 40
          i64.shl
          i64.const 71776119061217280
          i64.and
          i64.or
          local.get 7
          i64.const 24
          i64.shl
          i64.const 280375465082880
          i64.and
          local.get 7
          i64.const 8
          i64.shl
          i64.const 1095216660480
          i64.and
          i64.or
          i64.or
          local.get 7
          i64.const 8
          i64.shr_u
          i64.const 4278190080
          i64.and
          local.get 7
          i64.const 24
          i64.shr_u
          i64.const 16711680
          i64.and
          i64.or
          local.get 7
          i64.const 40
          i64.shr_u
          i64.const 65280
          i64.and
          local.get 7
          i64.const 56
          i64.shr_u
          i64.or
          i64.or
          i64.or
          local.set 7
        end
        local.get 0
        local.get 3
        i32.store offset=92
        local.get 0
        local.get 7
        i64.store offset=80
        local.get 0
        local.get 5
        i32.store offset=88
        local.get 0
        i32.const 36
        i32.add
        local.get 0
        i32.const 80
        i32.add
        call 69
        br 1 (;@1;)
      end
    end
    call 70
    local.get 0
    i32.const 36
    i32.add
    call 71
    unreachable)
  (func (;58;) (type 4) (result i32)
    (local i32)
    call 77
    local.tee 0
    i32.const 1049000
    i32.const 0
    call 8
    drop
    local.get 0)
  (func (;59;) (type 1) (param i32 i32)
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
    call 14
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;60;) (type 1) (param i32 i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    local.get 1
    i32.load offset=4
    local.tee 3
    i32.const 16
    i32.add
    local.tee 4
    local.get 1
    i32.load offset=8
    i32.le_u
    if (result i64)  ;; label = @1
      local.get 2
      i32.const 16
      i32.add
      i64.const 0
      i64.store
      local.get 2
      i64.const 0
      i64.store offset=8
      local.get 1
      i32.load
      i32.load
      local.get 3
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      call 105
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
      call 54
      local.set 3
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call 55
      local.set 5
      local.get 0
      i32.const 20
      i32.add
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call 54
      i32.store
      local.get 0
      i32.const 16
      i32.add
      local.get 3
      i32.store
      local.get 0
      local.get 5
      i64.store offset=8
      local.get 1
      local.get 4
      i32.store offset=4
      i64.const 1
    else
      i64.const 0
    end
    i64.store
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;61;) (type 1) (param i32 i32)
    call 58
    drop
    local.get 0
    local.get 1
    call 67
    call 59)
  (func (;62;) (type 8) (param i32 i64)
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
    call 100
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 97
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;63;) (type 1) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    call 58
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call 95
    local.get 0
    local.get 2
    i32.load offset=12
    call 59
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;64;) (type 17) (param i64 i32 i32) (result i32)
    i32.const -25
    call 19
    local.get 0
    i32.const -25
    call 65
    local.get 1
    local.get 2
    call 77
    local.tee 1
    call 22
    drop
    call 23
    local.get 1)
  (func (;65;) (type 4) (result i32)
    (local i32)
    call 77
    local.tee 0
    call 87
    local.get 0)
  (func (;66;) (type 2) (param i32)
    local.get 0
    i32.const 1049000
    i32.const 0
    call 97)
  (func (;67;) (type 3) (param i32) (result i32)
    (local i32)
    call 32
    local.tee 1
    local.get 0
    call 15
    drop
    local.get 1)
  (func (;68;) (type 7) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 2
    i32.shl
    local.get 3
    i32.const 12
    i32.add
    i32.const 4
    call 105
    local.set 2
    local.get 3
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 2
    i32.const 1
    i32.xor
    i32.store
    local.get 0
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
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;69;) (type 1) (param i32 i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 32
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=24
    local.get 2
    local.get 1
    i32.load offset=8
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 3
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 3
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=40
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    i32.const 24
    i32.add
    i32.const 0
    i32.const 4
    call 108
    local.get 2
    i32.load offset=16
    local.get 2
    i32.load offset=20
    local.get 2
    i32.const 40
    i32.add
    i32.const 4
    call 107
    local.get 2
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
    i64.store offset=40
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 24
    i32.add
    i32.const 4
    i32.const 12
    call 108
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    local.get 2
    i32.const 40
    i32.add
    i32.const 8
    call 107
    local.get 2
    local.get 1
    i32.load offset=12
    local.tee 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
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
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 24
    i32.add
    i32.const 12
    i32.const 16
    call 108
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    local.get 2
    i32.const 40
    i32.add
    i32.const 4
    call 107
    local.get 0
    i32.load
    local.get 2
    i32.const 24
    i32.add
    i32.const 16
    call 14
    drop
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;70;) (type 4) (result i32)
    (local i32)
    call 77
    local.tee 0
    call 18
    local.get 0)
  (func (;71;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    call 58
    local.tee 3
    local.get 0
    call 61
    local.get 1
    i32.load
    local.tee 0
    call 52
    local.set 4
    call 58
    local.tee 5
    local.get 4
    i64.extend_i32_u
    call 62
    local.get 3
    local.get 5
    call 59
    local.get 2
    local.get 0
    call 3
    i32.store offset=8
    local.get 2
    i32.const 0
    i32.store offset=4
    local.get 2
    local.get 1
    i32.store
    loop  ;; label = @1
      local.get 2
      i32.const 16
      i32.add
      local.get 2
      call 60
      local.get 2
      i64.load offset=16
      i64.const 1
      i64.ne
      if  ;; label = @2
        i32.const 1049000
        i32.const 0
        call 44
        local.tee 0
        call 103
        i32.eqz
        if  ;; label = @3
          local.get 3
          local.get 0
          call 59
        end
        call 101
        call 65
        i32.const 1048822
        i32.const 20
        call 44
        local.get 3
        call 102
        unreachable
      else
        local.get 2
        i32.load offset=36
        local.get 2
        i64.load offset=24
        local.set 6
        local.get 2
        i32.load offset=32
        local.set 1
        call 58
        drop
        local.get 3
        local.get 1
        call 67
        call 59
        local.get 3
        local.get 6
        call 84
        local.get 2
        call 58
        i32.store offset=44
        local.get 2
        i32.const 44
        i32.add
        call 95
        local.get 3
        local.get 2
        i32.load offset=44
        call 59
        br 1 (;@1;)
      end
      unreachable
    end
    unreachable)
  (func (;72;) (type 0)
    call 0
    i32.const 1
    call 40
    i32.const 0
    call 99
    call 45
    call 46
    i64.extend_i32_u
    call 6)
  (func (;73;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    call 0
    call 35
    i32.const 0
    call 36
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    call 74
    local.set 1
    local.get 0
    i32.load offset=16
    call 38
    i32.const 1048576
    i32.const 14
    call 44
    call 45
    local.tee 2
    local.get 2
    call 46
    i32.const 1
    i32.add
    call 47
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 1
    call 3
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=20
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=16
    loop  ;; label = @1
      local.get 0
      local.get 0
      i32.const 16
      i32.add
      call 49
      local.get 0
      i32.load
      if  ;; label = @2
        local.get 0
        i32.load offset=4
        call 1
        drop
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;74;) (type 3) (param i32) (result i32)
    (local i32)
    call 58
    local.set 1
    loop  ;; label = @1
      local.get 0
      i32.load
      i32.const 1049028
      i32.load
      i32.ge_s
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.get 0
        i32.const 1048699
        i32.const 4
        call 98
        call 59
        br 1 (;@1;)
      end
    end
    local.get 1)
  (func (;75;) (type 0)
    call 0
    i32.const 0
    call 40
    call 70
    call 1
    drop)
  (func (;76;) (type 0)
    (local i32)
    call 0
    i32.const 0
    call 40
    call 77
    local.tee 0
    call 7
    local.get 0
    call 1
    drop)
  (func (;77;) (type 4) (result i32)
    (local i32)
    i32.const 1049016
    i32.const 1049016
    i32.load
    i32.const -1
    i32.add
    local.tee 0
    i32.store
    local.get 0)
  (func (;78;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 40
    local.get 0
    call 41
    i32.store offset=12
    call 42
    local.set 2
    i32.const 1048627
    i32.const 12
    call 83
    local.tee 1
    local.get 2
    call 63
    local.get 1
    local.get 0
    i32.const 12
    i32.add
    call 96
    local.get 1
    call 58
    call 9
    i32.const 1048627
    i32.const 12
    call 79
    unreachable)
  (func (;79;) (type 1) (param i32 i32)
    local.get 0
    local.get 1
    call 4
    unreachable)
  (func (;80;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 0
    call 35
    i32.const 3
    call 36
    call 81
    local.set 2
    i32.const 1
    call 26
    local.set 7
    i32.const 2
    call 82
    local.set 4
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 1048719
    i32.const 14
    call 37
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.get 0
    i32.load offset=12
    call 38
    i32.const 1048659
    i32.const 14
    call 83
    local.set 1
    call 58
    local.set 5
    block  ;; label = @1
      local.get 2
      i32.const 2147483646
      i32.ne
      if  ;; label = @2
        local.get 2
        call 67
        local.set 5
        br 1 (;@1;)
      end
      local.get 5
      i32.const 1048995
      i32.const 4
      call 8
      drop
    end
    local.get 1
    local.get 5
    call 59
    local.get 1
    local.get 7
    call 84
    local.get 1
    local.get 4
    call 63
    local.get 1
    call 58
    call 9
    call 70
    local.set 1
    if  ;; label = @1
      call 58
      local.set 3
    end
    local.get 2
    i32.const 2147483646
    i32.ne
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 7
      local.get 4
      local.get 3
      call 85
      unreachable
    end
    local.get 1
    local.get 4
    i64.const 0
    local.get 3
    call 58
    call 10
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;81;) (type 4) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    block (result i32)  ;; label = @1
      i32.const 0
      call 99
      local.tee 1
      call 3
      i32.const 4
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.const 0
        i32.store offset=12
        local.get 1
        i32.const 0
        local.get 0
        i32.const 12
        i32.add
        i32.const 4
        call 53
        drop
        i32.const 2147483646
        local.get 0
        i32.load offset=12
        i32.const 1145849669
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      local.get 1
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;82;) (type 3) (param i32) (result i32)
    local.get 0
    call 77
    local.tee 0
    call 27
    local.get 0)
  (func (;83;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call 58
    local.tee 2
    local.get 0
    local.get 1
    call 44
    call 59
    local.get 2)
  (func (;84;) (type 8) (param i32 i64)
    (local i32)
    call 58
    local.tee 2
    local.get 1
    call 62
    local.get 0
    local.get 2
    call 59)
  (func (;85;) (type 14) (param i32 i32 i64 i32 i32)
    (local i32)
    call 58
    local.tee 5
    local.get 1
    call 61
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i64.eqz
        if  ;; label = @3
          local.get 5
          local.get 3
          call 63
          local.get 4
          call 103
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 5
        local.get 2
        call 84
        local.get 5
        local.get 3
        call 63
        local.get 5
        local.get 0
        call 61
        local.get 4
        call 103
        i32.eqz
        if  ;; label = @3
          local.get 5
          local.get 4
          call 59
        end
        call 101
        call 65
        i32.const 1048795
        i32.const 15
        call 44
        local.get 5
        call 102
        unreachable
      end
      local.get 5
      local.get 4
      call 59
    end
    local.get 0
    call 65
    i32.const 1048810
    i32.const 12
    call 44
    local.get 5
    call 102
    unreachable)
  (func (;86;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    call 51
    drop
    call 35
    i32.const 2
    call 36
    i32.const 0
    call 99
    i32.const 1
    call 82
    local.set 4
    local.get 0
    i32.const 2
    i32.store offset=16
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.const 1048703
    i32.const 16
    call 37
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=16
    call 38
    call 70
    local.set 5
    if  ;; label = @1
      call 58
      local.set 2
    end
    call 58
    local.set 3
    local.get 0
    call 58
    local.tee 6
    i32.store offset=12
    call 67
    local.set 7
    call 77
    local.tee 1
    call 87
    local.get 1
    local.get 1
    local.get 4
    call 11
    local.get 0
    local.get 1
    i32.store offset=28
    local.get 0
    i64.const 0
    i64.store offset=16
    local.get 0
    local.get 7
    i32.store offset=24
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 16
    i32.add
    call 69
    local.get 5
    local.get 6
    i64.const 50000000
    local.get 2
    local.get 3
    call 12
    if  ;; label = @1
      i32.const 1048639
      i32.const 20
      call 79
      unreachable
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;87;) (type 2) (param i32)
    local.get 0
    i64.const 0
    call 16)
  (func (;88;) (type 0)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 0
    call 35
    i32.const 0
    call 36
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    call 89
    local.set 1
    local.get 0
    i32.load offset=32
    call 38
    call 70
    local.set 4
    local.get 0
    call 58
    i32.store offset=12
    local.get 1
    call 3
    local.set 2
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    local.get 2
    i32.const 2
    i32.shr_u
    local.tee 2
    i32.store offset=20
    local.get 0
    local.get 1
    i32.store offset=16
    i32.const 0
    local.set 1
    loop  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        i32.lt_u
        if  ;; label = @3
          local.get 0
          i32.const 16
          i32.add
          call 90
          call 67
          local.set 2
          local.get 0
          i32.const 16
          i32.add
          call 90
          local.set 1
          local.get 0
          i64.const 0
          i64.store offset=32
          local.get 1
          call 3
          local.tee 3
          i32.const 9
          i32.lt_u
          br_if 1 (;@2;)
          i32.const 1048987
          i32.const 8
          i32.const 1048781
          i32.const 14
          call 91
          unreachable
        end
        local.get 4
        local.get 0
        i32.const 12
        i32.add
        call 71
        unreachable
      end
      local.get 0
      local.get 0
      i32.const 32
      i32.add
      local.get 3
      call 92
      local.get 1
      i32.const 0
      local.get 0
      i32.load
      local.tee 1
      local.get 0
      i32.load offset=4
      local.tee 3
      call 53
      drop
      local.get 1
      local.get 3
      call 93
      local.set 5
      local.get 0
      i32.const 16
      i32.add
      call 90
      call 77
      local.tee 1
      call 13
      drop
      local.get 0
      local.get 1
      i32.store offset=44
      local.get 0
      local.get 5
      i64.store offset=32
      local.get 0
      local.get 2
      i32.store offset=40
      local.get 0
      i32.const 12
      i32.add
      local.get 0
      i32.const 32
      i32.add
      call 69
      local.get 0
      i32.load offset=20
      local.set 2
      local.get 0
      i32.load offset=24
      local.set 1
      br 0 (;@1;)
    end
    unreachable)
  (func (;89;) (type 3) (param i32) (result i32)
    (local i32)
    call 58
    local.set 1
    loop  ;; label = @1
      local.get 0
      i32.load
      i32.const 1049028
      i32.load
      i32.ge_s
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.get 0
        i32.const 1048733
        i32.const 14
        call 98
        call 59
        br 1 (;@1;)
      end
    end
    local.get 1)
  (func (;90;) (type 3) (param i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.get 0
    i32.load offset=8
    local.tee 2
    call 68
    local.get 1
    i32.load offset=8
    i32.const 1
    i32.eq
    if  ;; label = @1
      local.get 1
      i32.load offset=12
      local.get 0
      local.get 2
      i32.const 1
      i32.add
      i32.store offset=8
      call 67
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048987
    i32.const 8
    i32.const 1048879
    i32.const 17
    call 91
    unreachable)
  (func (;91;) (type 6) (param i32 i32 i32 i32)
    (local i32)
    i32.const 1048939
    i32.const 23
    call 44
    local.tee 4
    local.get 0
    local.get 1
    call 14
    drop
    local.get 4
    i32.const 1048962
    i32.const 3
    call 14
    drop
    local.get 4
    local.get 2
    local.get 3
    call 14
    drop
    local.get 4
    call 28
    unreachable)
  (func (;92;) (type 7) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    i32.const 0
    local.get 2
    local.get 1
    i32.const 8
    call 104
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store
    local.get 0
    local.get 3
    i32.load offset=12
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;93;) (type 12) (param i32 i32) (result i64)
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
  (func (;94;) (type 0)
    nop)
  (func (;95;) (type 1) (param i32 i32)
    (local i32)
    call 77
    local.tee 2
    local.get 0
    call 31
    drop
    local.get 1
    local.get 2
    i32.store)
  (func (;96;) (type 1) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.load
    call 3
    i32.store offset=24
    local.get 2
    i32.const 0
    i32.store offset=20
    local.get 2
    local.get 1
    i32.store offset=16
    loop  ;; label = @1
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 16
      i32.add
      call 49
      local.get 2
      i32.load offset=8
      if  ;; label = @2
        local.get 2
        i32.load offset=12
        local.set 1
        call 58
        drop
        local.get 0
        local.get 1
        call 67
        call 59
        br 1 (;@1;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;97;) (type 7) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 8
    drop)
  (func (;98;) (type 9) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 3
    i32.const 1049028
    i32.load
    i32.ge_s
    if  ;; label = @1
      local.get 1
      local.get 2
      i32.const 1048879
      i32.const 17
      call 91
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
    call 99)
  (func (;99;) (type 3) (param i32) (result i32)
    local.get 0
    call 77
    local.tee 0
    call 24
    drop
    local.get 0)
  (func (;100;) (type 15) (param i32 i64 i32)
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
        i32.const 1049000
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
            call 56
            unreachable
          end
          call 109
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
  (func (;101;) (type 4) (result i32)
    (local i32)
    call 77
    local.tee 0
    call 19
    local.get 0)
  (func (;102;) (type 6) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 17
    unreachable)
  (func (;103;) (type 3) (param i32) (result i32)
    local.get 0
    call 3
    i32.eqz)
  (func (;104;) (type 13) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      local.get 1
      i32.ge_u
      if  ;; label = @2
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        call 56
        unreachable
      end
      call 56
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
  (func (;105;) (type 10) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 53)
  (func (;106;) (type 6) (param i32 i32 i32 i32)
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
      call 56
      unreachable
    end
    call 56
    unreachable)
  (func (;107;) (type 6) (param i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 0
      local.get 2
      local.get 1
      call 110
      return
    end
    call 56
    unreachable)
  (func (;108;) (type 6) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    local.get 1
    i32.const 16
    call 104
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 4
    i32.load offset=12
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;109;) (type 0)
    i32.const 1049000
    i32.const 14
    call 4
    unreachable)
  (func (;110;) (type 7) (param i32 i32 i32)
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
      local.tee 3
      i32.add
      local.set 4
      local.get 3
      if  ;; label = @2
        local.get 1
        local.set 5
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.load8_u
          i32.store8
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          local.get 4
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 4
      local.get 2
      local.get 3
      i32.sub
      local.tee 2
      i32.const -4
      i32.and
      local.tee 6
      i32.add
      local.set 0
      block  ;; label = @2
        local.get 1
        local.get 3
        i32.add
        local.tee 3
        i32.const 3
        i32.and
        if  ;; label = @3
          local.get 6
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 3
          i32.const 3
          i32.shl
          local.tee 1
          i32.const 24
          i32.and
          local.set 7
          i32.const 0
          local.get 1
          i32.sub
          i32.const 24
          i32.and
          local.set 8
          local.get 3
          i32.const -4
          i32.and
          local.tee 5
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.load
          local.set 5
          loop  ;; label = @4
            local.get 4
            local.get 5
            local.get 7
            i32.shr_u
            local.get 1
            i32.load
            local.tee 5
            local.get 8
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 4
            i32.const 4
            i32.add
            local.tee 4
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
        local.get 3
        local.set 1
        loop  ;; label = @3
          local.get 4
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 4
          i32.const 4
          i32.add
          local.tee 4
          local.get 0
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.const 3
      i32.and
      local.set 2
      local.get 3
      local.get 6
      i32.add
      local.set 1
    end
    local.get 2
    i32.const 1
    i32.ge_s
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
  (global (;1;) i32 (i32.const 1049032))
  (global (;2;) i32 (i32.const 1049040))
  (export "memory" (memory 0))
  (export "init" (func 34))
  (export "accept_funds" (func 39))
  (export "accept_funds_echo_payment" (func 48))
  (export "accept_funds_single_dcdt_transfer" (func 50))
  (export "burn_and_create_retrive_async" (func 57))
  (export "call_counts" (func 72))
  (export "echo_arguments" (func 73))
  (export "echo_caller" (func 75))
  (export "get_owner_address" (func 76))
  (export "reject_funds" (func 78))
  (export "retrieve_funds" (func 80))
  (export "retrieve_funds_with_transfer_exec" (func 86))
  (export "retrieve_multi_funds_async" (func 88))
  (export "callBack" (func 94))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "echo_argumentsaccept_fundsaccept_funds_echo_paymentreject_fundsDCDT transfer failedretrieve_fundscall_countsopt_arg_to_echoargsopt_receive_funcreturn_messagetoken_paymentsincorrect number of DCDT transfersinput too longDCDTNFTTransferDCDTTransferMultiDCDTNFTTransferDCDTNFTBurnDCDTLocalBurnDCDTNFTCreatetoo few argumentswrong number of argumentstoo many argumentsargument decode error (): storage decode error: var argsREWA\00panic occurred")
  (data (;1;) (i32.const 1049016) "\9c\ff\ff\ff\ff\ff\ff\7f\ff\ff\ff\7f"))
