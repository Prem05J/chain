(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (result i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i64)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i64 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (result i64)))
  (import "env" "mBufferNew" (func (;0;) (type 2)))
  (import "env" "mBufferAppend" (func (;1;) (type 1)))
  (import "env" "mBufferAppendBytes" (func (;2;) (type 6)))
  (import "env" "managedSignalError" (func (;3;) (type 5)))
  (import "env" "getNumDCDTTransfers" (func (;4;) (type 2)))
  (import "env" "signalError" (func (;5;) (type 4)))
  (import "env" "mBufferGetArgument" (func (;6;) (type 1)))
  (import "env" "bigIntGetUnsignedArgument" (func (;7;) (type 4)))
  (import "env" "getNumArguments" (func (;8;) (type 2)))
  (import "env" "mBufferSetBytes" (func (;9;) (type 6)))
  (import "env" "mBufferStorageLoad" (func (;10;) (type 1)))
  (import "env" "mBufferGetLength" (func (;11;) (type 3)))
  (import "env" "checkNoPayment" (func (;12;) (type 0)))
  (import "env" "getGasLeft" (func (;13;) (type 11)))
  (import "env" "bigIntSetInt64" (func (;14;) (type 7)))
  (import "env" "mBufferNewFromBytes" (func (;15;) (type 1)))
  (import "env" "managedCreateContract" (func (;16;) (type 10)))
  (import "env" "mBufferStorageStore" (func (;17;) (type 1)))
  (import "env" "bigIntGetCallValue" (func (;18;) (type 5)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;19;) (type 1)))
  (import "env" "managedExecuteOnDestContext" (func (;20;) (type 9)))
  (import "env" "cleanReturnData" (func (;21;) (type 0)))
  (import "env" "mBufferGetByteSlice" (func (;22;) (type 8)))
  (import "env" "mBufferFinish" (func (;23;) (type 3)))
  (func (;24;) (type 3) (param i32) (result i32)
    (local i32)
    call 0
    local.tee 1
    local.get 0
    call 1
    drop
    local.get 1)
  (func (;25;) (type 0)
    (local i32)
    i32.const 1048601
    i32.const 23
    call 26
    local.tee 0
    i32.const 1048706
    i32.const 11
    call 2
    drop
    local.get 0
    i32.const 1048624
    i32.const 3
    call 2
    drop
    local.get 0
    i32.const 1048664
    i32.const 17
    call 2
    drop
    local.get 0
    call 3
    unreachable)
  (func (;26;) (type 1) (param i32 i32) (result i32)
    (local i32)
    call 29
    local.tee 2
    local.get 0
    local.get 1
    call 9
    drop
    local.get 2)
  (func (;27;) (type 0)
    call 4
    i32.eqz
    if  ;; label = @1
      return
    end
    i32.const 1048627
    i32.const 37
    call 5
    unreachable)
  (func (;28;) (type 3) (param i32) (result i32)
    local.get 0
    call 29
    local.tee 0
    call 6
    drop
    local.get 0)
  (func (;29;) (type 2) (result i32)
    (local i32)
    i32.const 1048796
    i32.const 1048796
    i32.load
    i32.const -1
    i32.add
    local.tee 0
    i32.store
    local.get 0)
  (func (;30;) (type 5) (param i32)
    call 8
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048681
    i32.const 25
    call 5
    unreachable)
  (func (;31;) (type 4) (param i32 i32)
    call 32
    drop
    local.get 0
    local.get 1
    call 24
    call 33)
  (func (;32;) (type 2) (result i32)
    (local i32)
    call 29
    local.tee 0
    i32.const 1048720
    i32.const 0
    call 9
    drop
    local.get 0)
  (func (;33;) (type 4) (param i32 i32)
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
    call 2
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;34;) (type 3) (param i32) (result i32)
    local.get 0
    call 29
    local.tee 0
    call 10
    drop
    local.get 0
    call 11
    i32.const 32
    i32.ne
    if  ;; label = @1
      i32.const 1048720
      i32.const 22
      call 26
      local.tee 0
      i32.const 1048742
      i32.const 16
      call 2
      drop
      local.get 0
      call 3
      unreachable
    end
    local.get 0)
  (func (;35;) (type 2) (result i32)
    i32.const 1048758
    i32.const 20
    call 26)
  (func (;36;) (type 0)
    call 12
    i32.const 0
    call 30)
  (func (;37;) (type 0)
    call 27
    i32.const 0
    call 30)
  (func (;38;) (type 0)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 12
    i32.const 1
    call 30
    i32.const 0
    call 28
    local.set 1
    call 13
    call 29
    local.tee 2
    i64.const 0
    call 14
    call 32
    local.set 3
    local.get 0
    i32.const 0
    i32.store16 offset=14
    local.get 2
    local.get 1
    local.get 0
    i32.const 14
    i32.add
    i32.const 2
    call 15
    local.get 3
    call 29
    local.tee 1
    call 29
    call 16
    drop
    call 35
    local.get 1
    call 17
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;39;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    call 27
    i32.const 3
    call 30
    i32.const 0
    call 28
    local.set 2
    i32.const 1
    call 28
    local.set 4
    i32.const 2
    call 29
    local.tee 1
    call 7
    local.get 1
    local.set 5
    i32.const -11
    local.set 1
    block  ;; label = @1
      i32.const 1048800
      i32.load8_u
      local.tee 0
      if  ;; label = @2
        i32.const -11
        i32.const 2147483647
        local.get 0
        select
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1048800
      i32.const 1
      i32.store8
      i32.const -11
      call 18
    end
    block  ;; label = @1
      call 35
      call 34
      local.tee 6
      i32.const 2147483646
      i32.ne
      if  ;; label = @2
        i32.const 1048778
        i32.const 16
        call 26
        local.set 7
        call 32
        local.tee 0
        local.get 2
        call 31
        local.get 0
        local.get 4
        call 31
        call 32
        drop
        call 29
        local.tee 2
        local.get 5
        call 19
        drop
        local.get 0
        local.get 2
        call 33
        i64.const 115000000
        local.get 6
        local.get 1
        local.get 7
        local.get 0
        call 29
        local.tee 4
        call 20
        drop
        call 21
        local.get 4
        call 11
        i32.const 2
        i32.shr_u
        local.set 1
        i32.const 0
        local.set 0
        loop  ;; label = @3
          local.get 1
          if  ;; label = @4
            local.get 3
            i32.const 0
            i32.store offset=12
            local.get 4
            local.get 0
            i32.const 4
            local.get 3
            i32.const 12
            i32.add
            call 22
            br_if 3 (;@1;)
            local.get 3
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
            call 24
            drop
            local.get 1
            i32.const -1
            i32.add
            local.set 1
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            br 1 (;@3;)
          end
        end
        local.get 3
        i32.const 16
        i32.add
        global.set 0
        return
      end
      i32.const 1048576
      i32.const 25
      call 5
      unreachable
    end
    call 25
    unreachable)
  (func (;40;) (type 0)
    call 12
    i32.const 0
    call 30
    call 35
    call 34
    call 23
    drop)
  (func (;41;) (type 0)
    nop)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048801))
  (global (;2;) i32 (i32.const 1048816))
  (export "memory" (memory 0))
  (export "init" (func 36))
  (export "deposit" (func 37))
  (export "deployChildContract" (func 38))
  (export "executeOnDestIssueToken" (func 39))
  (export "getChildContractAddress" (func 40))
  (export "callBack" (func 41))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "recipient address not setargument decode error (): function does not accept DCDT paymenttoo few argumentswrong number of argumentssync result\00\00\00storage decode error: bad array lengthchildContractAddressissueWrappedRewa")
  (data (;1;) (i32.const 1048796) "\9c\ff\ff\ff"))
