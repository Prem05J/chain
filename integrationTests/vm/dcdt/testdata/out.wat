(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i64)))
  (type (;10;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32) (result i64)))
  (type (;13;) (func (param i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i64 i32)))
  (type (;15;) (func (param i32 i64 i32)))
  (type (;16;) (func (param i64)))
  (type (;17;) (func (param i64 i32 i32) (result i32)))
  (type (;18;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;19;) (func (result i64)))
  (type (;20;) (func (param i32) (result i64)))
  (import "env" "signalError" (func (;0;) (type 1)))
  (import "env" "mBufferNew" (func (;1;) (type 3)))
  (import "env" "mBufferAppend" (func (;2;) (type 5)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;3;) (type 5)))
  (import "env" "managedSCAddress" (func (;4;) (type 2)))
  (import "env" "managedExecuteOnDestContext" (func (;5;) (type 18)))
  (import "env" "cleanReturnData" (func (;6;) (type 0)))
  (import "env" "managedCaller" (func (;7;) (type 2)))
  (import "env" "bigIntGetCallValue" (func (;8;) (type 2)))
  (import "env" "managedGetMultiDCDTCallValue" (func (;9;) (type 2)))
  (import "env" "mBufferGetArgument" (func (;10;) (type 5)))
  (import "env" "mBufferAppendBytes" (func (;11;) (type 8)))
  (import "env" "managedSignalError" (func (;12;) (type 2)))
  (import "env" "mBufferGetLength" (func (;13;) (type 4)))
  (import "env" "smallIntGetUnsignedArgument" (func (;14;) (type 20)))
  (import "env" "bigIntGetUnsignedArgument" (func (;15;) (type 1)))
  (import "env" "getNumArguments" (func (;16;) (type 3)))
  (import "env" "mBufferFinish" (func (;17;) (type 4)))
  (import "env" "mBufferSetBytes" (func (;18;) (type 8)))
  (import "env" "mBufferStorageLoad" (func (;19;) (type 5)))
  (import "env" "mBufferStorageStore" (func (;20;) (type 5)))
  (import "env" "bigIntSetInt64" (func (;21;) (type 9)))
  (import "env" "managedAsyncCall" (func (;22;) (type 7)))
  (import "env" "managedWriteLog" (func (;23;) (type 1)))
  (import "env" "checkNoPayment" (func (;24;) (type 0)))
  (import "env" "bigIntFinishUnsigned" (func (;25;) (type 2)))
  (import "env" "bigIntAdd" (func (;26;) (type 6)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func (;27;) (type 11)))
  (import "env" "managedTransferValueExecute" (func (;28;) (type 11)))
  (import "env" "mBufferToBigIntUnsigned" (func (;29;) (type 5)))
  (import "env" "getGasLeft" (func (;30;) (type 19)))
  (import "env" "managedOwnerAddress" (func (;31;) (type 2)))
  (import "env" "smallIntFinishUnsigned" (func (;32;) (type 16)))
  (import "env" "mBufferGetByteSlice" (func (;33;) (type 10)))
  (func (;34;) (type 13) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      local.get 1
      i32.ge_u
      if  ;; label = @2
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        call 35
        unreachable
      end
      call 35
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
  (func (;35;) (type 0)
    call 105
    unreachable)
  (func (;36;) (type 4) (param i32) (result i32)
    (local i32)
    call 1
    local.tee 1
    local.get 0
    call 2
    drop
    local.get 1)
  (func (;37;) (type 2) (param i32)
    local.get 0
    i32.const 1049016
    i32.const 0
    call 38)
  (func (;38;) (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 18
    drop)
  (func (;39;) (type 1) (param i32 i32)
    (local i32)
    call 40
    local.tee 2
    local.get 0
    call 3
    drop
    local.get 1
    local.get 2
    i32.store)
  (func (;40;) (type 3) (result i32)
    (local i32)
    i32.const 1049032
    i32.const 1049032
    i32.load
    i32.const -1
    i32.add
    local.tee 0
    i32.store
    local.get 0)
  (func (;41;) (type 1) (param i32 i32)
    local.get 0
    local.get 1
    call 0
    unreachable)
  (func (;42;) (type 14) (param i32 i32 i64 i32)
    (local i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 4
    global.set 0
    call 43
    local.set 5
    local.get 4
    call 43
    i32.store offset=16
    local.get 4
    local.get 5
    i32.store offset=12
    local.get 4
    local.get 0
    i32.store offset=8
    local.get 4
    i64.const -1
    i64.store
    local.get 4
    local.get 3
    i32.store offset=76
    local.get 4
    local.get 2
    i64.store offset=64
    local.get 4
    local.get 1
    i32.store offset=72
    local.get 4
    i32.const 32
    i32.add
    local.get 4
    local.get 4
    i32.const -64
    i32.sub
    call 44
    local.get 4
    local.get 4
    i32.const 32
    i32.add
    call 45
    local.get 4
    call 46
    unreachable)
  (func (;43;) (type 3) (result i32)
    (local i32)
    call 40
    local.tee 0
    i32.const 1049016
    i32.const 0
    call 18
    drop
    local.get 0)
  (func (;44;) (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 24
    i32.add
    local.tee 4
    call 43
    i32.store
    local.get 3
    i32.const 16
    i32.add
    local.tee 5
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 3
    i32.const 8
    i32.add
    local.tee 6
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 3
    local.get 1
    i64.load
    i64.store
    local.get 2
    i64.load offset=8
    local.set 7
    local.get 3
    local.get 2
    i64.load
    i64.store offset=32
    local.get 3
    local.get 7
    i64.store offset=40
    local.get 4
    local.get 3
    i32.const 32
    i32.add
    call 80
    local.get 0
    i32.const 24
    i32.add
    local.get 4
    i64.load
    i64.store
    local.get 0
    i32.const 16
    i32.add
    local.get 5
    i64.load
    i64.store
    local.get 0
    i32.const 8
    i32.add
    local.get 6
    i64.load
    i64.store
    local.get 0
    local.get 3
    i64.load
    i64.store
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;45;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=16
    local.set 6
    local.get 1
    i32.load offset=12
    local.set 4
    local.get 1
    i32.load offset=8
    local.set 5
    local.get 1
    i32.load offset=24
    local.set 3
    call 48
    local.set 1
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            call 75
            br_table 3 (;@1;) 1 (;@3;) 0 (;@4;)
          end
          local.get 2
          local.get 3
          i32.store offset=12
          call 43
          local.set 1
          call 43
          drop
          local.get 1
          local.get 5
          call 36
          call 59
          local.get 3
          call 75
          local.set 5
          call 43
          local.tee 7
          local.get 5
          i64.extend_i32_u
          call 74
          local.get 1
          local.get 7
          call 59
          local.get 2
          local.get 3
          call 13
          i32.store offset=20
          local.get 2
          i32.const 0
          i32.store offset=16
          local.get 2
          local.get 2
          i32.const 12
          i32.add
          i32.store offset=24
          loop  ;; label = @4
            local.get 2
            i32.const 32
            i32.add
            local.get 2
            i32.const 16
            i32.add
            call 76
            local.get 2
            i64.load offset=32
            i64.eqz
            if  ;; label = @5
              local.get 4
              call 77
              i32.eqz
              if  ;; label = @6
                local.get 1
                local.get 4
                call 72
              end
              call 51
              local.set 5
              i32.const 1048733
              i32.const 20
              call 56
              local.set 4
              local.get 1
              local.get 6
              call 70
              br 3 (;@2;)
            else
              local.get 2
              i32.load offset=52
              local.get 2
              i64.load offset=40
              local.set 8
              local.get 2
              i32.load offset=48
              local.set 3
              call 43
              drop
              local.get 1
              local.get 3
              call 36
              call 59
              local.get 1
              local.get 8
              call 73
              local.get 2
              call 43
              i32.store offset=60
              local.get 2
              i32.const 60
              i32.add
              call 39
              local.get 1
              local.get 2
              i32.load offset=60
              call 59
              br 1 (;@4;)
            end
            unreachable
          end
          unreachable
        end
        local.get 2
        i32.const 40
        i32.add
        i64.const 0
        i64.store
        local.get 2
        i64.const 0
        i64.store offset=32
        local.get 3
        i32.const 0
        local.get 2
        i32.const 32
        i32.add
        i32.const 16
        call 62
        local.set 1
        local.get 2
        i32.const 0
        i32.store offset=16
        local.get 2
        i32.const 32
        i32.add
        local.get 2
        i32.const 16
        i32.add
        call 78
        local.set 7
        local.get 2
        i32.const 32
        i32.add
        local.get 2
        i32.const 16
        i32.add
        call 79
        local.set 8
        local.get 2
        i32.const 32
        i32.add
        local.get 2
        i32.const 16
        i32.add
        call 78
        local.set 3
        block (result i32)  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.eqz
              if  ;; label = @6
                call 43
                local.tee 1
                local.get 7
                call 72
                block  ;; label = @7
                  local.get 8
                  i64.eqz
                  if  ;; label = @8
                    local.get 1
                    local.get 3
                    call 71
                    local.get 4
                    call 77
                    i32.eqz
                    br_if 1 (;@7;)
                    br 4 (;@4;)
                  end
                  local.get 1
                  local.get 8
                  call 73
                  local.get 1
                  local.get 3
                  call 71
                  call 43
                  drop
                  local.get 1
                  local.get 5
                  call 36
                  call 59
                  local.get 4
                  call 77
                  br_if 2 (;@5;)
                  local.get 1
                  local.get 4
                  call 72
                  br 2 (;@5;)
                end
                local.get 1
                local.get 4
                call 72
                br 2 (;@4;)
              end
              i32.const 1048794
              i32.const 29
              call 0
              unreachable
            end
            call 51
            local.set 5
            i32.const 1048753
            i32.const 15
            call 56
            br 1 (;@3;)
          end
          i32.const 1048768
          i32.const 12
          call 56
        end
        local.set 4
        local.get 1
        local.get 6
        call 70
      end
      local.set 6
      call 48
      local.set 1
    end
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 6
    i32.store offset=12
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func (;46;) (type 2) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call 22
    unreachable)
  (func (;47;) (type 17) (param i64 i32 i32) (result i32)
    i32.const -25
    call 4
    local.get 0
    i32.const -25
    call 48
    local.get 1
    local.get 2
    call 40
    local.tee 1
    call 5
    drop
    call 6
    local.get 1)
  (func (;48;) (type 3) (result i32)
    (local i32)
    call 40
    local.tee 0
    call 82
    local.get 0)
  (func (;49;) (type 1) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    call 43
    local.set 3
    call 43
    local.set 4
    local.get 2
    local.get 1
    i32.store offset=56
    local.get 2
    local.get 4
    i32.store offset=48
    local.get 2
    local.get 3
    i32.store offset=44
    local.get 2
    local.get 0
    i32.store offset=40
    local.get 2
    i64.const -1
    i64.store offset=32
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    call 45
    local.get 2
    call 46
    unreachable)
  (func (;50;) (type 3) (result i32)
    (local i32)
    call 40
    local.tee 0
    call 7
    local.get 0)
  (func (;51;) (type 3) (result i32)
    (local i32)
    call 40
    local.tee 0
    call 4
    local.get 0)
  (func (;52;) (type 3) (result i32)
    (local i32)
    i32.const 1049040
    i32.load8_u
    local.tee 0
    if  ;; label = @1
      i32.const -11
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 1049040
    i32.const 1
    i32.store8
    i32.const -11
    call 8
    i32.const -11)
  (func (;53;) (type 3) (result i32)
    (local i32)
    i32.const 1049044
    i32.load8_u
    local.tee 0
    if  ;; label = @1
      i32.const -21
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 1049044
    i32.const 1
    i32.store8
    i32.const -21
    call 9
    i32.const -21)
  (func (;54;) (type 4) (param i32) (result i32)
    local.get 0
    call 40
    local.tee 0
    call 10
    drop
    local.get 0)
  (func (;55;) (type 7) (param i32 i32 i32 i32)
    (local i32)
    i32.const 1048647
    i32.const 23
    call 56
    local.tee 4
    local.get 0
    local.get 1
    call 11
    drop
    local.get 4
    i32.const 1048670
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
  (func (;56;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call 40
    local.tee 2
    local.get 0
    local.get 1
    call 18
    drop
    local.get 2)
  (func (;57;) (type 8) (param i32 i32 i32) (result i32)
    (local i32)
    call 43
    local.set 3
    loop  ;; label = @1
      local.get 0
      i32.load
      i32.const 1049036
      i32.load
      i32.ge_s
      i32.eqz
      if  ;; label = @2
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call 58
        call 59
        br 1 (;@1;)
      end
    end
    local.get 3)
  (func (;58;) (type 8) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 3
    i32.const 1049036
    i32.load
    i32.ge_s
    if  ;; label = @1
      local.get 1
      local.get 2
      i32.const 1048673
      i32.const 17
      call 55
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3
    call 54)
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
    call 11
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;60;) (type 7) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const 1049036
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
      call 58
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store)
  (func (;61;) (type 3) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    i32.const 0
    call 54
    local.tee 0
    call 13
    i32.const 4
    i32.eq
    if  ;; label = @1
      local.get 1
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      local.get 1
      i32.const 12
      i32.add
      i32.const 4
      call 62
      drop
      i32.const 2147483646
      local.get 0
      local.get 1
      i32.load offset=12
      i32.const 1145849669
      i32.eq
      select
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;62;) (type 10) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call 33
    i32.const 0
    i32.ne)
  (func (;63;) (type 4) (param i32) (result i32)
    local.get 0
    call 40
    local.tee 0
    call 15
    local.get 0)
  (func (;64;) (type 2) (param i32)
    i32.const 1049036
    i32.load
    local.get 0
    i32.le_s
    if  ;; label = @1
      return
    end
    i32.const 1048690
    i32.const 18
    call 0
    unreachable)
  (func (;65;) (type 2) (param i32)
    call 16
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048708
    i32.const 25
    call 0
    unreachable)
  (func (;66;) (type 2) (param i32)
    i32.const 1049036
    i32.load
    local.get 0
    i32.ge_s
    if  ;; label = @1
      return
    end
    i32.const 1048673
    i32.const 17
    call 0
    unreachable)
  (func (;67;) (type 0)
    i32.const 1049036
    call 16
    i32.store)
  (func (;68;) (type 2) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load
    call 13
    local.set 2
    local.get 1
    local.get 0
    i32.store offset=24
    local.get 1
    local.get 2
    i32.store offset=20
    local.get 1
    i32.const 0
    i32.store offset=16
    loop  ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 16
      i32.add
      call 69
      local.get 1
      i32.load offset=8
      if  ;; label = @2
        local.get 1
        i32.load offset=12
        call 17
        drop
        br 1 (;@1;)
      end
    end
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;69;) (type 1) (param i32 i32)
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
      call 81
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
  (func (;70;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 2
    drop
    local.get 0)
  (func (;71;) (type 1) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    call 43
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call 39
    local.get 0
    local.get 2
    i32.load offset=12
    call 59
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;72;) (type 1) (param i32 i32)
    call 43
    drop
    local.get 0
    local.get 1
    call 36
    call 59)
  (func (;73;) (type 9) (param i32 i64)
    (local i32)
    call 43
    local.tee 2
    local.get 1
    call 74
    local.get 0
    local.get 2
    call 59)
  (func (;74;) (type 9) (param i32 i64)
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
    call 91
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 38
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;75;) (type 4) (param i32) (result i32)
    local.get 0
    call 13
    i32.const 4
    i32.shr_u)
  (func (;76;) (type 1) (param i32 i32)
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
      call 81
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
      call 78
      local.set 3
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call 79
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
      call 78
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
  (func (;77;) (type 4) (param i32) (result i32)
    local.get 0
    call 13
    i32.eqz)
  (func (;78;) (type 5) (param i32 i32) (result i32)
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
    call 86
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 84
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
  (func (;79;) (type 12) (param i32 i32) (result i64)
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
    call 86
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 84
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
  (func (;80;) (type 1) (param i32 i32)
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
    call 83
    local.get 2
    i32.load offset=16
    local.get 2
    i32.load offset=20
    local.get 2
    i32.const 40
    i32.add
    i32.const 4
    call 84
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
    call 83
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load offset=12
    local.get 2
    i32.const 40
    i32.add
    i32.const 8
    call 84
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
    call 83
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    local.get 2
    i32.const 40
    i32.add
    i32.const 4
    call 84
    local.get 0
    i32.load
    local.get 2
    i32.const 24
    i32.add
    i32.const 16
    call 11
    drop
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;81;) (type 10) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 62)
  (func (;82;) (type 2) (param i32)
    local.get 0
    i64.const 0
    call 21)
  (func (;83;) (type 7) (param i32 i32 i32 i32)
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
    call 34
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
  (func (;84;) (type 7) (param i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 0
      local.get 2
      local.get 1
      call 115
      return
    end
    call 105
    unreachable)
  (func (;85;) (type 6) (param i32 i32 i32)
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
    call 81
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
  (func (;86;) (type 7) (param i32 i32 i32 i32)
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
      call 35
      unreachable
    end
    call 35
    unreachable)
  (func (;87;) (type 4) (param i32) (result i32)
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
    call 40
    local.tee 0
    call 19
    drop
    block  ;; label = @1
      local.get 0
      call 13
      local.tee 2
      i32.const 9
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 1
      i32.const 8
      i32.add
      local.get 2
      call 88
      local.get 0
      i32.const 0
      local.get 1
      i32.load
      local.tee 0
      local.get 1
      i32.load offset=4
      local.tee 2
      call 62
      drop
      local.get 0
      local.get 2
      call 89
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
    i32.const 1048827
    i32.const 22
    call 56
    local.tee 0
    i32.const 1048780
    i32.const 14
    call 11
    drop
    local.get 0
    call 12
    unreachable)
  (func (;88;) (type 6) (param i32 i32 i32)
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
    call 34
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
  (func (;89;) (type 12) (param i32 i32) (result i64)
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
  (func (;90;) (type 1) (param i32 i32)
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
    call 91
    local.get 2
    i32.load offset=4
    local.set 1
    local.get 2
    i32.load
    local.set 3
    call 40
    local.tee 4
    local.get 3
    local.get 1
    call 18
    drop
    local.get 0
    local.get 4
    call 20
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;91;) (type 15) (param i32 i64 i32)
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
        i32.const 1049016
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
            call 105
            unreachable
          end
          call 114
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
  (func (;92;) (type 1) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load
    call 13
    local.set 3
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    local.get 3
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
      call 69
      local.get 2
      i32.load offset=8
      if  ;; label = @2
        local.get 2
        i32.load offset=12
        local.set 1
        call 43
        drop
        local.get 0
        local.get 1
        call 36
        call 59
        br 1 (;@1;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;93;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call 43
    local.tee 2
    local.get 0
    local.get 1
    call 56
    call 59
    local.get 2)
  (func (;94;) (type 4) (param i32) (result i32)
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
    call 85
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
      call 36
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048849
    i32.const 8
    i32.const 1048673
    i32.const 17
    call 55
    unreachable)
  (func (;95;) (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1048857
    i32.const 11
    call 56
    local.set 2
    local.get 1
    local.get 0
    call 13
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
    call 11
    drop
    local.get 2
    local.get 0
    call 2
    drop
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func (;96;) (type 1) (param i32 i32)
    (local i32)
    i32.const 1048868
    i32.const 12
    call 93
    local.tee 2
    local.get 0
    call 71
    local.get 2
    local.get 1
    call 92
    local.get 2
    call 43
    call 23)
  (func (;97;) (type 3) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 0
    global.set 0
    local.get 0
    call 53
    local.tee 2
    i32.store offset=12
    call 43
    local.set 1
    local.get 0
    local.get 2
    call 13
    i32.store offset=20
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.store offset=24
    loop  ;; label = @1
      local.get 0
      i32.const 32
      i32.add
      local.get 0
      i32.const 16
      i32.add
      call 76
      local.get 0
      i64.load offset=32
      i64.eqz
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.load offset=52
        local.get 0
        i64.load offset=40
        local.set 4
        local.get 0
        i32.load offset=48
        local.set 3
        call 43
        drop
        local.get 1
        local.get 3
        call 36
        call 59
        local.get 1
        local.get 4
        call 73
        local.get 0
        call 43
        i32.store offset=60
        local.get 0
        i32.const 60
        i32.add
        call 39
        local.get 1
        local.get 0
        i32.load offset=60
        call 59
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const -64
    i32.sub
    global.set 0
    local.get 1)
  (func (;98;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 24
    call 67
    i32.const 0
    call 66
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 1048940
    i32.const 15
    call 60
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=12
    call 64
    i32.eqz
    if  ;; label = @1
      local.get 1
      call 17
      drop
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;99;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 24
    call 67
    i32.const 0
    call 66
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 1048906
    i32.const 4
    call 57
    local.set 1
    local.get 0
    i32.load offset=12
    call 64
    i32.const 1048955
    i32.const 14
    call 56
    call 95
    local.tee 2
    local.get 2
    call 87
    i32.const 1
    i32.add
    call 90
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call 68
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;100;) (type 0)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 24
    call 67
    i32.const 0
    call 66
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 1048906
    i32.const 4
    call 57
    local.set 1
    local.get 0
    i32.load offset=12
    call 64
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call 68
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;101;) (type 0)
    call 24
    i32.const 0
    call 65
    call 50
    call 17
    drop)
  (func (;102;) (type 0)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 65
    local.get 0
    call 97
    i32.store offset=12
    call 52
    local.get 0
    i32.const 12
    i32.add
    call 96
    i32.const 1048868
    i32.const 12
    call 56
    call 95
    local.tee 1
    local.get 1
    call 87
    i32.const 1
    i32.add
    call 90
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;103;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 65
    call 52
    local.set 1
    local.get 0
    call 97
    i32.store offset=16
    local.get 1
    local.get 0
    i32.const 16
    i32.add
    call 96
    i32.const 1048969
    i32.const 25
    call 56
    call 95
    local.tee 2
    local.get 2
    call 87
    i32.const 1
    i32.add
    call 90
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 0
    i32.load offset=16
    local.tee 2
    i32.store offset=12
    local.get 1
    call 25
    local.get 2
    call 13
    local.set 1
    local.get 0
    local.get 0
    i32.const 8
    i32.add
    i32.const 4
    i32.or
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    i32.const 0
    i32.store offset=16
    loop  ;; label = @1
      local.get 0
      local.get 0
      i32.const 16
      i32.add
      call 69
      local.get 0
      i32.load
      if  ;; label = @2
        local.get 0
        i32.load offset=4
        call 17
        drop
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;104;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 65
    i32.const 1
    local.set 3
    block  ;; label = @1
      call 53
      local.tee 4
      call 75
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 4
        call 13
        local.set 5
        local.get 0
        i32.const 16
        i32.add
        local.set 6
        loop  ;; label = @3
          local.get 2
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
          local.get 4
          local.get 1
          local.get 0
          i32.const 8
          i32.add
          i32.const 16
          call 62
          drop
          local.get 0
          i32.const 0
          i32.store offset=28
          i32.const 1
          local.set 2
          local.get 3
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call 78
          drop
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call 79
          drop
          local.get 0
          i32.const 8
          i32.add
          local.get 0
          i32.const 28
          i32.add
          call 78
          drop
          i32.const 0
          local.set 3
          local.get 8
          local.set 1
          br_if 0 (;@3;)
        end
        call 105
        unreachable
      end
      i32.const 1048613
      i32.const 34
      call 0
      unreachable
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;105;) (type 0)
    call 114
    unreachable)
  (func (;106;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 65
    local.get 0
    call 97
    i32.store offset=12
    call 52
    local.set 2
    i32.const 1048880
    i32.const 12
    call 93
    local.tee 1
    local.get 2
    call 71
    local.get 1
    local.get 0
    i32.const 12
    i32.add
    call 92
    local.get 1
    call 43
    call 23
    i32.const 1048880
    i32.const 12
    call 41
    unreachable)
  (func (;107;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    call 53
    drop
    call 67
    i32.const 2
    call 66
    i32.const 0
    call 54
    i32.const 1
    call 63
    local.set 4
    local.get 0
    i32.const 2
    i32.store offset=16
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.const 1048924
    i32.const 16
    call 60
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.get 0
    i32.load offset=16
    call 64
    call 50
    local.set 5
    if  ;; label = @1
      call 43
      local.set 2
    end
    call 43
    local.set 3
    local.get 0
    call 43
    local.tee 6
    i32.store offset=12
    call 36
    local.set 7
    call 40
    local.tee 1
    call 82
    local.get 1
    local.get 1
    local.get 4
    call 26
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
    call 80
    local.get 5
    local.get 6
    i64.const 50000000
    local.get 2
    local.get 3
    call 27
    if  ;; label = @1
      i32.const 1048994
      i32.const 20
      call 41
      unreachable
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;108;) (type 0)
    (local i32 i32 i32 i32 i64)
    call 24
    i32.const 3
    call 65
    call 61
    local.set 1
    i32.const 1
    call 14
    local.set 4
    i32.const 2
    call 63
    local.set 2
    i32.const 1048892
    i32.const 14
    call 93
    local.set 0
    call 43
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.const 2147483646
      i32.ne
      if  ;; label = @2
        local.get 1
        call 36
        local.set 3
        br 1 (;@1;)
      end
      local.get 3
      i32.const 1048823
      i32.const 4
      call 18
      drop
    end
    local.get 0
    local.get 3
    call 59
    local.get 0
    local.get 4
    call 73
    local.get 0
    local.get 2
    call 71
    local.get 0
    call 43
    call 23
    call 50
    local.set 0
    local.get 1
    i32.const 2147483646
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 4
      local.get 2
      call 42
      unreachable
    end
    local.get 0
    local.get 2
    i64.const 0
    call 43
    call 43
    call 28
    drop)
  (func (;109;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 24
    call 67
    i32.const 0
    call 66
    local.get 0
    i32.const 0
    i32.store offset=32
    local.get 0
    i32.const 32
    i32.add
    i32.const 1048910
    i32.const 14
    call 57
    local.set 1
    local.get 0
    i32.load offset=32
    call 64
    call 50
    local.set 4
    local.get 0
    call 43
    local.tee 5
    i32.store offset=12
    local.get 1
    call 13
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
          call 94
          call 36
          local.set 2
          local.get 0
          i32.const 16
          i32.add
          call 94
          local.set 1
          local.get 0
          i64.const 0
          i64.store offset=32
          local.get 1
          call 13
          local.tee 3
          i32.const 9
          i32.lt_u
          br_if 1 (;@2;)
          i32.const 1048849
          i32.const 8
          i32.const 1048780
          i32.const 14
          call 55
          unreachable
        end
        local.get 4
        local.get 5
        call 49
        unreachable
      end
      local.get 0
      local.get 0
      i32.const 32
      i32.add
      local.get 3
      call 88
      local.get 1
      i32.const 0
      local.get 0
      i32.load
      local.tee 1
      local.get 0
      i32.load offset=4
      local.tee 3
      call 62
      drop
      local.get 1
      local.get 3
      call 89
      local.set 6
      local.get 0
      i32.const 16
      i32.add
      call 94
      call 40
      local.tee 1
      call 29
      drop
      local.get 0
      local.get 1
      i32.store offset=44
      local.get 0
      local.get 6
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
      call 80
      local.get 0
      i32.load offset=20
      local.set 2
      local.get 0
      i32.load offset=24
      local.set 1
      br 0 (;@1;)
    end
    unreachable)
  (func (;110;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 65
    local.get 0
    call 53
    local.tee 1
    i32.store offset=28
    local.get 0
    call 43
    local.tee 3
    i32.store offset=32
    local.get 3
    call 43
    call 59
    local.get 0
    call 43
    local.tee 6
    i32.store offset=36
    local.get 0
    local.get 1
    call 13
    i32.store offset=44
    local.get 0
    i32.const 0
    i32.store offset=40
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=48
    loop  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 56
        i32.add
        local.get 0
        i32.const 40
        i32.add
        call 76
        local.get 0
        i64.load offset=56
        i64.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=76
        local.set 3
        local.get 0
        i64.load offset=64
        local.set 8
        local.get 0
        i32.load offset=72
        local.set 5
        call 43
        local.tee 1
        local.get 5
        call 72
        block (result i32)  ;; label = @3
          local.get 8
          i64.eqz
          if  ;; label = @4
            i32.const 13
            local.set 4
            i32.const 1048587
            br 1 (;@3;)
          end
          local.get 1
          local.get 8
          call 73
          i32.const 11
          local.set 4
          i32.const 1048576
        end
        local.set 2
        local.get 1
        local.get 3
        call 71
        call 30
        local.get 2
        local.get 4
        call 56
        local.get 1
        call 47
        drop
        call 43
        local.set 2
        call 48
        local.set 4
        call 43
        local.set 7
        call 43
        local.tee 1
        local.get 5
        call 72
        local.get 1
        local.get 3
        call 71
        local.get 1
        local.get 2
        call 72
        local.get 1
        local.get 4
        call 71
        local.get 1
        local.get 7
        call 72
        call 43
        local.tee 2
        call 37
        local.get 1
        local.get 2
        call 59
        block  ;; label = @3
          local.get 0
          i32.load offset=32
          call 13
          if  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=32
            call 13
            i32.store offset=84
            local.get 0
            i32.const 0
            i32.store offset=80
            local.get 0
            local.get 0
            i32.const 32
            i32.add
            i32.store offset=88
            loop  ;; label = @5
              local.get 0
              i32.const 16
              i32.add
              local.get 0
              i32.const 80
              i32.add
              call 69
              local.get 0
              i32.load offset=16
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              local.get 0
              i32.load offset=20
              call 72
              br 0 (;@5;)
            end
            unreachable
          end
          call 43
          local.tee 2
          call 37
          local.get 1
          local.get 2
          call 59
        end
        local.get 0
        i32.const 8
        i32.add
        call 30
        i32.const 1048600
        i32.const 13
        call 56
        local.get 1
        call 47
        i32.const 0
        call 85
        i64.const 0
        local.set 8
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=12
          local.tee 2
          call 13
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
          call 62
          br_if 0 (;@3;)
          local.get 0
          i64.load offset=80
          local.tee 8
          i64.const 56
          i64.shl
          local.get 8
          i64.const 40
          i64.shl
          i64.const 71776119061217280
          i64.and
          i64.or
          local.get 8
          i64.const 24
          i64.shl
          i64.const 280375465082880
          i64.and
          local.get 8
          i64.const 8
          i64.shl
          i64.const 1095216660480
          i64.and
          i64.or
          i64.or
          local.get 8
          i64.const 8
          i64.shr_u
          i64.const 4278190080
          i64.and
          local.get 8
          i64.const 24
          i64.shr_u
          i64.const 16711680
          i64.and
          i64.or
          local.get 8
          i64.const 40
          i64.shr_u
          i64.const 65280
          i64.and
          local.get 8
          i64.const 56
          i64.shr_u
          i64.or
          i64.or
          i64.or
          local.set 8
        end
        local.get 0
        local.get 3
        i32.store offset=92
        local.get 0
        local.get 8
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
        call 80
        br 1 (;@1;)
      end
    end
    call 50
    local.get 6
    call 49
    unreachable)
  (func (;111;) (type 0)
    (local i32)
    call 24
    i32.const 0
    call 65
    call 40
    local.tee 0
    call 31
    local.get 0
    call 17
    drop)
  (func (;112;) (type 0)
    call 24
    i32.const 1
    call 65
    i32.const 0
    call 54
    call 95
    call 87
    i64.extend_i32_u
    call 32)
  (func (;113;) (type 0)
    nop)
  (func (;114;) (type 0)
    i32.const 1049016
    i32.const 14
    call 0
    unreachable)
  (func (;115;) (type 6) (param i32 i32 i32)
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
  (global (;1;) i32 (i32.const 1049045))
  (global (;2;) i32 (i32.const 1049056))
  (export "memory" (memory 0))
  (export "init" (func 98))
  (export "echo_arguments" (func 99))
  (export "echo_arguments_without_storage" (func 100))
  (export "echo_caller" (func 101))
  (export "accept_funds" (func 102))
  (export "accept_funds_echo_payment" (func 103))
  (export "accept_funds_single_dcdt_transfer" (func 104))
  (export "reject_funds" (func 106))
  (export "retrieve_funds_with_transfer_exec" (func 107))
  (export "retrieve_funds" (func 108))
  (export "retrieve_multi_funds_async" (func 109))
  (export "burn_and_create_retrive_async" (func 110))
  (export "get_owner_address" (func 111))
  (export "call_counts" (func 112))
  (export "callBack" (func 113))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "DCDTNFTBurnDCDTLocalBurnDCDTNFTCreateincorrect number of DCDT transfersargument decode error (): too few argumentstoo many argumentswrong number of argumentsMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferinput too longManagedVec index out of rangeREWAstorage decode error: var argscall_countsaccept_fundsreject_fundsretrieve_fundsargstoken_paymentsopt_receive_funcopt_arg_to_echoecho_argumentsaccept_funds_echo_paymentDCDT transfer failed\00\00panic occurred")
  (data (;1;) (i32.const 1049032) "\9c\ff\ff\ff"))
