(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32) (result i32)))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i64)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32) (result i64)))
  (type (;13;) (func (param i64 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32) (result i64)))
  (type (;15;) (func (param i64)))
  (type (;16;) (func (result i64)))
  (type (;17;) (func (param i64 i32 i32) (result i32)))
  (type (;18;) (func (param i32 i32 i32 i64 i32 i32) (result i32)))
  (type (;19;) (func (param i32 i32 i64 i32 i64 i32 i32) (result i32)))
  (type (;20;) (func (param i32 i64 i32)))
  (import "env" "bigIntSetInt64" (func (;0;) (type 8)))
  (import "env" "bigIntAdd" (func (;1;) (type 10)))
  (import "env" "signalError" (func (;2;) (type 1)))
  (import "env" "mBufferNew" (func (;3;) (type 3)))
  (import "env" "mBufferAppend" (func (;4;) (type 5)))
  (import "env" "bigIntGetUnsignedArgument" (func (;5;) (type 1)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;6;) (type 5)))
  (import "env" "managedSCAddress" (func (;7;) (type 2)))
  (import "env" "managedExecuteOnDestContext" (func (;8;) (type 13)))
  (import "env" "cleanReturnData" (func (;9;) (type 0)))
  (import "env" "managedCaller" (func (;10;) (type 2)))
  (import "env" "bigIntGetCallValue" (func (;11;) (type 2)))
  (import "env" "mBufferGetLength" (func (;12;) (type 4)))
  (import "env" "managedGetMultiDCDTCallValue" (func (;13;) (type 2)))
  (import "env" "mBufferGetArgument" (func (;14;) (type 5)))
  (import "env" "mBufferAppendBytes" (func (;15;) (type 6)))
  (import "env" "managedSignalError" (func (;16;) (type 2)))
  (import "env" "smallIntGetUnsignedArgument" (func (;17;) (type 14)))
  (import "env" "getNumArguments" (func (;18;) (type 3)))
  (import "env" "smallIntFinishUnsigned" (func (;19;) (type 15)))
  (import "env" "mBufferFinish" (func (;20;) (type 4)))
  (import "env" "getGasLeft" (func (;21;) (type 16)))
  (import "env" "mBufferSetBytes" (func (;22;) (type 6)))
  (import "env" "mBufferStorageLoad" (func (;23;) (type 5)))
  (import "env" "mBufferStorageStore" (func (;24;) (type 5)))
  (import "env" "managedAsyncCall" (func (;25;) (type 7)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func (;26;) (type 11)))
  (import "env" "managedWriteLog" (func (;27;) (type 1)))
  (import "env" "checkNoPayment" (func (;28;) (type 0)))
  (import "env" "bigIntFinishUnsigned" (func (;29;) (type 2)))
  (import "env" "managedTransferValueExecute" (func (;30;) (type 11)))
  (import "env" "mBufferToBigIntUnsigned" (func (;31;) (type 5)))
  (import "env" "managedOwnerAddress" (func (;32;) (type 2)))
  (import "env" "mBufferGetByteSlice" (func (;33;) (type 9)))
  (func (;34;) (type 4) (param i32) (result i32)
    (local i32)
    call 35
    local.tee 1
    i64.const 0
    call 0
    local.get 1
    local.get 1
    local.get 0
    call 1
    local.get 1)
  (func (;35;) (type 3) (result i32)
    (local i32)
    i32.const 1049216
    i32.const 1049216
    i32.load
    i32.const 1
    i32.sub
    local.tee 0
    i32.store
    local.get 0)
  (func (;36;) (type 4) (param i32) (result i32)
    (local i32)
    call 3
    local.tee 1
    local.get 0
    call 4
    drop
    local.get 1)
  (func (;37;) (type 4) (param i32) (result i32)
    local.get 0
    call 35
    local.tee 0
    call 5
    local.get 0)
  (func (;38;) (type 1) (param i32 i32)
    (local i32)
    call 35
    local.tee 2
    local.get 0
    call 6
    drop
    local.get 1
    local.get 2
    i32.store)
  (func (;39;) (type 1) (param i32 i32)
    local.get 0
    local.get 1
    call 2
    unreachable)
  (func (;40;) (type 3) (result i32)
    (local i32)
    call 35
    local.tee 0
    i32.const 1049200
    i32.const 0
    call 22
    drop
    local.get 0)
  (func (;41;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=16
    local.set 7
    local.get 1
    i32.load offset=12
    local.set 4
    local.get 1
    i32.load offset=8
    local.set 5
    call 44
    local.set 6
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=24
            local.tee 3
            call 53
            br_table 3 (;@1;) 1 (;@3;) 0 (;@4;)
          end
          local.get 2
          local.get 3
          i32.store offset=12
          call 40
          local.set 1
          call 40
          drop
          local.get 1
          local.get 5
          call 36
          call 63
          local.get 3
          call 53
          local.set 5
          call 40
          local.tee 6
          local.get 5
          i64.extend_i32_u
          call 78
          local.get 1
          local.get 6
          call 63
          local.get 2
          local.get 3
          call 12
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
            call 79
            local.get 2
            i64.load offset=32
            i64.eqz
            if  ;; label = @5
              local.get 4
              call 80
              i32.eqz
              if  ;; label = @6
                local.get 1
                local.get 4
                call 76
              end
              call 49
              local.set 5
              i32.const 1048733
              i32.const 20
              call 60
              local.set 4
              local.get 1
              local.get 7
              call 74
              br 3 (;@2;)
            else
              local.get 2
              i32.load offset=52
              local.get 2
              i64.load offset=40
              local.set 9
              local.get 2
              i32.load offset=48
              local.set 3
              call 40
              drop
              local.get 1
              local.get 3
              call 36
              call 63
              local.get 1
              local.get 9
              call 77
              local.get 2
              call 40
              i32.store offset=60
              local.get 2
              i32.const 60
              i32.add
              call 38
              local.get 1
              local.get 2
              i32.load offset=60
              call 63
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
        local.tee 3
        i32.const 16
        call 54
        local.set 1
        local.get 2
        i32.const 0
        i32.store offset=16
        local.get 3
        local.get 2
        i32.const 16
        i32.add
        local.tee 8
        call 55
        local.set 6
        local.get 3
        local.get 8
        call 56
        local.set 9
        local.get 2
        i32.const 32
        i32.add
        local.get 2
        i32.const 16
        i32.add
        call 55
        local.set 3
        block (result i32)  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.eqz
              if  ;; label = @6
                call 40
                local.tee 1
                local.get 6
                call 76
                block  ;; label = @7
                  local.get 9
                  i64.eqz
                  if  ;; label = @8
                    local.get 1
                    local.get 3
                    call 75
                    local.get 4
                    call 80
                    i32.eqz
                    br_if 1 (;@7;)
                    br 4 (;@4;)
                  end
                  local.get 1
                  local.get 9
                  call 77
                  local.get 1
                  local.get 3
                  call 75
                  call 40
                  drop
                  local.get 1
                  local.get 5
                  call 36
                  call 63
                  local.get 4
                  call 80
                  br_if 2 (;@5;)
                  local.get 1
                  local.get 4
                  call 76
                  br 2 (;@5;)
                end
                local.get 1
                local.get 4
                call 76
                br 2 (;@4;)
              end
              i32.const 1048794
              i32.const 29
              call 2
              unreachable
            end
            call 49
            local.set 5
            i32.const 1048753
            i32.const 15
            call 60
            br 1 (;@3;)
          end
          i32.const 1048768
          i32.const 12
          call 60
        end
        local.set 4
        local.get 1
        local.get 7
        call 74
      end
      local.set 7
      call 44
      local.set 6
    end
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 7
    i32.store offset=12
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 6
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func (;42;) (type 2) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call 25
    unreachable)
  (func (;43;) (type 17) (param i64 i32 i32) (result i32)
    i32.const -25
    call 7
    local.get 0
    i32.const -25
    call 44
    local.get 1
    local.get 2
    call 35
    local.tee 1
    call 8
    drop
    call 9
    local.get 1)
  (func (;44;) (type 3) (result i32)
    (local i32)
    call 35
    local.tee 0
    i64.const 0
    call 0
    local.get 0)
  (func (;45;) (type 1) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    call 40
    local.set 3
    call 40
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
    call 41
    local.get 2
    call 42
    unreachable)
  (func (;46;) (type 18) (param i32 i32 i32 i64 i32 i32) (result i32)
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call 47)
  (func (;47;) (type 19) (param i32 i32 i64 i32 i64 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 7
    global.set 0
    call 40
    local.set 8
    local.get 1
    call 36
    local.set 1
    local.get 7
    local.get 3
    call 34
    i32.store offset=12
    local.get 7
    local.get 2
    i64.store
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 8
    local.get 7
    call 81
    local.get 0
    local.get 8
    local.get 4
    local.get 5
    local.get 6
    call 26
    local.set 0
    local.get 7
    i32.const 16
    i32.add
    global.set 0
    i32.const 1048857
    i32.const 0
    local.get 0
    select)
  (func (;48;) (type 3) (result i32)
    (local i32)
    call 35
    local.tee 0
    call 10
    local.get 0)
  (func (;49;) (type 3) (result i32)
    (local i32)
    call 35
    local.tee 0
    call 7
    local.get 0)
  (func (;50;) (type 3) (result i32)
    (local i32)
    i32.const 1049224
    i32.load8_u
    local.tee 0
    if  ;; label = @1
      i32.const -11
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 1049224
    i32.const 1
    i32.store8
    i32.const -11
    call 11
    i32.const -11)
  (func (;51;) (type 2) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1
    local.set 3
    block  ;; label = @1
      call 52
      local.tee 4
      call 53
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 4
        call 12
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
          local.tee 2
          i32.const 16
          call 54
          drop
          local.get 1
          i32.const 0
          i32.store offset=28
          i32.const 1
          local.set 5
          local.get 3
          local.get 2
          local.get 1
          i32.const 28
          i32.add
          local.tee 3
          call 55
          local.set 11
          local.get 2
          local.get 3
          call 56
          local.set 13
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call 55
          local.set 12
          i32.const 0
          local.set 3
          local.get 9
          local.set 2
          br_if 0 (;@3;)
        end
        call 57
        unreachable
      end
      i32.const 1048613
      i32.const 34
      call 2
      unreachable
    end
    local.get 0
    local.get 12
    i32.store offset=12
    local.get 0
    local.get 11
    i32.store offset=8
    local.get 0
    local.get 13
    i64.store
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;52;) (type 3) (result i32)
    (local i32)
    i32.const 1049228
    i32.load8_u
    local.tee 0
    if  ;; label = @1
      i32.const -21
      i32.const 2147483647
      local.get 0
      select
      return
    end
    i32.const 1049228
    i32.const 1
    i32.store8
    i32.const -21
    call 13
    i32.const -21)
  (func (;53;) (type 4) (param i32) (result i32)
    local.get 0
    call 12
    i32.const 4
    i32.shr_u)
  (func (;54;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call 33
    i32.const 0
    i32.ne)
  (func (;55;) (type 5) (param i32 i32) (result i32)
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
    call 84
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 85
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
    i32.const 24
    i32.shl
    local.get 0
    i32.const 65280
    i32.and
    i32.const 8
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
  (func (;56;) (type 12) (param i32 i32) (result i64)
    (local i64 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    local.get 0
    local.get 1
    i32.load
    local.tee 0
    local.get 0
    i32.const 8
    i32.add
    local.tee 0
    call 84
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    local.get 3
    i32.load
    local.get 3
    i32.load offset=4
    call 85
    local.get 1
    local.get 0
    i32.store
    local.get 3
    i64.load offset=8
    local.set 2
    local.get 3
    i32.const 16
    i32.add
    global.set 0
    local.get 2
    i64.const 56
    i64.shl
    local.get 2
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 2
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 2
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
    i64.or
    i64.or
    local.get 2
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 2
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 2
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 2
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or)
  (func (;57;) (type 0)
    call 115
    unreachable)
  (func (;58;) (type 4) (param i32) (result i32)
    local.get 0
    call 35
    local.tee 0
    call 14
    drop
    local.get 0)
  (func (;59;) (type 7) (param i32 i32 i32 i32)
    (local i32)
    i32.const 1048647
    i32.const 23
    call 60
    local.tee 4
    local.get 0
    local.get 1
    call 15
    drop
    local.get 4
    i32.const 1048670
    i32.const 3
    call 15
    drop
    local.get 4
    local.get 2
    local.get 3
    call 15
    drop
    local.get 4
    call 16
    unreachable)
  (func (;60;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call 35
    local.tee 2
    local.get 0
    local.get 1
    call 22
    drop
    local.get 2)
  (func (;61;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    call 40
    local.set 3
    loop  ;; label = @1
      local.get 0
      i32.load
      i32.const 1049220
      i32.load
      i32.ge_s
      i32.eqz
      if  ;; label = @2
        local.get 3
        local.get 0
        local.get 1
        local.get 2
        call 62
        call 63
        br 1 (;@1;)
      end
    end
    local.get 3)
  (func (;62;) (type 6) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call 64
    call 58)
  (func (;63;) (type 1) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.const 24
    i32.shl
    local.get 1
    i32.const 65280
    i32.and
    i32.const 8
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
    call 15
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;64;) (type 6) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 3
    i32.const 1049220
    i32.load
    i32.ge_s
    if  ;; label = @1
      local.get 1
      local.get 2
      i32.const 1048673
      i32.const 17
      call 59
      unreachable
    end
    local.get 0
    local.get 3
    i32.const 1
    i32.add
    i32.store
    local.get 3)
  (func (;65;) (type 7) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const 1049220
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
      call 62
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store)
  (func (;66;) (type 2) (param i32)
    local.get 0
    i32.const 1049220
    i32.load
    i32.ge_s
    if  ;; label = @1
      return
    end
    i32.const 1048690
    i32.const 18
    call 2
    unreachable)
  (func (;67;) (type 2) (param i32)
    call 18
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048708
    i32.const 25
    call 2
    unreachable)
  (func (;68;) (type 2) (param i32)
    local.get 0
    i32.const 1049220
    i32.load
    i32.le_s
    if  ;; label = @1
      return
    end
    i32.const 1048673
    i32.const 17
    call 2
    unreachable)
  (func (;69;) (type 0)
    i32.const 1049220
    call 18
    i32.store)
  (func (;70;) (type 2) (param i32)
    local.get 0
    call 71
    i64.extend_i32_u
    call 19)
  (func (;71;) (type 4) (param i32) (result i32)
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
    call 35
    local.tee 0
    call 23
    drop
    block  ;; label = @1
      local.get 0
      call 12
      local.tee 2
      i32.const 9
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 1
      i32.const 8
      i32.add
      local.tee 0
      local.get 2
      call 54
      drop
      local.get 0
      local.get 2
      call 86
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
    call 60
    local.tee 0
    i32.const 1048780
    i32.const 14
    call 15
    drop
    local.get 0
    call 16
    unreachable)
  (func (;72;) (type 2) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load
    call 12
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
      call 73
      local.get 1
      i32.load offset=8
      if  ;; label = @2
        local.get 1
        i32.load offset=12
        call 20
        drop
        br 1 (;@1;)
      end
    end
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;73;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 1
    i32.load
    local.tee 2
    i32.const 4
    i32.add
    local.tee 4
    local.get 1
    i32.load offset=4
    i32.gt_u
    if (result i32)  ;; label = @1
      i32.const 0
    else
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
      call 82
      drop
      local.get 3
      i32.load offset=12
      local.set 2
      local.get 1
      local.get 4
      i32.store
      local.get 2
      i32.const 24
      i32.shl
      local.get 2
      i32.const 65280
      i32.and
      i32.const 8
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
  (func (;74;) (type 5) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 4
    drop
    local.get 0)
  (func (;75;) (type 1) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    call 40
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call 38
    local.get 0
    local.get 2
    i32.load offset=12
    call 63
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;76;) (type 1) (param i32 i32)
    call 40
    drop
    local.get 0
    local.get 1
    call 36
    call 63)
  (func (;77;) (type 8) (param i32 i64)
    (local i32)
    call 40
    local.tee 2
    local.get 1
    call 78
    local.get 0
    local.get 2
    call 63)
  (func (;78;) (type 8) (param i32 i64)
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
    call 88
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 22
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;79;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    local.get 1
    i32.load
    local.tee 4
    i32.const 16
    i32.add
    local.tee 5
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
      local.get 4
      local.get 2
      i32.const 8
      i32.add
      local.tee 3
      i32.const 16
      call 82
      drop
      local.get 2
      i32.const 0
      i32.store offset=28
      local.get 3
      local.get 2
      i32.const 28
      i32.add
      local.tee 6
      call 55
      local.set 4
      local.get 3
      local.get 6
      call 56
      local.set 7
      local.get 0
      i32.const 20
      i32.add
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call 55
      i32.store
      local.get 0
      i32.const 16
      i32.add
      local.get 4
      i32.store
      local.get 0
      local.get 7
      i64.store offset=8
      local.get 1
      local.get 5
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
  (func (;80;) (type 4) (param i32) (result i32)
    local.get 0
    call 12
    i32.eqz)
  (func (;81;) (type 1) (param i32 i32)
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
    i32.const 65280
    i32.and
    i32.const 8
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
    i32.store
    local.get 3
    local.get 1
    i32.load offset=12
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 65280
    i32.and
    i32.const 8
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
    i32.store offset=12
    local.get 3
    local.get 1
    i64.load
    local.tee 4
    i64.const 56
    i64.shl
    local.get 4
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 4
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 4
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
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
    call 15
    drop
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;82;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 54)
  (func (;83;) (type 10) (param i32 i32 i32)
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
    call 82
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
    i32.const 24
    i32.shl
    local.get 1
    i32.const 65280
    i32.and
    i32.const 8
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
  (func (;84;) (type 7) (param i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_u
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
      call 57
      unreachable
    end
    call 57
    unreachable)
  (func (;85;) (type 7) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 1
      local.tee 3
      i32.const 15
      i32.gt_u
      if  ;; label = @2
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 5
        i32.add
        local.set 4
        local.get 5
        if  ;; label = @3
          local.get 2
          local.set 1
          loop  ;; label = @4
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
            local.get 4
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 4
        local.get 3
        local.get 5
        i32.sub
        local.tee 3
        i32.const -4
        i32.and
        local.tee 6
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 2
          local.get 5
          i32.add
          local.tee 5
          i32.const 3
          i32.and
          local.tee 1
          if  ;; label = @4
            local.get 6
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 5
            i32.const -4
            i32.and
            local.tee 7
            i32.const 4
            i32.add
            local.set 2
            i32.const 0
            local.get 1
            i32.const 3
            i32.shl
            local.tee 8
            i32.sub
            i32.const 24
            i32.and
            local.set 9
            local.get 7
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 4
              local.get 1
              local.get 8
              i32.shr_u
              local.get 2
              i32.load
              local.tee 1
              local.get 9
              i32.shl
              i32.or
              i32.store
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 4
              i32.const 4
              i32.add
              local.tee 4
              local.get 0
              i32.lt_u
              br_if 0 (;@5;)
            end
            br 1 (;@3;)
          end
          local.get 6
          i32.const 0
          i32.le_s
          br_if 0 (;@3;)
          local.get 5
          local.set 2
          loop  ;; label = @4
            local.get 4
            local.get 2
            i32.load
            i32.store
            local.get 2
            i32.const 4
            i32.add
            local.set 2
            local.get 4
            i32.const 4
            i32.add
            local.tee 4
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 3
        local.get 5
        local.get 6
        i32.add
        local.set 2
      end
      local.get 3
      if  ;; label = @2
        local.get 0
        local.get 3
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          local.get 1
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      return
    end
    call 57
    unreachable)
  (func (;86;) (type 12) (param i32 i32) (result i64)
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
        i32.const 1
        i32.sub
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
  (func (;87;) (type 1) (param i32 i32)
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
    call 88
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 60
    call 24
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;88;) (type 20) (param i32 i64 i32)
    (local i32 i32)
    local.get 2
    local.get 1
    i64.const 56
    i64.shl
    local.get 1
    i64.const 65280
    i64.and
    i64.const 40
    i64.shl
    i64.or
    local.get 1
    i64.const 16711680
    i64.and
    i64.const 24
    i64.shl
    local.get 1
    i64.const 4278190080
    i64.and
    i64.const 8
    i64.shl
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
        i32.const 1049200
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const 8
          i32.ne
          if  ;; label = @4
            local.get 2
            local.get 3
            i32.add
            local.tee 4
            i32.load8_u
            if  ;; label = @5
              local.get 3
              i32.const 9
              i32.ge_u
              br_if 3 (;@2;)
              i32.const 8
              local.get 3
              i32.sub
              local.set 3
              br 4 (;@1;)
            else
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              br 2 (;@3;)
            end
            unreachable
          end
        end
        call 57
        unreachable
      end
      call 57
      unreachable
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store)
  (func (;89;) (type 1) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load
    call 12
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
      call 73
      local.get 2
      i32.load offset=8
      if  ;; label = @2
        local.get 2
        i32.load offset=12
        local.set 1
        call 40
        drop
        local.get 0
        local.get 1
        call 36
        call 63
        br 1 (;@1;)
      end
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;90;) (type 5) (param i32 i32) (result i32)
    (local i32)
    call 40
    local.tee 2
    local.get 0
    local.get 1
    call 60
    call 63
    local.get 2)
  (func (;91;) (type 4) (param i32) (result i32)
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
    call 83
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
    call 59
    unreachable)
  (func (;92;) (type 4) (param i32) (result i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1048891
    i32.const 11
    call 60
    local.set 2
    local.get 1
    local.get 0
    call 12
    local.tee 3
    i32.const 24
    i32.shl
    local.get 3
    i32.const 65280
    i32.and
    i32.const 8
    i32.shl
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
    call 15
    drop
    local.get 2
    local.get 0
    call 4
    drop
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 2)
  (func (;93;) (type 1) (param i32 i32)
    (local i32)
    i32.const 1048902
    i32.const 12
    call 90
    local.tee 2
    local.get 0
    call 75
    local.get 2
    local.get 1
    call 89
    local.get 2
    call 40
    call 27)
  (func (;94;) (type 3) (result i32)
    i32.const 1048940
    i32.const 31
    call 60)
  (func (;95;) (type 3) (result i32)
    i32.const 1048971
    i32.const 34
    call 60)
  (func (;96;) (type 3) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 0
    global.set 0
    local.get 0
    call 52
    local.tee 2
    i32.store offset=12
    call 40
    local.set 1
    local.get 0
    local.get 2
    call 12
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
      call 79
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
        call 40
        drop
        local.get 1
        local.get 3
        call 36
        call 63
        local.get 1
        local.get 4
        call 77
        local.get 0
        call 40
        i32.store offset=60
        local.get 0
        i32.const 60
        i32.add
        call 38
        local.get 1
        local.get 0
        i32.load offset=60
        call 63
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const -64
    i32.sub
    global.set 0
    local.get 1)
  (func (;97;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 28
    call 69
    i32.const 0
    call 68
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 1049072
    i32.const 15
    call 65
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=12
    call 66
    i32.eqz
    if  ;; label = @1
      local.get 1
      call 20
      drop
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;98;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 28
    call 69
    i32.const 0
    call 68
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 1049005
    i32.const 4
    call 61
    local.set 1
    local.get 0
    i32.load offset=12
    call 66
    i32.const 1049087
    i32.const 14
    call 60
    call 92
    local.tee 2
    local.get 2
    call 71
    i32.const 1
    i32.add
    call 87
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call 72
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;99;) (type 0)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 28
    call 69
    i32.const 0
    call 68
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 1049005
    i32.const 4
    call 61
    local.set 1
    local.get 0
    i32.load offset=12
    call 66
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    call 72
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;100;) (type 0)
    call 28
    i32.const 0
    call 67
    call 48
    call 20
    drop)
  (func (;101;) (type 0)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 67
    local.get 0
    call 96
    i32.store offset=12
    call 50
    local.get 0
    i32.const 12
    i32.add
    call 93
    i32.const 1048902
    i32.const 12
    call 60
    call 92
    local.tee 1
    local.get 1
    call 71
    i32.const 1
    i32.add
    call 87
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;102;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 67
    call 50
    local.set 1
    local.get 0
    call 96
    i32.store offset=16
    local.get 1
    local.get 0
    i32.const 16
    i32.add
    call 93
    i32.const 1049153
    i32.const 25
    call 60
    call 92
    local.tee 2
    local.get 2
    call 71
    i32.const 1
    i32.add
    call 87
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 0
    i32.load offset=16
    local.tee 2
    i32.store offset=12
    local.get 1
    call 29
    local.get 2
    call 12
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
      call 73
      local.get 0
      i32.load
      if  ;; label = @2
        local.get 0
        i32.load offset=4
        call 20
        drop
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 32
    i32.add
    global.set 0)
  (func (;103;) (type 0)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 67
    local.get 0
    call 51
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;104;) (type 0)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 67
    local.get 0
    call 96
    i32.store offset=12
    call 50
    local.set 2
    i32.const 1048914
    i32.const 12
    call 90
    local.tee 1
    local.get 2
    call 75
    local.get 1
    local.get 0
    i32.const 12
    i32.add
    call 89
    local.get 1
    call 40
    call 27
    i32.const 1048914
    i32.const 12
    call 39
    unreachable)
  (func (;105;) (type 0)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 52
    drop
    call 69
    i32.const 2
    call 68
    i32.const 0
    call 58
    local.set 1
    i32.const 1
    call 37
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    local.get 0
    i32.const 12
    i32.add
    i32.const 1049056
    i32.const 16
    call 65
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=12
    call 66
    call 48
    local.get 1
    local.get 2
    i64.const 50000000
    local.get 4
    if (result i32)  ;; label = @1
      call 40
    else
      local.get 3
    end
    call 40
    call 46
    if  ;; label = @1
      i32.const 1049178
      i32.const 20
      call 39
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;106;) (type 0)
    (local i32 i32 i32 i32 i32 i64)
    call 28
    i32.const 3
    call 67
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 58
    local.tee 1
    call 12
    i32.const 4
    i32.eq
    if  ;; label = @1
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 1
      i32.const 0
      local.get 0
      i32.const 12
      i32.add
      i32.const 4
      call 54
      drop
      i32.const 2147483646
      local.get 1
      local.get 0
      i32.load offset=12
      i32.const 1145849669
      i32.eq
      select
      local.set 1
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0
    i32.const 1
    call 17
    local.set 5
    i32.const 2
    call 37
    local.set 3
    i32.const 1048926
    i32.const 14
    call 90
    local.set 0
    call 40
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const 2147483646
      i32.ne
      if  ;; label = @2
        local.get 1
        call 36
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1048823
      i32.const 4
      call 22
      drop
    end
    local.get 0
    local.get 2
    call 63
    local.get 0
    local.get 5
    call 77
    local.get 0
    local.get 3
    call 75
    local.get 0
    call 40
    call 27
    call 48
    local.set 2
    local.get 1
    i32.const 2147483646
    i32.ne
    if  ;; label = @1
      global.get 0
      i32.const 80
      i32.sub
      local.tee 0
      global.set 0
      call 40
      local.set 4
      local.get 0
      call 40
      i32.store offset=16
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      i64.const -1
      i64.store
      local.get 0
      local.get 3
      i32.store offset=76
      local.get 0
      local.get 5
      i64.store offset=64
      local.get 0
      local.get 1
      i32.store offset=72
      global.get 0
      i32.const 16
      i32.sub
      local.tee 1
      global.set 0
      call 40
      local.set 2
      local.get 0
      i32.const 32
      i32.add
      local.tee 3
      local.get 0
      i64.load
      i64.store
      local.get 3
      i32.const 16
      i32.add
      local.get 0
      i32.const 16
      i32.add
      i64.load
      i64.store
      local.get 3
      i32.const 8
      i32.add
      local.get 0
      i32.const 8
      i32.add
      i64.load
      i64.store
      local.get 1
      local.get 0
      i32.const -64
      i32.sub
      local.tee 4
      i64.load offset=8
      i64.store offset=8
      local.get 1
      local.get 4
      i64.load
      i64.store
      local.get 2
      local.get 1
      call 81
      local.get 3
      local.get 2
      i32.store offset=24
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      local.get 0
      local.get 3
      call 41
      local.get 0
      call 42
      unreachable
    end
    local.get 2
    local.get 3
    i64.const 0
    call 40
    call 40
    call 30
    drop)
  (func (;107;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    call 28
    call 69
    i32.const 0
    call 68
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    i32.const 1049042
    i32.const 14
    call 61
    local.set 1
    local.get 0
    i32.load offset=16
    call 66
    call 48
    local.set 5
    call 40
    local.set 3
    local.get 1
    call 12
    local.set 2
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    local.get 2
    i32.const 2
    i32.shr_u
    local.tee 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    i32.const 0
    local.set 1
    loop  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        i32.lt_u
        if  ;; label = @3
          local.get 0
          call 91
          call 36
          local.set 6
          local.get 0
          call 91
          local.set 1
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 1
          call 12
          local.tee 2
          i32.const 9
          i32.lt_u
          br_if 1 (;@2;)
          i32.const 1048849
          i32.const 8
          i32.const 1048780
          i32.const 14
          call 59
          unreachable
        end
        local.get 5
        local.get 3
        call 45
        unreachable
      end
      local.get 1
      i32.const 0
      local.get 0
      i32.const 16
      i32.add
      local.tee 4
      local.get 2
      call 54
      drop
      local.get 4
      local.get 2
      call 86
      local.set 7
      local.get 0
      call 91
      call 35
      local.tee 1
      call 31
      drop
      local.get 0
      local.get 1
      i32.store offset=28
      local.get 0
      local.get 7
      i64.store offset=16
      local.get 0
      local.get 6
      i32.store offset=24
      local.get 3
      local.get 4
      call 81
      local.get 0
      i32.load offset=4
      local.set 2
      local.get 0
      i32.load offset=8
      local.set 1
      br 0 (;@1;)
    end
    unreachable)
  (func (;108;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 67
    local.get 0
    call 52
    local.tee 1
    i32.store offset=16
    local.get 0
    call 40
    local.tee 3
    i32.store offset=20
    local.get 3
    call 40
    call 63
    call 40
    local.set 6
    local.get 0
    local.get 1
    call 12
    i32.store offset=28
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    local.get 0
    i32.const 16
    i32.add
    i32.store offset=32
    loop  ;; label = @1
      local.get 0
      i32.const 40
      i32.add
      local.get 0
      i32.const 24
      i32.add
      call 79
      local.get 0
      i64.load offset=40
      i64.eqz
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.load offset=60
        local.set 3
        local.get 0
        i64.load offset=48
        local.set 8
        local.get 0
        i32.load offset=56
        local.set 5
        call 40
        local.tee 1
        local.get 5
        call 76
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
          call 77
          i32.const 11
          local.set 4
          i32.const 1048576
        end
        local.set 2
        local.get 1
        local.get 3
        call 75
        call 21
        local.get 2
        local.get 4
        call 60
        local.get 1
        call 43
        drop
        call 40
        local.set 2
        call 44
        local.set 4
        call 40
        local.set 7
        call 40
        local.tee 1
        local.get 5
        call 76
        local.get 1
        local.get 3
        call 75
        local.get 1
        local.get 2
        call 76
        local.get 1
        local.get 4
        call 75
        local.get 1
        local.get 7
        call 76
        call 40
        local.tee 2
        i32.const 1049200
        i32.const 0
        call 22
        drop
        local.get 1
        local.get 2
        call 63
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          call 12
          if  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=20
            call 12
            i32.store offset=68
            local.get 0
            i32.const 0
            i32.store offset=64
            local.get 0
            local.get 0
            i32.const 20
            i32.add
            i32.store offset=72
            loop  ;; label = @5
              local.get 0
              i32.const 8
              i32.add
              local.get 0
              i32.const -64
              i32.sub
              call 73
              local.get 0
              i32.load offset=8
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              local.get 0
              i32.load offset=12
              call 76
              br 0 (;@5;)
            end
            unreachable
          end
          call 40
          local.tee 2
          i32.const 1049200
          i32.const 0
          call 22
          drop
          local.get 1
          local.get 2
          call 63
        end
        local.get 0
        call 21
        i32.const 1048600
        i32.const 13
        call 60
        local.get 1
        call 43
        i32.const 0
        call 83
        i64.const 0
        local.set 8
        block  ;; label = @3
          local.get 0
          i32.load
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=4
          local.tee 2
          call 12
          local.tee 1
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          i64.const 0
          i64.store offset=64
          local.get 2
          i32.const 0
          local.get 0
          local.get 1
          i32.sub
          i32.const 72
          i32.add
          local.get 1
          call 54
          br_if 0 (;@3;)
          local.get 0
          i64.load offset=64
          local.tee 8
          i64.const 56
          i64.shl
          local.get 8
          i64.const 65280
          i64.and
          i64.const 40
          i64.shl
          i64.or
          local.get 8
          i64.const 16711680
          i64.and
          i64.const 24
          i64.shl
          local.get 8
          i64.const 4278190080
          i64.and
          i64.const 8
          i64.shl
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
        i32.store offset=76
        local.get 0
        local.get 8
        i64.store offset=64
        local.get 0
        local.get 5
        i32.store offset=72
        local.get 6
        local.get 0
        i32.const -64
        i32.sub
        call 81
        br 1 (;@1;)
      end
    end
    call 48
    local.get 6
    call 45
    unreachable)
  (func (;109;) (type 0)
    (local i32)
    call 28
    i32.const 0
    call 67
    call 35
    local.tee 0
    call 32
    local.get 0
    call 20
    drop)
  (func (;110;) (type 0)
    call 28
    i32.const 1
    call 67
    i32.const 0
    call 58
    call 92
    call 70)
  (func (;111;) (type 0)
    call 28
    i32.const 0
    call 67
    call 95
    call 70)
  (func (;112;) (type 0)
    call 28
    i32.const 0
    call 67
    call 94
    call 70)
  (func (;113;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 69
    i32.const 0
    call 68
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    i32.const 8
    i32.add
    local.set 2
    local.get 0
    i32.const 28
    i32.add
    local.tee 1
    i32.load
    i32.const 1049220
    i32.load
    i32.ge_s
    if (result i64)  ;; label = @1
      i64.const 1
    else
      local.get 1
      i32.const 1049028
      i32.const 14
      call 64
      call 17
      local.set 10
      i64.const 0
    end
    local.set 11
    local.get 2
    local.get 10
    i64.store offset=8
    local.get 2
    local.get 11
    i64.store
    local.get 0
    i64.load offset=16
    local.set 12
    local.get 0
    i32.load offset=8
    local.get 0
    local.get 0
    i32.load offset=28
    i32.store offset=32
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.const 32
      i32.add
      local.tee 2
      local.tee 4
      i32.load
      i32.const 1049220
      i32.load
      i32.ge_s
      if  ;; label = @2
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      local.get 4
      i32.const 1049009
      i32.const 19
      call 64
      call 37
      local.set 4
    end
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 0
    i32.load offset=4
    local.set 8
    local.get 0
    i32.load
    local.set 1
    local.get 0
    i32.load offset=32
    call 66
    local.get 2
    call 51
    call 48
    local.set 9
    i32.const 1049200
    i32.const 0
    call 60
    local.set 4
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.eqz
      if  ;; label = @2
        local.get 0
        i64.load offset=32
        local.set 10
        local.get 0
        i32.load offset=40
        local.set 2
        call 95
        local.tee 1
        local.get 1
        call 71
        i32.const 1
        i32.add
        call 87
        loop  ;; label = @3
          block  ;; label = @4
            local.get 12
            i64.eqz
            i32.eqz
            if  ;; label = @5
              call 94
              local.tee 1
              local.get 1
              call 71
              i32.const 1
              i32.add
              call 87
              local.get 9
              call 36
              local.set 5
              local.get 4
              call 36
              local.set 6
              call 40
              local.set 7
              local.get 2
              call 36
              local.set 3
              local.get 8
              call 34
              local.set 1
              call 21
              i64.const 1
              i64.shr_u
              local.set 11
              local.get 3
              i32.const 2147483646
              i32.ne
              if  ;; label = @6
                local.get 10
                i64.eqz
                if  ;; label = @7
                  local.get 5
                  local.get 3
                  local.get 1
                  local.get 11
                  local.get 6
                  local.get 7
                  call 46
                  drop
                  br 3 (;@4;)
                end
                local.get 5
                local.get 3
                local.get 10
                local.get 1
                local.get 11
                local.get 6
                local.get 7
                call 47
                drop
                br 2 (;@4;)
              end
              local.get 5
              local.get 1
              local.get 11
              local.get 6
              local.get 7
              call 30
              drop
              br 1 (;@4;)
            end
            local.get 0
            i32.const 48
            i32.add
            global.set 0
            return
          end
          local.get 12
          i64.const 1
          i64.sub
          local.set 12
          br 0 (;@3;)
        end
        unreachable
      end
      i32.const 1049101
      i32.const 33
      call 39
      unreachable
    end
    i32.const 1049134
    i32.const 19
    call 39
    unreachable)
  (func (;114;) (type 0)
    nop)
  (func (;115;) (type 0)
    i32.const 1049200
    i32.const 14
    call 2
    unreachable)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1049229))
  (global (;2;) i32 (i32.const 1049232))
  (export "memory" (memory 0))
  (export "init" (func 97))
  (export "echo_arguments" (func 98))
  (export "echo_arguments_without_storage" (func 99))
  (export "echo_caller" (func 100))
  (export "accept_funds" (func 101))
  (export "accept_funds_echo_payment" (func 102))
  (export "accept_funds_single_dcdt_transfer" (func 103))
  (export "reject_funds" (func 104))
  (export "retrieve_funds_with_transfer_exec" (func 105))
  (export "retrieve_funds" (func 106))
  (export "retrieve_multi_funds_async" (func 107))
  (export "burn_and_create_retrive_async" (func 108))
  (export "get_owner_address" (func 109))
  (export "call_counts" (func 110))
  (export "num_called_retrieve_funds_promises" (func 111))
  (export "num_async_calls_sent_from_child" (func 112))
  (export "retrieve_funds_promises" (func 113))
  (export "callBack" (func 114))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "DCDTNFTBurnDCDTLocalBurnDCDTNFTCreateincorrect number of DCDT transfersargument decode error (): too few argumentstoo many argumentswrong number of argumentsMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferinput too longManagedVec index out of rangeREWAstorage decode error: var argsmultiTransferDCDTNFTExecute failedcall_countsaccept_fundsreject_fundsretrieve_fundsnum_async_calls_sent_from_childnum_called_retrieve_funds_promisesargsback_transfer_valueback_transferstoken_paymentsopt_receive_funcopt_arg_to_echoecho_argumentsValue for parent callback is NoneNr of calls is Noneaccept_funds_echo_paymentDCDT transfer failed\00\00panic occurred")
  (data (;1;) (i32.const 1049216) "\9c\ff\ff\ff"))
