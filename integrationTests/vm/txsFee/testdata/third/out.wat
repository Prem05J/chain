(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func))
  (type (;6;) (func (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32) (result i64)))
  (type (;11;) (func (result i64)))
  (type (;12;) (func (param i32 i64)))
  (type (;13;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;14;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (import "env" "bigIntAdd" (func (;0;) (type 3)))
  (import "env" "mBufferNew" (func (;1;) (type 6)))
  (import "env" "mBufferAppend" (func (;2;) (type 2)))
  (import "env" "mBufferStorageLoad" (func (;3;) (type 2)))
  (import "env" "mBufferGetLength" (func (;4;) (type 1)))
  (import "env" "bigIntGetCallValue" (func (;5;) (type 4)))
  (import "env" "mBufferAppendBytes" (func (;6;) (type 9)))
  (import "env" "managedSignalError" (func (;7;) (type 4)))
  (import "env" "getArgumentLength" (func (;8;) (type 1)))
  (import "env" "smallIntGetUnsignedArgument" (func (;9;) (type 10)))
  (import "env" "getNumArguments" (func (;10;) (type 6)))
  (import "env" "signalError" (func (;11;) (type 0)))
  (import "env" "managedGetOriginalTxHash" (func (;12;) (type 4)))
  (import "env" "getGasLeft" (func (;13;) (type 11)))
  (import "env" "mBufferCopyByteSlice" (func (;14;) (type 7)))
  (import "env" "mBufferGetByteSlice" (func (;15;) (type 7)))
  (import "env" "mBufferSetBytes" (func (;16;) (type 9)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;17;) (type 2)))
  (import "env" "mBufferStorageStore" (func (;18;) (type 2)))
  (import "env" "mBufferGetArgument" (func (;19;) (type 2)))
  (import "env" "managedSCAddress" (func (;20;) (type 4)))
  (import "env" "bigIntSetInt64" (func (;21;) (type 12)))
  (import "env" "managedAsyncCall" (func (;22;) (type 8)))
  (import "env" "checkNoPayment" (func (;23;) (type 5)))
  (import "env" "mBufferFinish" (func (;24;) (type 1)))
  (import "env" "managedWriteLog" (func (;25;) (type 0)))
  (import "env" "managedGetMultiDCDTCallValue" (func (;26;) (type 4)))
  (import "env" "managedExecuteOnDestContext" (func (;27;) (type 14)))
  (import "env" "cleanReturnData" (func (;28;) (type 5)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func (;29;) (type 13)))
  (import "env" "managedTransferValueExecute" (func (;30;) (type 13)))
  (func (;31;) (type 1) (param i32) (result i32)
    (local i32)
    call 32
    local.tee 1
    call 33
    local.get 1
    local.get 1
    local.get 0
    call 0
    local.get 1)
  (func (;32;) (type 6) (result i32)
    (local i32)
    i32.const 1048924
    i32.const 1048924
    i32.load
    i32.const 1
    i32.sub
    local.tee 0
    i32.store
    local.get 0)
  (func (;33;) (type 4) (param i32)
    local.get 0
    i64.const 0
    call 21)
  (func (;34;) (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.const 1048896
    i32.add
    i32.load
    i32.load8_u
    i32.store8 offset=15
    local.get 1
    local.get 2
    i32.const 15
    i32.add
    i32.const 1
    call 35
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;35;) (type 3) (param i32 i32 i32)
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
          i32.const 1058928
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
          call 92
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call 66
          i32.const 1058928
          local.get 0
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call 6
        drop
        br 1 (;@1;)
      end
      local.get 0
      call 69
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call 6
      drop
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;36;) (type 0) (param i32 i32)
    (local i32 i32 i32)
    local.get 1
    i32.const 20
    i32.add
    i32.load8_u
    local.set 2
    local.get 1
    i32.load offset=12
    call 37
    local.set 3
    local.get 1
    i32.const 16
    i32.add
    i32.load
    call 37
    local.set 4
    local.get 0
    i32.const 20
    i32.add
    local.get 2
    i32.store8
    local.get 0
    i32.const 16
    i32.add
    local.get 4
    i32.store
    local.get 0
    local.get 3
    i32.store offset=12
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store offset=8
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4)
  (func (;37;) (type 1) (param i32) (result i32)
    (local i32)
    call 1
    local.tee 1
    local.get 0
    call 2
    drop
    local.get 1)
  (func (;38;) (type 0) (param i32 i32)
    (local i32)
    local.get 1
    call 32
    local.tee 1
    call 3
    drop
    local.get 1
    call 4
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
  (func (;39;) (type 6) (result i32)
    (local i32)
    i32.const 1058936
    i32.load8_u
    local.tee 0
    if  ;; label = @1
      i32.const -11
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 1058936
    i32.const 1
    i32.store8
    i32.const -11
    call 5
    i32.const -11)
  (func (;40;) (type 8) (param i32 i32 i32 i32)
    (local i32)
    i32.const 1048640
    i32.const 23
    call 41
    local.tee 4
    local.get 0
    local.get 1
    call 6
    drop
    local.get 4
    i32.const 1048663
    i32.const 3
    call 6
    drop
    local.get 4
    local.get 2
    local.get 3
    call 6
    drop
    local.get 4
    call 7
    unreachable)
  (func (;41;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call 32
    local.tee 2
    local.get 0
    local.get 1
    call 16
    drop
    local.get 2)
  (func (;42;) (type 1) (param i32) (result i32)
    local.get 0
    call 32
    local.tee 0
    call 19
    drop
    local.get 0)
  (func (;43;) (type 4) (param i32)
    call 10
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048666
    i32.const 25
    call 11
    unreachable)
  (func (;44;) (type 4) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    call 64
    local.get 1
    i32.load offset=8
    local.set 2
    local.get 0
    local.get 1
    i32.load8_u offset=12
    i32.const 1
    i32.and
    i32.store8 offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;45;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 84)
  (func (;46;) (type 1) (param i32) (result i32)
    local.get 0
    call 4
    i32.const 2
    i32.shr_u)
  (func (;47;) (type 7) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call 15
    i32.const 0
    i32.ne)
  (func (;48;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    call 4
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
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 35
    local.get 1
    local.get 0
    call 87
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;49;) (type 3) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 68
    call 18
    drop)
  (func (;50;) (type 0) (param i32 i32)
    call 51
    drop
    local.get 0
    local.get 1
    call 52
    call 53)
  (func (;51;) (type 6) (result i32)
    (local i32)
    call 32
    local.tee 0
    i32.const 1048908
    i32.const 0
    call 16
    drop
    local.get 0)
  (func (;52;) (type 1) (param i32) (result i32)
    (local i32)
    call 32
    local.tee 1
    local.get 0
    call 17
    drop
    local.get 1)
  (func (;53;) (type 0) (param i32 i32)
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
    call 6
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;54;) (type 0) (param i32 i32)
    call 51
    drop
    local.get 0
    local.get 1
    call 37
    call 53)
  (func (;55;) (type 11) (result i64)
    (local i64)
    call 13
    local.tee 0
    i64.const 100000
    i64.sub
    local.get 0
    local.get 0
    i64.const 100000
    i64.gt_u
    select)
  (func (;56;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=8
            i32.const 2147483646
            i32.ne
            if  ;; label = @5
              local.get 1
              i32.load offset=32
              local.set 5
              local.get 1
              i32.load offset=28
              local.set 3
              local.get 1
              i32.load offset=24
              local.set 4
              local.get 1
              i64.load offset=16
              local.set 8
              call 62
              drop
              local.get 2
              i32.const 24
              i32.add
              local.get 1
              i32.const 8
              i32.add
              i64.load
              i64.store
              local.get 2
              local.get 1
              i64.load
              i64.store offset=16
              local.get 2
              local.get 2
              i32.const 16
              i32.add
              call 63
              local.get 2
              i64.load
              local.set 7
              call 51
              local.tee 1
              local.get 2
              i32.load offset=8
              call 54
              block  ;; label = @6
                local.get 7
                i64.eqz
                if  ;; label = @7
                  local.get 1
                  local.get 2
                  i32.load offset=12
                  call 50
                  local.get 3
                  call 61
                  i32.eqz
                  br_if 1 (;@6;)
                  br 4 (;@3;)
                end
                call 51
                local.tee 6
                local.get 7
                call 89
                local.get 1
                local.get 6
                call 53
                local.get 1
                local.get 2
                i32.load offset=12
                call 50
                call 51
                drop
                local.get 1
                local.get 4
                call 37
                call 53
                local.get 3
                call 61
                br_if 2 (;@4;)
                local.get 1
                local.get 3
                call 54
                br 2 (;@4;)
              end
              local.get 1
              local.get 3
              call 54
              br 2 (;@3;)
            end
            local.get 0
            local.get 1
            i64.load offset=16
            i64.store
            local.get 0
            local.get 1
            i32.load offset=12
            i32.store offset=24
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            i32.const 24
            i32.add
            i64.load
            i64.store
            local.get 0
            i32.const 16
            i32.add
            local.get 1
            i32.const 32
            i32.add
            i64.load
            i64.store
            br 3 (;@1;)
          end
          call 32
          local.tee 4
          call 20
          i32.const 1048701
          i32.const 15
          call 41
          br 1 (;@2;)
        end
        i32.const 1048716
        i32.const 12
        call 41
      end
      local.set 3
      local.get 1
      local.get 5
      call 2
      drop
      local.get 0
      call 62
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=16
      local.get 0
      local.get 3
      i32.store offset=12
      local.get 0
      local.get 4
      i32.store offset=8
      local.get 0
      local.get 8
      i64.store
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;57;) (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load
    local.set 2
    call 1
    local.set 3
    local.get 0
    i32.load offset=8
    local.get 2
    local.get 1
    local.get 3
    call 14
    i32.eqz
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      i32.add
      i32.store
      local.get 3
      return
    end
    i32.const 1048728
    i32.const 15
    call 58
    unreachable)
  (func (;58;) (type 0) (param i32 i32)
    (local i32)
    i32.const 1048795
    i32.const 22
    call 41
    local.tee 2
    local.get 0
    local.get 1
    call 6
    drop
    local.get 2
    call 7
    unreachable)
  (func (;59;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 4
    call 6
    drop)
  (func (;60;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 2
    drop)
  (func (;61;) (type 1) (param i32) (result i32)
    local.get 0
    call 4
    i32.eqz)
  (func (;62;) (type 6) (result i32)
    (local i32)
    call 32
    local.tee 0
    call 33
    local.get 0)
  (func (;63;) (type 0) (param i32 i32)
    (local i32)
    local.get 1
    i32.load offset=8
    local.tee 2
    i32.const 2147483646
    i32.eq
    if  ;; label = @1
      i32.const 1048772
      i32.const 13
      call 11
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
  (func (;64;) (type 4) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    block (result i32)  ;; label = @1
      i32.const 1058932
      i32.load8_u
      local.tee 2
      i32.eqz
      if  ;; label = @2
        i32.const 1058932
        i32.const 1
        i32.store8
        i32.const 1058928
        i32.const 0
        i32.store
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call 65
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 1048908
        i32.const 0
        call 66
        call 51
        br 1 (;@1;)
      end
      i32.const 1048908
      call 67
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
  (func (;65;) (type 0) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 0
    local.get 1
    call 70
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
  (func (;66;) (type 8) (param i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 0
      local.get 2
      local.get 1
      call 102
      return
    end
    call 93
    unreachable)
  (func (;67;) (type 1) (param i32) (result i32)
    (local i32)
    call 32
    local.tee 1
    local.get 0
    i32.const 0
    call 16
    drop
    local.get 1)
  (func (;68;) (type 2) (param i32 i32) (result i32)
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
    call 69
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load8_u offset=12
    if  ;; label = @1
      i32.const 1058928
      i32.const 0
      i32.store
      i32.const 1058932
      i32.const 0
      i32.store8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;69;) (type 4) (param i32)
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
      i32.const 1058928
      i32.load
      call 70
      local.get 0
      i32.load
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=12
      call 6
      drop
      i32.const 1058928
      i32.const 0
      i32.store
      i32.const 1058932
      i32.const 0
      i32.store8
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;70;) (type 3) (param i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.le_u
      if  ;; label = @2
        local.get 2
        i32.const 10000
        i32.le_u
        br_if 1 (;@1;)
        call 93
        unreachable
      end
      call 93
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 1048928
    i32.add
    i32.store)
  (func (;71;) (type 1) (param i32) (result i32)
    local.get 0
    i32.const -25
    call 3
    drop
    i32.const -25
    call 4)
  (func (;72;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 5
    call 6
    drop)
  (func (;73;) (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 74
    call 71
    i32.eqz)
  (func (;74;) (type 2) (param i32 i32) (result i32)
    local.get 0
    call 37
    local.tee 0
    i32.const 1048785
    call 72
    local.get 1
    local.get 0
    call 78
    local.get 0)
  (func (;75;) (type 1) (param i32) (result i32)
    local.get 0
    call 37
    local.tee 0
    i32.const 1048790
    call 72
    local.get 0)
  (func (;76;) (type 3) (param i32 i32 i32)
    local.get 1
    local.get 2
    call 73
    i32.eqz
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call 77
      return
    end
    local.get 0
    i32.const 3
    i32.store8 offset=20)
  (func (;77;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.tee 4
    local.get 1
    local.get 2
    call 74
    call 38
    local.get 3
    i32.const 0
    i32.store8 offset=28
    local.get 4
    local.get 3
    i32.const 28
    i32.add
    i32.const 1
    call 81
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=28
      local.tee 1
      i32.const 3
      i32.lt_u
      if  ;; label = @2
        local.get 3
        i32.const 8
        i32.add
        local.tee 4
        i32.const 32
        call 57
        local.set 2
        local.get 3
        i32.const 0
        i32.store offset=28
        local.get 4
        local.get 3
        i32.const 28
        i32.add
        local.tee 5
        i32.const 4
        call 81
        local.get 4
        local.get 5
        call 82
        i32.wrap_i64
        call 57
        local.set 5
        local.get 4
        call 80
        local.set 4
        local.get 3
        i32.const 8
        i32.add
        call 80
        local.set 6
        local.get 3
        i32.const 8
        i32.add
        call 80
        local.set 7
        local.get 3
        i32.load offset=12
        local.get 3
        i32.load offset=8
        i32.ne
        br_if 1 (;@1;)
        local.get 3
        i32.const 24
        i32.add
        i32.load8_u
        if  ;; label = @3
          i32.const 1058928
          i32.const 0
          i32.store
          i32.const 1058932
          i32.const 0
          i32.store8
        end
        local.get 0
        local.get 1
        i32.store8 offset=20
        local.get 0
        local.get 5
        i32.store offset=16
        local.get 0
        local.get 2
        i32.store offset=12
        local.get 0
        local.get 7
        i32.store offset=8
        local.get 0
        local.get 6
        i32.store offset=4
        local.get 0
        local.get 4
        i32.store
        local.get 3
        i32.const 32
        i32.add
        global.set 0
        return
      end
      i32.const 1048576
      i32.const 13
      call 58
      unreachable
    end
    i32.const 1048592
    i32.const 14
    call 58
    unreachable)
  (func (;78;) (type 0) (param i32 i32)
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
    call 59
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;79;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        call 75
        local.tee 1
        call 71
        i32.eqz
        if  ;; label = @3
          i32.const 0
          local.set 1
          br 1 (;@2;)
        end
        local.get 2
        i32.const 8
        i32.add
        local.tee 3
        local.get 1
        call 38
        local.get 3
        call 80
        local.set 1
        local.get 2
        i32.const 8
        i32.add
        call 80
        local.set 3
        local.get 2
        i32.const 8
        i32.add
        call 80
        local.set 4
        local.get 2
        i32.const 8
        i32.add
        call 80
        local.set 5
        local.get 2
        i32.load offset=12
        local.get 2
        i32.load offset=8
        i32.ne
        br_if 1 (;@1;)
        local.get 2
        i32.const 24
        i32.add
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1058928
        i32.const 0
        i32.store
        i32.const 1058932
        i32.const 0
        i32.store8
      end
      local.get 0
      local.get 5
      i32.store offset=12
      local.get 0
      local.get 4
      i32.store offset=8
      local.get 0
      local.get 3
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 2
      i32.const 32
      i32.add
      global.set 0
      return
    end
    i32.const 1048592
    i32.const 14
    call 58
    unreachable)
  (func (;80;) (type 1) (param i32) (result i32)
    (local i32 i64)
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
    local.tee 0
    i32.const 4
    call 81
    local.get 0
    call 82
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    i32.wrap_i64)
  (func (;81;) (type 3) (param i32 i32 i32)
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
            call 4
            local.tee 6
            i32.const 10000
            i32.gt_u
            br_if 1 (;@3;)
            i32.const 1058932
            i32.load8_u
            br_if 1 (;@3;)
            i32.const 1058928
            local.get 6
            i32.store
            i32.const 1058932
            i32.const 1
            i32.store8
            local.get 3
            i32.const 8
            i32.add
            local.get 6
            call 65
            local.get 4
            i32.const 0
            local.get 3
            i32.load offset=8
            local.get 3
            i32.load offset=12
            call 47
            drop
            local.get 0
            i32.const 1
            i32.store8 offset=16
          end
          local.get 2
          local.get 5
          i32.add
          local.tee 4
          i32.const 1058928
          i32.load
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 5
          local.get 4
          call 70
          local.get 1
          local.get 2
          local.get 3
          i32.load
          local.get 3
          i32.load offset=4
          call 66
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.store8 offset=16
        local.get 4
        local.get 5
        local.get 1
        local.get 2
        call 47
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
    i32.const 1048728
    i32.const 15
    call 58
    unreachable)
  (func (;82;) (type 10) (param i32) (result i64)
    (local i32 i64)
    loop  ;; label = @1
      local.get 1
      i32.const 4
      i32.eq
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.add
        i64.load8_u
        local.get 2
        i64.const 8
        i64.shl
        i64.or
        local.set 2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end
    local.get 2)
  (func (;83;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    call 75
    local.set 0
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      if  ;; label = @2
        local.get 2
        call 44
        local.get 2
        local.get 2
        i32.load8_u offset=4
        i32.store8 offset=12
        local.get 2
        local.get 2
        i32.load
        i32.store offset=8
        local.get 3
        local.get 2
        i32.const 8
        i32.add
        local.tee 3
        call 84
        local.get 1
        i32.load offset=4
        local.get 3
        call 84
        local.get 1
        i32.load offset=8
        local.get 3
        call 84
        local.get 1
        i32.load offset=12
        local.get 3
        call 84
        local.get 0
        local.get 2
        i32.load offset=8
        local.get 2
        i32.load8_u offset=12
        call 49
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1048908
      call 85
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;84;) (type 0) (param i32 i32)
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
    call 35
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;85;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    call 67
    call 18
    drop)
  (func (;86;) (type 3) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    local.get 1
    call 74
    local.get 3
    call 44
    local.get 3
    local.get 3
    i32.load8_u offset=4
    i32.store8 offset=12
    local.get 3
    local.get 3
    i32.load
    i32.store offset=8
    local.get 2
    i32.const 20
    i32.add
    i32.load8_u
    local.get 3
    i32.const 8
    i32.add
    local.tee 1
    call 34
    local.get 1
    local.get 2
    i32.load offset=12
    call 87
    local.get 2
    i32.const 16
    i32.add
    i32.load
    local.get 1
    call 48
    local.get 2
    i32.load
    local.get 1
    call 84
    local.get 2
    i32.load offset=4
    local.get 1
    call 84
    local.get 2
    i32.load offset=8
    local.get 1
    call 84
    local.get 3
    i32.load offset=8
    local.get 3
    i32.load8_u offset=12
    call 49
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;87;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load8_u offset=4
    local.set 3
    local.get 0
    i32.const 0
    i32.store8 offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 1
          i32.and
          local.tee 3
          if  ;; label = @4
            local.get 1
            call 4
            local.tee 5
            i32.const 10000
            i32.const 1058928
            i32.load
            local.tee 4
            i32.sub
            i32.gt_u
            br_if 2 (;@2;)
            local.get 2
            i32.const 8
            i32.add
            local.get 4
            local.get 4
            local.get 5
            i32.add
            local.tee 4
            call 92
            local.get 1
            i32.const 0
            local.get 2
            i32.load offset=8
            local.get 2
            i32.load offset=12
            call 47
            drop
            i32.const 1058928
            local.get 4
            i32.store
            br 1 (;@3;)
          end
          local.get 0
          i32.load
          local.get 1
          call 60
        end
        local.get 0
        local.get 3
        i32.store8 offset=4
        br 1 (;@1;)
      end
      local.get 0
      call 69
      local.get 0
      i32.load
      local.get 1
      call 60
      local.get 0
      i32.load8_u offset=4
      local.get 0
      local.get 3
      i32.store8 offset=4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1058928
      i32.const 0
      i32.store
      i32.const 1058932
      i32.const 0
      i32.store8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;88;) (type 0) (param i32 i32)
    (local i32)
    call 51
    local.tee 2
    local.get 1
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.const 1048896
    i32.add
    i32.load
    i64.load8_u
    call 89
    local.get 0
    local.get 2
    call 53)
  (func (;89;) (type 12) (param i32 i64)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
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
    i64.store offset=8
    block  ;; label = @1
      local.get 1
      i64.eqz
      if  ;; label = @2
        i32.const 1048908
        local.set 4
        br 1 (;@1;)
      end
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 8
            i32.ne
            if  ;; label = @5
              local.get 3
              i32.const 8
              i32.add
              local.get 2
              i32.add
              local.tee 4
              i32.load8_u
              i32.eqz
              br_if 2 (;@3;)
              local.get 2
              i32.const 9
              i32.ge_u
              br_if 1 (;@4;)
              i32.const 8
              local.get 2
              i32.sub
              local.set 2
              br 4 (;@1;)
            end
            call 93
            unreachable
          end
          call 93
          unreachable
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 0
    local.get 4
    local.get 2
    call 16
    drop
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;90;) (type 2) (param i32 i32) (result i32)
    (local i32)
    call 51
    local.tee 2
    local.get 0
    local.get 1
    call 41
    call 53
    local.get 2)
  (func (;91;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    call 4
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
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call 59
    local.get 1
    local.get 0
    call 60
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;92;) (type 3) (param i32 i32 i32)
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
    call 70
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
  (func (;93;) (type 5)
    call 101
    unreachable)
  (func (;94;) (type 0) (param i32 i32)
    local.get 1
    i32.load8_u offset=20
    i32.const 3
    i32.eq
    if  ;; label = @1
      call 93
      unreachable
    end
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4
    local.get 0
    i32.const 16
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store align=4)
  (func (;95;) (type 6) (result i32)
    i32.const 1048848
    i32.const 12
    call 41)
  (func (;96;) (type 5)
    call 23
    i32.const 0
    call 43)
  (func (;97;) (type 5)
    (local i32 i32 i32 i32 i32 i64 i64 i64)
    global.get 0
    i32.const 128
    i32.sub
    local.tee 0
    global.set 0
    call 23
    i32.const 0
    call 43
    local.get 0
    call 95
    local.tee 1
    i32.store offset=12
    local.get 0
    i32.const 104
    i32.add
    local.get 1
    call 79
    local.get 0
    i32.const 48
    i32.add
    local.get 1
    local.get 0
    i32.load offset=108
    call 76
    local.get 0
    i32.const 32
    i32.add
    local.get 0
    i32.const -64
    i32.sub
    local.tee 1
    i64.load
    local.tee 5
    i64.store
    local.get 0
    i32.const 24
    i32.add
    local.get 0
    i32.const 56
    i32.add
    local.tee 3
    i64.load
    local.tee 6
    i64.store
    local.get 0
    i32.const 72
    i32.add
    local.tee 4
    local.get 0
    i32.const 12
    i32.add
    local.tee 2
    i32.store
    local.get 0
    i32.const 40
    i32.add
    local.get 2
    i32.store
    local.get 0
    local.get 0
    i64.load offset=48
    local.tee 7
    i64.store offset=16
    local.get 1
    local.get 5
    i64.store
    local.get 3
    local.get 6
    i64.store
    local.get 4
    local.get 2
    i32.store
    local.get 0
    local.get 7
    i64.store offset=48
    loop  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=68
        i32.const 3
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 104
        i32.add
        local.tee 1
        local.get 0
        i32.const 48
        i32.add
        local.tee 2
        call 36
        local.get 0
        i32.const 80
        i32.add
        local.get 1
        call 94
        local.get 2
        local.get 0
        i32.load offset=72
        i32.load
        local.get 0
        i32.load offset=84
        call 76
        local.get 0
        i32.load8_u offset=100
        local.tee 1
        i32.const 3
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i64.load offset=92 align=4
        local.set 5
        local.get 0
        call 64
        local.get 0
        local.get 0
        i32.load
        i32.store offset=104
        local.get 0
        local.get 0
        i32.load8_u offset=4
        i32.const 1
        i32.and
        i32.store8 offset=108
        local.get 1
        local.get 0
        i32.const 104
        i32.add
        local.tee 1
        call 34
        local.get 1
        local.get 5
        i32.wrap_i64
        call 87
        local.get 5
        i64.const 32
        i64.shr_u
        i32.wrap_i64
        local.get 1
        call 48
        local.get 0
        i32.load offset=104
        local.get 0
        i32.load8_u offset=108
        call 68
        call 24
        drop
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 128
    i32.add
    global.set 0)
  (func (;98;) (type 5)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 0
    global.set 0
    call 23
    i32.const 3
    call 43
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          call 8
          if  ;; label = @4
            i32.const 0
            call 9
            local.tee 9
            i64.const 256
            i64.ge_u
            br_if 1 (;@3;)
            local.get 9
            i32.wrap_i64
            local.tee 1
            i32.const 255
            i32.and
            i32.const 3
            i32.ge_u
            br_if 2 (;@2;)
          end
          local.get 1
          br 2 (;@1;)
        end
        i32.const 1048835
        i32.const 9
        i32.const 1048592
        i32.const 14
        call 40
        unreachable
      end
      i32.const 1048835
      i32.const 9
      i32.const 1048576
      i32.const 13
      call 40
      unreachable
    end
    local.set 2
    i32.const 1
    call 42
    local.tee 1
    call 4
    i32.const 32
    i32.ne
    if  ;; label = @1
      i32.const 1048833
      i32.const 2
      i32.const 1048817
      i32.const 16
      call 40
      unreachable
    end
    local.get 1
    local.set 4
    i32.const 2
    call 42
    local.set 5
    i32.const 1048860
    i32.const 15
    call 90
    local.tee 1
    local.get 2
    call 88
    local.get 1
    local.get 4
    call 54
    local.get 1
    local.get 5
    call 54
    local.get 1
    call 51
    call 25
    local.get 0
    i32.const 8
    i32.add
    call 95
    local.tee 3
    call 79
    local.get 0
    local.get 0
    i32.load offset=20
    i32.const 1
    i32.add
    local.tee 1
    i32.store offset=20
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 7
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 0
      i32.const 24
      i32.add
      local.tee 8
      local.get 3
      local.get 0
      i32.load offset=16
      local.tee 6
      call 77
      local.get 0
      local.get 1
      i32.store offset=28
      local.get 3
      local.get 6
      local.get 8
      call 86
    end
    local.get 0
    i32.const 44
    i32.add
    local.get 2
    i32.store8
    local.get 0
    i32.const 40
    i32.add
    local.get 5
    i32.store
    local.get 0
    local.get 4
    i32.store offset=36
    local.get 0
    local.get 6
    i32.store offset=32
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 1
    local.get 0
    i32.const 24
    i32.add
    call 86
    local.get 0
    i32.const 16
    i32.add
    local.tee 2
    local.get 1
    i32.store
    local.get 0
    local.get 7
    i32.const 1
    i32.add
    i32.store offset=8
    local.get 0
    i32.const 56
    i32.add
    local.get 2
    i64.load
    i64.store
    local.get 0
    local.get 0
    i64.load offset=8
    i64.store offset=48
    local.get 3
    local.get 0
    i32.const 48
    i32.add
    call 83
    local.get 0
    i32.const -64
    i32.sub
    global.set 0)
  (func (;99;) (type 5)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64)
    global.get 0
    i32.const 144
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 43
    i32.const -21
    local.set 1
    block  ;; label = @1
      i32.const 1058940
      i32.load8_u
      local.tee 3
      if  ;; label = @2
        i32.const -21
        i32.const 2147483647
        local.get 3
        select
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1058940
      i32.const 1
      i32.store8
      i32.const -21
      call 26
    end
    block  ;; label = @1
      block (result i64)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              call 4
              i32.const 4
              i32.shr_u
              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 1048606
            i32.const 34
            call 11
            unreachable
          end
          i32.const 2147483646
          local.set 3
          call 39
          local.set 8
          i64.const 0
          br 1 (;@2;)
        end
        local.get 0
        i32.const 112
        i32.add
        i64.const 0
        i64.store
        local.get 0
        i64.const 0
        i64.store offset=104
        local.get 1
        i32.const 0
        local.get 0
        i32.const 104
        i32.add
        i32.const 16
        call 47
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=104
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
        local.set 3
        local.get 0
        i32.load offset=116
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
        local.set 8
        local.get 0
        i64.load offset=108 align=4
        local.tee 13
        i64.const 56
        i64.shl
        local.get 13
        i64.const 40
        i64.shl
        i64.const 71776119061217280
        i64.and
        i64.or
        local.get 13
        i64.const 24
        i64.shl
        i64.const 280375465082880
        i64.and
        local.get 13
        i64.const 8
        i64.shl
        i64.const 1095216660480
        i64.and
        i64.or
        i64.or
        local.get 13
        i64.const 8
        i64.shr_u
        i64.const 4278190080
        i64.and
        local.get 13
        i64.const 24
        i64.shr_u
        i64.const 16711680
        i64.and
        i64.or
        local.get 13
        i64.const 40
        i64.shr_u
        i64.const 65280
        i64.and
        local.get 13
        i64.const 56
        i64.shr_u
        i64.or
        i64.or
        i64.or
      end
      local.tee 13
      i64.const 40
      i64.shl
      i64.const 71776119061217280
      i64.and
      local.get 13
      i64.const 56
      i64.shl
      i64.or
      local.get 13
      i64.const 24
      i64.shl
      i64.const 280375465082880
      i64.and
      local.get 13
      i64.const 8
      i64.shl
      i64.const 1095216660480
      i64.and
      i64.or
      i64.or
      local.get 13
      i64.const 8
      i64.shr_u
      i64.const 4278190080
      i64.and
      local.get 13
      i64.const 24
      i64.shr_u
      i64.const 16711680
      i64.and
      i64.or
      local.get 13
      i64.const 40
      i64.shr_u
      i64.const 65280
      i64.and
      local.get 13
      i64.const 56
      i64.shr_u
      i64.or
      i64.or
      i64.or
      local.set 15
      local.get 0
      i32.const 53
      i32.add
      local.set 9
      local.get 0
      i32.const 93
      i32.add
      local.set 10
      local.get 3
      i32.const 2147483646
      i32.eq
      local.set 11
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 56
          i32.add
          call 95
          local.tee 1
          call 79
          local.get 1
          local.get 0
          i32.load offset=60
          local.tee 2
          call 73
          br_if 0 (;@3;)
          local.get 0
          i32.const 104
          i32.add
          local.tee 4
          local.get 1
          local.get 2
          call 76
          local.get 0
          i32.const 72
          i32.add
          local.get 4
          call 94
          local.get 1
          local.get 0
          i32.load offset=72
          local.tee 5
          call 73
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.const 32
            i32.add
            local.get 1
            call 79
            block  ;; label = @5
              local.get 0
              i32.load offset=80
              local.tee 2
              if  ;; label = @6
                local.get 0
                i32.const 104
                i32.add
                local.tee 6
                local.get 1
                local.get 2
                call 77
                local.get 0
                local.get 0
                i32.load offset=76
                local.tee 4
                i32.store offset=108
                local.get 1
                local.get 2
                local.get 6
                call 86
                br 1 (;@5;)
              end
              local.get 0
              local.get 0
              i32.load offset=76
              local.tee 4
              i32.store offset=36
            end
            block  ;; label = @5
              local.get 4
              if  ;; label = @6
                local.get 0
                i32.const 104
                i32.add
                local.tee 6
                local.get 1
                local.get 4
                call 77
                local.get 0
                local.get 2
                i32.store offset=112
                local.get 1
                local.get 4
                local.get 6
                call 86
                br 1 (;@5;)
              end
              local.get 0
              local.get 2
              i32.store offset=40
            end
            local.get 1
            local.get 5
            call 74
            i32.const 1
            call 85
            local.get 0
            local.get 0
            i32.load offset=32
            i32.const 1
            i32.sub
            i32.store offset=32
            local.get 0
            i32.const 112
            i32.add
            local.get 0
            i32.const 40
            i32.add
            i64.load
            i64.store
            local.get 0
            local.get 0
            i64.load offset=32
            i64.store offset=104
            local.get 1
            local.get 0
            i32.const 104
            i32.add
            call 83
          end
          local.get 0
          i32.const 24
          i32.add
          local.tee 1
          local.get 0
          i32.const 88
          i32.add
          i32.load
          i32.store
          local.get 0
          i32.const 16
          i32.add
          local.tee 2
          local.get 0
          i32.const 80
          i32.add
          i64.load
          i64.store
          local.get 0
          i32.const 6
          i32.add
          local.tee 4
          local.get 10
          i32.const 2
          i32.add
          i32.load8_u
          i32.store8
          local.get 0
          local.get 0
          i64.load offset=72
          i64.store offset=8
          local.get 0
          local.get 10
          i32.load16_u align=1
          i32.store16 offset=4
          local.get 0
          i32.load8_u offset=92
          local.tee 5
          i32.const 3
          i32.eq
          br_if 0 (;@3;)
          local.get 9
          local.get 0
          i32.load16_u offset=4
          i32.store16 align=1
          local.get 0
          i32.const 48
          i32.add
          local.get 1
          i32.load
          i32.store
          local.get 0
          i32.const 40
          i32.add
          local.get 2
          i64.load
          i64.store
          local.get 9
          i32.const 2
          i32.add
          local.get 4
          i32.load8_u
          i32.store8
          local.get 0
          local.get 0
          i64.load offset=8
          i64.store offset=32
          local.get 0
          local.get 5
          i32.store8 offset=52
          local.get 0
          i32.const 104
          i32.add
          local.get 0
          i32.const 32
          i32.add
          call 36
          local.get 0
          i32.load offset=120
          local.set 4
          local.get 0
          i32.load offset=116
          local.set 5
          local.get 0
          i32.load8_u offset=124
          local.set 7
          call 39
          local.set 1
          i32.const 1048875
          i32.const 20
          call 90
          local.tee 2
          local.get 7
          call 88
          local.get 2
          local.get 5
          call 54
          local.get 2
          local.get 4
          call 54
          call 51
          drop
          local.get 2
          local.get 1
          call 52
          call 53
          call 51
          call 37
          local.set 1
          block  ;; label = @4
            local.get 11
            i32.eqz
            if  ;; label = @5
              local.get 3
              local.get 1
              call 91
              br 1 (;@4;)
            end
            i32.const 4
            local.get 1
            call 78
            local.get 1
            i32.const 1048844
            i32.const 4
            call 6
            drop
          end
          local.get 0
          local.get 15
          i64.store offset=104
          local.get 1
          local.get 0
          i32.const 104
          i32.add
          i32.const 8
          call 6
          drop
          local.get 8
          call 52
          local.get 1
          call 91
          local.get 2
          local.get 1
          call 53
          local.get 2
          call 51
          call 25
          i32.const 2147483646
          local.set 1
          local.get 5
          call 37
          local.set 2
          local.get 4
          call 37
          local.set 4
          local.get 3
          i32.const 2147483646
          i32.ne
          if  ;; label = @4
            local.get 3
            call 37
            local.set 1
          end
          local.get 8
          call 31
          local.set 5
          call 51
          local.set 6
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                i32.const 1
                i32.sub
                br_table 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              local.get 0
              local.get 6
              i32.store offset=136
              local.get 0
              local.get 4
              i32.store offset=132
              local.get 0
              local.get 2
              i32.store offset=128
              local.get 0
              local.get 5
              i32.store offset=116
              local.get 0
              local.get 1
              i32.store offset=112
              local.get 0
              local.get 13
              i64.store offset=104
              local.get 0
              i64.const -1
              i64.store offset=120
              local.get 0
              i32.const 72
              i32.add
              local.get 0
              i32.const 104
              i32.add
              call 56
              local.get 0
              i64.load offset=72
              local.tee 14
              i64.const -1
              i64.eq
              if  ;; label = @6
                call 13
                local.set 14
              end
              call 32
              local.set 1
              local.get 14
              local.get 0
              i32.load offset=80
              local.get 0
              i32.load offset=96
              local.get 0
              i32.load offset=84
              local.get 0
              i32.load offset=88
              local.get 1
              call 27
              drop
              call 28
              local.get 1
              call 46
              drop
              br 3 (;@2;)
            end
            local.get 0
            local.get 6
            i32.store offset=136
            local.get 0
            local.get 4
            i32.store offset=132
            local.get 0
            local.get 2
            i32.store offset=128
            local.get 0
            i64.const -1
            i64.store offset=120
            local.get 0
            local.get 5
            i32.store offset=116
            local.get 0
            local.get 1
            i32.store offset=112
            local.get 0
            local.get 13
            i64.store offset=104
            global.get 0
            i32.const 80
            i32.sub
            local.tee 1
            global.set 0
            local.get 1
            i32.const 40
            i32.add
            local.tee 3
            local.get 0
            i32.const 104
            i32.add
            i32.const 40
            call 102
            local.get 1
            i32.const 8
            i32.add
            local.get 3
            call 56
            local.get 0
            i32.const 72
            i32.add
            local.tee 3
            i32.const 0
            i32.store offset=16
            local.get 3
            local.get 1
            i32.load offset=24
            i32.store offset=12
            local.get 3
            local.get 1
            i32.load offset=20
            i32.store offset=8
            local.get 3
            local.get 1
            i32.load offset=32
            i32.store offset=4
            local.get 3
            local.get 1
            i32.load offset=16
            i32.store
            local.get 1
            i32.const 80
            i32.add
            global.set 0
            global.get 0
            i32.const 32
            i32.sub
            local.tee 2
            global.set 0
            local.get 3
            i32.load offset=16
            local.tee 1
            if  ;; label = @5
              call 32
              local.tee 0
              call 12
              i32.const 1048691
              i32.const 10
              call 41
              local.tee 5
              local.get 0
              call 2
              drop
              local.get 2
              i32.const 8
              i32.add
              call 44
              local.get 2
              local.get 2
              i32.load8_u offset=12
              i32.store8 offset=20
              local.get 2
              local.get 2
              i32.load offset=8
              i32.store offset=16
              local.get 3
              i32.const 20
              i32.add
              i32.load
              local.tee 4
              local.get 2
              i32.const 16
              i32.add
              local.tee 0
              call 45
              local.get 0
              local.get 1
              local.get 4
              call 35
              local.get 3
              i32.const 24
              i32.add
              i32.load
              local.tee 4
              call 46
              local.get 0
              call 45
              local.get 4
              call 4
              local.set 6
              i32.const 0
              local.set 0
              loop  ;; label = @6
                local.get 6
                local.get 0
                i32.const 4
                i32.add
                local.tee 1
                i32.ge_u
                if  ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.store offset=28
                  local.get 4
                  local.get 0
                  local.get 2
                  i32.const 28
                  i32.add
                  i32.const 4
                  call 47
                  drop
                  local.get 2
                  i32.load offset=28
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
                  local.get 2
                  i32.const 16
                  i32.add
                  call 48
                  local.get 1
                  local.set 0
                  br 1 (;@6;)
                end
              end
              local.get 5
              local.get 2
              i32.load offset=16
              local.get 2
              i32.load8_u offset=20
              call 49
            end
            local.get 3
            i32.load
            local.get 3
            i32.load offset=4
            local.get 3
            i32.load offset=8
            local.get 3
            i32.load offset=12
            call 22
            unreachable
          end
          local.get 1
          i32.const 2147483646
          i32.ne
          if  ;; label = @4
            local.get 0
            local.get 5
            i32.store offset=116
            local.get 0
            local.get 1
            i32.store offset=112
            local.get 0
            local.get 13
            i64.store offset=104
            local.get 0
            i32.const 72
            i32.add
            local.get 0
            i32.const 104
            i32.add
            local.tee 12
            call 63
            call 55
            local.set 16
            local.get 0
            i64.load offset=72
            local.set 14
            call 51
            local.set 7
            local.get 0
            i32.load offset=80
            call 37
            local.set 1
            local.get 0
            i32.load offset=84
            call 31
            local.set 5
            local.get 0
            local.get 14
            i64.const 40
            i64.shl
            i64.const 71776119061217280
            i64.and
            local.get 14
            i64.const 56
            i64.shl
            i64.or
            local.get 14
            i64.const 24
            i64.shl
            i64.const 280375465082880
            i64.and
            local.get 14
            i64.const 8
            i64.shl
            i64.const 1095216660480
            i64.and
            i64.or
            i64.or
            local.get 14
            i64.const 8
            i64.shr_u
            i64.const 4278190080
            i64.and
            local.get 14
            i64.const 24
            i64.shr_u
            i64.const 16711680
            i64.and
            i64.or
            local.get 14
            i64.const 40
            i64.shr_u
            i64.const 65280
            i64.and
            local.get 14
            i64.const 56
            i64.shr_u
            i64.or
            i64.or
            i64.or
            i64.store offset=108 align=4
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
            i32.store offset=104
            local.get 0
            local.get 5
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            local.get 5
            i32.const 24
            i32.shl
            i32.or
            local.get 5
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 5
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            i32.store offset=116
            local.get 7
            local.get 12
            i32.const 16
            call 6
            drop
            local.get 2
            local.get 7
            local.get 16
            local.get 4
            local.get 6
            call 29
            drop
          else
            local.get 2
            local.get 5
            call 55
            local.get 4
            local.get 6
            call 30
            drop
          end
          br 1 (;@2;)
        end
      end
      local.get 0
      i32.const 144
      i32.add
      global.set 0
      return
    end
    i32.const 1048743
    i32.const 29
    call 11
    unreachable)
  (func (;100;) (type 5)
    nop)
  (func (;101;) (type 5)
    i32.const 1048908
    i32.const 14
    call 11
    unreachable)
  (func (;102;) (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.set 3
    local.get 2
    i32.const 15
    i32.gt_u
    if  ;; label = @1
      local.get 3
      i32.const 0
      local.get 3
      i32.sub
      i32.const 3
      i32.and
      local.tee 0
      i32.add
      local.set 4
      local.get 0
      if  ;; label = @2
        local.get 1
        local.set 5
        loop  ;; label = @3
          local.get 3
          local.get 5
          i32.load8_u
          i32.store8
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 4
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 4
      local.get 2
      local.get 0
      i32.sub
      local.tee 7
      i32.const -4
      i32.and
      local.tee 6
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 0
        local.get 1
        i32.add
        local.tee 0
        i32.const 3
        i32.and
        local.tee 2
        if  ;; label = @3
          local.get 6
          i32.const 0
          i32.le_s
          br_if 1 (;@2;)
          local.get 0
          i32.const -4
          i32.and
          local.tee 5
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
          local.get 5
          i32.load
          local.set 5
          loop  ;; label = @4
            local.get 4
            local.get 5
            local.get 8
            i32.shr_u
            local.get 1
            i32.load
            local.tee 5
            local.get 2
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
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
          end
          br 1 (;@2;)
        end
        local.get 6
        i32.const 0
        i32.le_s
        br_if 0 (;@2;)
        local.get 0
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
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 7
      i32.const 3
      i32.and
      local.set 2
      local.get 0
      local.get 6
      i32.add
      local.set 1
    end
    local.get 2
    if  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      local.set 0
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 0
        i32.lt_u
        br_if 0 (;@2;)
      end
    end)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1058941))
  (global (;2;) i32 (i32.const 1058944))
  (export "memory" (memory 0))
  (export "init" (func 96))
  (export "queued_calls" (func 97))
  (export "add_queued_call" (func 98))
  (export "forward_queued_calls" (func 99))
  (export "callBack" (func 100))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "invalid value\02\01\00input too longincorrect number of DCDT transfersargument decode error (): wrong number of argumentsCB_CLOSUREDCDTNFTTransferDCDTTransferinput too shortManagedVec index out of rangeDCDT expected.node.infostorage decode error: bad array lengthtocall_typeREWAqueued_callsadd_queued_callforward_queued_calls\00\0f\00\10\00\0e\00\10\00\0d\00\10\00panic occurred")
  (data (;1;) (i32.const 1048924) "\9c\ff\ff\ff"))
