(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func (param i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i64) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func))
  (type (;10;) (func (param i32) (result i64)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i64)))
  (type (;13;) (func (param i32 i32) (result i64)))
  (type (;14;) (func (param i32 i32 i32)))
  (import "env" "mBufferNew" (func (;0;) (type 0)))
  (import "env" "mBufferAppend" (func (;1;) (type 1)))
  (import "env" "mBufferAppendBytes" (func (;2;) (type 2)))
  (import "env" "managedSignalError" (func (;3;) (type 3)))
  (import "env" "getNumArguments" (func (;4;) (type 0)))
  (import "env" "signalError" (func (;5;) (type 4)))
  (import "env" "mBufferNewFromBytes" (func (;6;) (type 1)))
  (import "env" "mBufferStorageStore" (func (;7;) (type 1)))
  (import "env" "mBufferGetLength" (func (;8;) (type 5)))
  (import "env" "mBufferSetBytes" (func (;9;) (type 2)))
  (import "env" "managedGetOriginalTxHash" (func (;10;) (type 3)))
  (import "env" "mBufferGetByteSlice" (func (;11;) (type 6)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;12;) (type 1)))
  (import "env" "bigIntNew" (func (;13;) (type 7)))
  (import "env" "mBufferStorageLoad" (func (;14;) (type 1)))
  (import "env" "mBufferGetArgument" (func (;15;) (type 1)))
  (import "env" "mBufferCopyByteSlice" (func (;16;) (type 6)))
  (import "env" "managedSCAddress" (func (;17;) (type 3)))
  (import "env" "managedAsyncCall" (func (;18;) (type 8)))
  (import "env" "bigIntSign" (func (;19;) (type 5)))
  (import "env" "checkNoPayment" (func (;20;) (type 9)))
  (import "env" "smallIntGetUnsignedArgument" (func (;21;) (type 10)))
  (import "env" "getNumDCDTTransfers" (func (;22;) (type 0)))
  (import "env" "bigIntGetCallValue" (func (;23;) (type 3)))
  (import "env" "managedOwnerAddress" (func (;24;) (type 3)))
  (import "env" "managedCaller" (func (;25;) (type 3)))
  (import "env" "mBufferEq" (func (;26;) (type 1)))
  (func (;27;) (type 11) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        local.get 4
        call 28
        unreachable
      end
      local.get 1
      local.get 2
      call 29
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 3
    local.get 1
    i32.add
    i32.store)
  (func (;28;) (type 4) (param i32 i32)
    call 86
    unreachable)
  (func (;29;) (type 4) (param i32 i32)
    call 86
    unreachable)
  (func (;30;) (type 11) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        local.get 4
        call 28
        unreachable
      end
      local.get 1
      local.get 2
      call 29
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 3
    local.get 1
    i32.add
    i32.store)
  (func (;31;) (type 5) (param i32) (result i32)
    (local i32)
    call 0
    local.tee 1
    local.get 0
    call 1
    drop
    local.get 1)
  (func (;32;) (type 8) (param i32 i32 i32 i32)
    (local i32)
    i32.const 1048637
    i32.const 23
    call 33
    local.tee 4
    local.get 0
    local.get 1
    call 2
    drop
    local.get 4
    i32.const 1048660
    i32.const 3
    call 2
    drop
    local.get 4
    local.get 2
    local.get 3
    call 2
    drop
    local.get 4
    call 3
    unreachable)
  (func (;33;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 6)
  (func (;34;) (type 3) (param i32)
    block  ;; label = @1
      call 4
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      return
    end
    i32.const 1048700
    i32.const 25
    call 5
    unreachable)
  (func (;35;) (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load offset=16
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      call 36
      local.set 2
      i32.const 0
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=1059088
          br_if 0 (;@3;)
          i32.const 1
          local.set 3
          i32.const 0
          i32.const 1
          i32.store8 offset=1059088
          i32.const 0
          i32.const 0
          i32.store offset=1049084
          local.get 1
          i32.const 8
          i32.add
          i32.const 0
          call 37
          local.get 1
          i32.load offset=8
          local.get 1
          i32.load offset=12
          i32.const 1049068
          i32.const 0
          call 38
          call 0
          local.set 4
          br 1 (;@2;)
        end
        i32.const 1049068
        i32.const 0
        call 6
        local.set 4
      end
      local.get 1
      local.get 3
      i32.store8 offset=20
      local.get 1
      local.get 4
      i32.store offset=16
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.get 1
      i32.const 16
      i32.add
      call 39
      local.get 1
      local.get 0
      i32.const 24
      i32.add
      i32.load
      local.tee 5
      call 40
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
      i32.store offset=24
      local.get 1
      i32.const 16
      i32.add
      local.get 1
      i32.const 24
      i32.add
      call 41
      local.get 5
      call 42
      local.set 6
      i32.const 0
      local.set 3
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const 4
          i32.add
          local.tee 4
          local.get 6
          i32.gt_u
          br_if 1 (;@2;)
          local.get 1
          i32.const 0
          i32.store offset=24
          local.get 5
          local.get 3
          local.get 1
          i32.const 24
          i32.add
          i32.const 4
          call 43
          drop
          local.get 1
          i32.load offset=24
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
          local.get 1
          i32.const 16
          i32.add
          call 39
          local.get 4
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 1
      i32.load offset=16
      local.set 3
      local.get 1
      local.get 1
      i32.load8_u offset=20
      i32.store8 offset=28
      local.get 1
      local.get 3
      i32.store offset=24
      local.get 1
      i32.const 24
      i32.add
      call 44
      local.get 1
      i32.load offset=24
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.load8_u offset=28
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store offset=1049084
        i32.const 0
        i32.const 0
        i32.store8 offset=1059088
      end
      local.get 2
      local.get 3
      call 7
      drop
    end
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call 45
    unreachable)
  (func (;36;) (type 0) (result i32)
    (local i32 i32)
    call 0
    local.tee 0
    call 10
    i32.const 1048772
    i32.const 10
    call 6
    local.tee 1
    local.get 0
    call 1
    drop
    local.get 1)
  (func (;37;) (type 4) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 1049088
    i32.const 10000
    local.get 1
    call 81
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.load offset=12
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;38;) (type 8) (param i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call 89
      drop
      return
    end
    local.get 1
    local.get 3
    call 88
    unreachable)
  (func (;39;) (type 4) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    call 42
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
    call 41
    local.get 1
    i32.load8_u offset=4
    local.set 3
    local.get 1
    i32.const 0
    i32.store8 offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.and
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            call 42
            local.set 4
            i32.const 10000
            i32.const 0
            i32.load offset=1049084
            local.tee 5
            i32.sub
            local.get 4
            i32.lt_u
            br_if 2 (;@2;)
            local.get 2
            local.get 5
            local.get 5
            local.get 4
            i32.add
            local.tee 4
            call 66
            local.get 0
            i32.const 0
            local.get 2
            i32.load
            local.get 2
            i32.load offset=4
            call 43
            drop
            i32.const 0
            local.get 4
            i32.store offset=1049084
            br 1 (;@3;)
          end
          local.get 1
          i32.load
          local.get 0
          call 65
        end
        local.get 1
        local.get 3
        i32.store8 offset=4
        br 1 (;@1;)
      end
      local.get 1
      call 44
      local.get 1
      i32.load
      local.get 0
      call 65
      local.get 1
      i32.load8_u offset=4
      local.set 0
      local.get 1
      local.get 3
      i32.store8 offset=4
      local.get 0
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.store offset=1049084
      i32.const 0
      i32.const 0
      i32.store8 offset=1059088
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;40;) (type 5) (param i32) (result i32)
    local.get 0
    call 42
    i32.const 2
    i32.shr_u)
  (func (;41;) (type 4) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          i32.const 10000
          i32.const 0
          i32.load offset=1049084
          local.tee 3
          i32.sub
          i32.const 4
          i32.lt_u
          br_if 1 (;@2;)
          local.get 2
          i32.const 8
          i32.add
          local.get 3
          local.get 3
          i32.const 4
          i32.add
          local.tee 0
          call 66
          local.get 2
          i32.load offset=8
          local.get 2
          i32.load offset=12
          local.get 1
          i32.const 4
          call 38
          i32.const 0
          local.get 0
          i32.store offset=1049084
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        i32.const 4
        call 2
        drop
        br 1 (;@1;)
      end
      local.get 0
      call 44
      local.get 0
      i32.load
      local.get 1
      i32.const 4
      call 2
      drop
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;42;) (type 5) (param i32) (result i32)
    local.get 0
    call 8)
  (func (;43;) (type 6) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call 11
    i32.const 0
    i32.ne)
  (func (;44;) (type 3) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load8_u offset=4
    local.set 2
    local.get 0
    i32.const 0
    i32.store8 offset=4
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 8
      i32.add
      i32.const 0
      i32.const 0
      i32.load offset=1049084
      call 67
      local.get 0
      i32.load
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=12
      call 2
      drop
      i32.const 0
      i32.const 0
      i32.store offset=1049084
      i32.const 0
      i32.const 0
      i32.store8 offset=1059088
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;45;) (type 8) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 18
    unreachable)
  (func (;46;) (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i64 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=28
    local.set 3
    local.get 1
    i32.load offset=24
    local.set 4
    local.get 1
    i32.load offset=20
    local.set 5
    local.get 1
    i32.load offset=12
    local.set 6
    local.get 1
    i32.load offset=8
    local.set 7
    local.get 1
    i64.load
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=16
          local.tee 9
          call 47
          br_table 2 (;@1;) 1 (;@2;) 0 (;@3;)
        end
        call 0
        local.set 10
        call 0
        local.set 11
        call 0
        drop
        local.get 11
        local.get 7
        call 31
        call 48
        local.get 9
        call 47
        local.set 7
        call 0
        local.tee 6
        local.get 7
        i64.extend_i32_u
        call 49
        local.get 11
        local.get 6
        call 48
        local.get 9
        call 8
        local.set 12
        local.get 2
        i32.const 16
        i32.add
        local.set 13
        i32.const 0
        local.set 7
        block  ;; label = @3
          loop  ;; label = @4
            local.get 7
            i32.const 16
            i32.add
            local.tee 6
            local.get 12
            i32.gt_u
            br_if 1 (;@3;)
            local.get 13
            i64.const 0
            i64.store
            local.get 2
            i64.const 0
            i64.store offset=8
            local.get 9
            local.get 7
            local.get 2
            i32.const 8
            i32.add
            i32.const 16
            call 43
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
            call 50
            local.set 7
            local.get 2
            i32.const 8
            i32.add
            local.get 2
            i32.const 28
            i32.add
            call 51
            local.set 14
            local.get 2
            i32.const 8
            i32.add
            local.get 2
            i32.const 28
            i32.add
            call 52
            local.set 15
            local.get 2
            call 0
            i32.store offset=8
            local.get 7
            local.get 2
            i32.const 8
            i32.add
            call 53
            local.get 11
            local.get 2
            i32.load offset=8
            call 48
            call 0
            local.tee 7
            local.get 14
            call 49
            local.get 11
            local.get 7
            call 48
            call 0
            drop
            local.get 11
            local.get 15
            call 54
            call 48
            local.get 6
            local.set 7
            br 0 (;@4;)
          end
        end
        call 0
        drop
        local.get 11
        local.get 5
        call 31
        call 48
        call 55
        local.set 7
        call 56
        local.set 6
        i32.const 1048725
        i32.const 20
        call 6
        local.set 5
        local.get 11
        local.get 4
        call 57
        local.set 4
        local.get 10
        local.set 9
        br 1 (;@1;)
      end
      local.get 2
      i32.const 16
      i32.add
      i64.const 0
      i64.store
      local.get 2
      i64.const 0
      i64.store offset=8
      local.get 9
      i32.const 0
      local.get 2
      i32.const 8
      i32.add
      i32.const 16
      call 43
      local.set 11
      local.get 2
      i32.const 0
      i32.store offset=28
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call 50
      local.set 15
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call 51
      local.set 14
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call 52
      local.set 12
      local.get 11
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 15
        call 58
        br_if 0 (;@2;)
        call 0
        local.set 9
        call 0
        local.tee 11
        local.get 15
        call 59
        block  ;; label = @3
          block  ;; label = @4
            local.get 14
            i64.eqz
            i32.eqz
            br_if 0 (;@4;)
            local.get 11
            local.get 12
            call 60
            local.get 11
            local.get 5
            call 61
            call 56
            local.set 6
            i32.const 1048760
            i32.const 12
            call 6
            local.set 5
            br 1 (;@3;)
          end
          call 0
          local.tee 6
          local.get 14
          call 49
          local.get 11
          local.get 6
          call 48
          local.get 11
          local.get 12
          call 60
          call 0
          drop
          local.get 11
          local.get 7
          call 31
          call 48
          local.get 11
          local.get 5
          call 61
          call 55
          local.set 7
          call 56
          local.set 6
          i32.const 1048745
          i32.const 15
          call 6
          local.set 5
        end
        local.get 11
        local.get 4
        call 57
        local.set 4
        br 1 (;@1;)
      end
      local.get 9
      i32.const 1049068
      i32.const 0
      call 9
      drop
      local.get 12
      local.set 6
    end
    local.get 1
    local.get 3
    i32.store offset=28
    local.get 1
    local.get 4
    i32.store offset=24
    local.get 1
    local.get 5
    i32.store offset=20
    local.get 1
    local.get 9
    i32.store offset=16
    local.get 1
    local.get 6
    i32.store offset=12
    local.get 1
    local.get 7
    i32.store offset=8
    local.get 1
    local.get 8
    i64.store
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    local.get 5
    i32.store offset=8
    local.get 0
    local.get 6
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;47;) (type 5) (param i32) (result i32)
    local.get 0
    call 42
    i32.const 4
    i32.shr_u)
  (func (;48;) (type 4) (param i32 i32)
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
  (func (;49;) (type 12) (param i32 i64)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const 0
    local.set 3
    local.get 0
    i32.const 1049068
    i32.const 0
    call 62
    local.get 2
    local.get 1
    i64.const 56
    i64.shl
    local.get 1
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
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
      block  ;; label = @2
        local.get 1
        i64.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          i32.const 8
          i32.eq
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.get 3
            i32.add
            local.tee 4
            i32.load8_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            br 1 (;@3;)
          end
        end
        local.get 0
        local.get 4
        i32.const 8
        local.get 3
        i32.sub
        call 2
        drop
      end
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 8
    call 63
    unreachable)
  (func (;50;) (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    local.get 0
    i32.const 16
    call 27
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 38
    local.get 1
    local.get 3
    i32.store
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1
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
    i32.or)
  (func (;51;) (type 13) (param i32 i32) (result i64)
    (local i32 i32 i64)
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
    i32.load
    local.tee 3
    local.get 3
    i32.const 8
    i32.add
    local.tee 3
    local.get 0
    i32.const 16
    call 27
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 38
    local.get 1
    local.get 3
    i32.store
    local.get 2
    i64.load offset=8
    local.set 4
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 4
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
    i64.or)
  (func (;52;) (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    local.get 0
    i32.const 16
    call 27
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 38
    local.get 1
    local.get 3
    i32.store
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 1
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
    i32.or)
  (func (;53;) (type 4) (param i32 i32)
    block  ;; label = @1
      local.get 0
      call 58
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      call 31
      i32.store
      return
    end
    local.get 1
    i32.load
    i32.const 1048879
    i32.const 4
    call 62)
  (func (;54;) (type 5) (param i32) (result i32)
    (local i32)
    call 0
    local.tee 1
    local.get 0
    call 12
    drop
    local.get 1)
  (func (;55;) (type 0) (result i32)
    (local i32)
    call 0
    local.tee 0
    call 17
    local.get 0)
  (func (;56;) (type 0) (result i32)
    i64.const 0
    call 13)
  (func (;57;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 1
    drop
    local.get 0)
  (func (;58;) (type 5) (param i32) (result i32)
    local.get 0
    call 42
    i32.eqz)
  (func (;59;) (type 4) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    call 0
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    call 53
    local.get 0
    local.get 2
    i32.load offset=12
    call 48
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;60;) (type 4) (param i32 i32)
    call 0
    drop
    local.get 0
    local.get 1
    call 54
    call 48)
  (func (;61;) (type 4) (param i32 i32)
    call 0
    drop
    local.get 0
    local.get 1
    call 31
    call 48)
  (func (;62;) (type 14) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 9
    drop)
  (func (;63;) (type 3) (param i32)
    call 86
    unreachable)
  (func (;64;) (type 0) (result i32)
    call 0)
  (func (;65;) (type 4) (param i32 i32)
    local.get 0
    local.get 1
    call 1
    drop)
  (func (;66;) (type 14) (param i32 i32 i32)
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
    i32.const 1049088
    i32.const 10000
    call 30
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
  (func (;67;) (type 14) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 10000
        i32.le_u
        br_if 1 (;@1;)
        local.get 2
        i32.const 10000
        call 28
        unreachable
      end
      local.get 1
      local.get 2
      call 29
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 1049088
    i32.add
    i32.store)
  (func (;68;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call 0
    local.tee 1
    call 14
    drop
    local.get 1
    call 8)
  (func (;69;) (type 5) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      call 70
      local.tee 0
      call 8
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      call 71
      unreachable
    end
    local.get 0)
  (func (;70;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call 0
    local.tee 1
    call 14
    drop
    local.get 1)
  (func (;71;) (type 9)
    (local i32)
    i32.const 1048883
    i32.const 22
    call 33
    local.tee 0
    i32.const 1048905
    i32.const 16
    call 2
    drop
    local.get 0
    call 3
    unreachable)
  (func (;72;) (type 4) (param i32 i32)
    (local i32 i64 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 1
    i64.extend_i32_u
    i64.const 255
    i64.and
    local.set 3
    i32.const 56
    local.set 1
    i32.const 0
    local.set 4
    i32.const 1
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const 0
          i32.lt_s
          br_if 1 (;@2;)
          local.get 3
          local.get 1
          i32.const 56
          i32.and
          i64.extend_i32_u
          i64.shr_u
          i32.wrap_i64
          local.set 6
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.const 1
                i32.and
                br_if 0 (;@6;)
                local.get 4
                i32.const 8
                i32.lt_u
                br_if 1 (;@5;)
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 6
                br_if 0 (;@6;)
                i32.const 1
                local.set 5
                br 2 (;@4;)
              end
              i32.const 1
              local.set 6
              local.get 4
              i32.const 8
              i32.ge_u
              br_if 4 (;@1;)
            end
            local.get 2
            i32.const 8
            i32.add
            local.get 4
            i32.add
            local.get 6
            i32.store8
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            i32.const 0
            local.set 5
          end
          local.get 1
          i32.const -8
          i32.add
          local.set 1
          br 0 (;@3;)
        end
      end
      local.get 2
      i32.const 0
      local.get 4
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      call 27
      local.get 0
      local.get 2
      i32.load
      local.get 2
      i32.load offset=4
      call 6
      call 7
      drop
      local.get 2
      i32.const 16
      i32.add
      global.set 0
      return
    end
    local.get 4
    call 63
    unreachable)
  (func (;73;) (type 5) (param i32) (result i32)
    (local i32)
    local.get 0
    call 0
    local.tee 1
    call 15
    drop
    local.get 1)
  (func (;74;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    i32.store offset=20
    local.get 1
    i32.const 25
    i32.store offset=28
    local.get 1
    i32.const 1048576
    i32.store offset=24
    local.get 0
    i32.load offset=12
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=8
            br_if 0 (;@4;)
            local.get 0
            i32.load
            local.tee 3
            call 42
            local.set 4
            i32.const 0
            i32.load8_u offset=1059088
            br_if 1 (;@3;)
            local.get 4
            i32.const 10000
            i32.gt_u
            br_if 1 (;@3;)
            i32.const 0
            local.get 4
            i32.store offset=1049084
            i32.const 0
            i32.const 1
            i32.store8 offset=1059088
            local.get 1
            i32.const 8
            i32.add
            local.get 4
            call 37
            local.get 3
            i32.const 0
            local.get 1
            i32.load offset=8
            local.get 1
            i32.load offset=12
            call 43
            drop
            local.get 0
            i32.const 1
            i32.store8 offset=8
          end
          local.get 2
          i32.const 4
          i32.add
          local.tee 4
          i32.const 0
          i32.load offset=1049084
          i32.gt_u
          br_if 2 (;@1;)
          local.get 1
          local.get 2
          local.get 4
          call 67
          local.get 1
          i32.const 20
          i32.add
          i32.const 4
          local.get 1
          i32.load
          local.get 1
          i32.load offset=4
          call 38
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.store8 offset=8
        local.get 3
        local.get 2
        local.get 1
        i32.const 20
        i32.add
        i32.const 4
        call 43
        br_if 1 (;@1;)
        local.get 2
        i32.const 4
        i32.add
        local.set 4
      end
      local.get 0
      local.get 4
      i32.store offset=12
      i64.const 0
      local.set 5
      i32.const 0
      local.set 0
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.const 4
          i32.eq
          br_if 1 (;@2;)
          local.get 1
          i32.const 20
          i32.add
          local.get 0
          i32.add
          local.set 2
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 5
          i64.const 8
          i64.shl
          local.get 2
          i64.load8_u
          i64.or
          local.set 5
          br 0 (;@3;)
        end
      end
      local.get 1
      i32.const 32
      i32.add
      global.set 0
      local.get 5
      i32.wrap_i64
      return
    end
    local.get 1
    i32.const 24
    i32.add
    i32.const 1048782
    i32.const 15
    call 75
    unreachable)
  (func (;75;) (type 14) (param i32 i32 i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 33
    local.tee 0
    local.get 1
    local.get 2
    call 2
    drop
    local.get 0
    call 3
    unreachable)
  (func (;76;) (type 5) (param i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    call 74
    local.set 2
    local.get 1
    i32.const 25
    i32.store offset=12
    local.get 1
    i32.const 1048576
    i32.store offset=8
    local.get 0
    i32.load offset=12
    local.set 3
    call 0
    local.set 4
    block  ;; label = @1
      local.get 0
      i32.load
      local.get 3
      local.get 2
      local.get 4
      call 16
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 8
      i32.add
      i32.const 1048782
      i32.const 15
      call 75
      unreachable
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=12
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 4)
  (func (;77;) (type 5) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      local.get 0
      i32.load offset=4
      i32.ge_s
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 1
      i32.add
      i32.store
      local.get 1
      return
    end
    i32.const 1048993
    i32.const 6
    i32.const 1048921
    i32.const 17
    call 32
    unreachable)
  (func (;78;) (type 9)
    i32.const 1048797
    i32.const 32
    call 6
    drop)
  (func (;79;) (type 0) (result i32)
    i32.const 1048938
    i32.const 12
    call 6)
  (func (;80;) (type 0) (result i32)
    i32.const 1048950
    i32.const 15
    call 6)
  (func (;81;) (type 8) (param i32 i32 i32 i32)
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
    call 30
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
  (func (;82;) (type 8) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    call 0
    local.set 5
    i32.const 1048965
    i32.const 11
    call 6
    local.set 6
    call 0
    local.set 7
    call 56
    local.set 8
    local.get 0
    local.get 6
    i32.store offset=20
    local.get 0
    local.get 5
    i32.store offset=16
    local.get 0
    local.get 8
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 7
    i32.store offset=24
    local.get 0
    i64.const -1
    i64.store
    block  ;; label = @1
      local.get 3
      call 19
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      call 58
      drop
    end
    local.get 4
    i64.const 0
    i64.store offset=4 align=4
    local.get 4
    local.get 3
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
    local.get 4
    local.get 2
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
    local.get 5
    local.get 4
    i32.const 16
    call 2
    drop
    local.get 0
    local.get 5
    i32.store offset=16
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;83;) (type 9)
    (local i32 i32)
    call 20
    i32.const 1
    call 34
    block  ;; label = @1
      i32.const 0
      call 73
      local.tee 0
      call 8
      i32.const 32
      i32.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        call 80
        local.tee 1
        call 68
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        call 7
        drop
      end
      block  ;; label = @2
        call 79
        local.tee 0
        call 68
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        call 72
      end
      return
    end
    i32.const 1049053
    i32.const 14
    i32.const 1048905
    i32.const 16
    call 32
    unreachable)
  (func (;84;) (type 9)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 96
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                call 36
                local.tee 1
                call 70
                local.tee 2
                call 58
                local.tee 3
                br_if 0 (;@6;)
                local.get 2
                call 31
                local.set 2
                local.get 0
                i32.const 25
                i32.store offset=68
                local.get 0
                i32.const 1048576
                i32.store offset=64
                local.get 0
                local.get 2
                call 8
                local.tee 4
                i32.store offset=40
                local.get 0
                i32.const 0
                i32.store offset=36
                local.get 0
                i32.const 0
                i32.store8 offset=32
                local.get 0
                local.get 4
                i32.store offset=28
                local.get 0
                local.get 2
                i32.store offset=24
                local.get 0
                i32.const 24
                i32.add
                call 76
                local.set 5
                local.get 0
                i32.const 24
                i32.add
                call 74
                local.set 2
                call 0
                local.set 4
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 2
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 4
                    local.get 0
                    i32.const 24
                    i32.add
                    call 76
                    call 48
                    local.get 2
                    i32.const -1
                    i32.add
                    local.set 2
                    br 0 (;@8;)
                  end
                end
                local.get 0
                i32.load offset=40
                local.get 0
                i32.load offset=36
                i32.ne
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 0
                  i32.load8_u offset=32
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1049084
                  i32.const 0
                  i32.const 0
                  i32.store8 offset=1059088
                end
                local.get 1
                call 0
                call 7
                drop
                local.get 3
                br_if 0 (;@6;)
                local.get 0
                call 4
                i32.store offset=20
                local.get 0
                i32.const 0
                i32.store offset=16
                local.get 0
                i32.const 88
                i32.add
                local.tee 1
                i64.const 0
                i64.store
                local.get 0
                i32.const 80
                i32.add
                local.tee 3
                i64.const 0
                i64.store
                local.get 0
                i32.const 72
                i32.add
                local.tee 6
                i64.const 0
                i64.store
                local.get 0
                i64.const 0
                i64.store offset=64
                local.get 0
                i32.const 8
                i32.add
                local.get 0
                i32.const 64
                i32.add
                i32.const 32
                local.get 5
                call 8
                local.tee 2
                call 81
                local.get 5
                i32.const 0
                local.get 0
                i32.load offset=8
                local.get 0
                i32.load offset=12
                call 43
                drop
                local.get 0
                i32.const 52
                i32.add
                local.get 1
                i64.load
                i64.store align=4
                local.get 0
                i32.const 44
                i32.add
                local.get 3
                i64.load
                i64.store align=4
                local.get 0
                i32.const 36
                i32.add
                local.get 6
                i64.load
                i64.store align=4
                local.get 0
                local.get 0
                i64.load offset=64
                i64.store offset=28 align=4
                local.get 2
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.const 17
                i32.ne
                br_if 5 (;@1;)
                local.get 0
                i32.const 24
                i32.add
                i32.const 4
                i32.or
                i32.const 1048976
                i32.const 17
                call 90
                br_if 5 (;@1;)
                local.get 4
                call 40
                local.set 4
                local.get 0
                i32.const 16
                i32.add
                call 77
                call 21
                local.tee 7
                i64.const 4294967296
                i64.ge_u
                br_if 2 (;@4;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    i32.wrap_i64
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.const 16
                        i32.add
                        call 77
                        call 21
                        local.tee 7
                        i64.const 1
                        i64.gt_u
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 2
                        local.get 7
                        i32.wrap_i64
                        br_table 3 (;@7;) 1 (;@9;) 3 (;@7;)
                      end
                      i32.const 1048993
                      i32.const 6
                      i32.const 1048843
                      i32.const 18
                      call 32
                      unreachable
                    end
                    i32.const 1
                    local.set 2
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=16
                      local.get 0
                      i32.load offset=20
                      i32.lt_s
                      br_if 0 (;@9;)
                      call 0
                      drop
                      br 1 (;@8;)
                    end
                    local.get 0
                    i32.const 16
                    i32.add
                    call 77
                    call 73
                    drop
                  end
                  i32.const 0
                  local.set 2
                end
                local.get 0
                i32.const 0
                i32.store offset=68
                local.get 0
                i32.const 1049068
                i32.store offset=64
                local.get 4
                br_if 3 (;@3;)
                local.get 0
                i32.const 0
                i32.store offset=68
                local.get 0
                i32.const 1049068
                i32.store offset=64
                local.get 0
                i32.load offset=16
                local.get 0
                i32.load offset=20
                i32.lt_s
                br_if 4 (;@2;)
                call 79
                local.get 2
                call 72
              end
              local.get 0
              i32.const 96
              i32.add
              global.set 0
              return
            end
            local.get 0
            i32.const 64
            i32.add
            i32.const 1048829
            i32.const 14
            call 75
            unreachable
          end
          i32.const 1048993
          i32.const 6
          i32.const 1048829
          i32.const 14
          call 32
          unreachable
        end
        local.get 0
        i32.const 64
        i32.add
        i32.const 1048861
        i32.const 18
        call 75
        unreachable
      end
      local.get 0
      i32.const 64
      i32.add
      i32.const 1048861
      i32.const 18
      call 75
      unreachable
    end
    i32.const 1048999
    i32.const 54
    call 5
    unreachable)
  (func (;85;) (type 9)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 64
    i32.sub
    local.tee 0
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        call 22
        br_if 0 (;@2;)
        i64.const 0
        call 13
        local.tee 1
        call 23
        call 0
        local.tee 2
        call 24
        call 0
        local.tee 3
        call 25
        local.get 2
        local.get 3
        call 26
        i32.const 0
        i32.le_s
        br_if 1 (;@1;)
        i32.const 0
        call 34
        call 80
        call 69
        local.set 2
        call 78
        local.get 0
        i32.const 32
        i32.add
        local.get 2
        call 64
        local.get 1
        call 82
        local.get 0
        local.get 0
        i32.const 32
        i32.add
        call 46
        local.get 0
        call 35
        unreachable
      end
      i32.const 1048663
      i32.const 37
      call 5
      unreachable
    end
    i32.const 1048601
    i32.const 36
    call 5
    unreachable)
  (func (;86;) (type 9)
    call 87
    unreachable)
  (func (;87;) (type 9)
    i32.const 1049068
    i32.const 14
    call 5
    unreachable)
  (func (;88;) (type 4) (param i32 i32)
    call 86
    unreachable)
  (func (;89;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 3
      i32.and
      local.set 3
      i32.const 0
      local.set 4
      block  ;; label = @2
        local.get 2
        i32.const -1
        i32.add
        i32.const 3
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const -4
        i32.and
        local.set 5
        i32.const 0
        local.set 4
        loop  ;; label = @3
          local.get 0
          local.get 4
          i32.add
          local.tee 2
          local.get 1
          local.get 4
          i32.add
          local.tee 6
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.get 6
          i32.const 1
          i32.add
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 2
          i32.add
          local.get 6
          i32.const 2
          i32.add
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 3
          i32.add
          local.get 6
          i32.const 3
          i32.add
          i32.load8_u
          i32.store8
          local.get 5
          local.get 4
          i32.const 4
          i32.add
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      i32.add
      local.set 2
      local.get 0
      local.get 4
      i32.add
      local.set 4
      loop  ;; label = @2
        local.get 4
        local.get 2
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 3
        i32.const -1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;90;) (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 4
          local.get 1
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 4
      local.get 5
      i32.sub
      local.set 3
    end
    local.get 3)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1059092))
  (global (;2;) i32 (i32.const 1059104))
  (export "memory" (memory 0))
  (export "init" (func 83))
  (export "callBack" (func 84))
  (export "register" (func 85))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "serializer decode error: Endpoint can only be called by ownerargument decode error (): function does not accept DCDT paymentwrong number of argumentsMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferCB_CLOSUREinput too short\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00input too longinput out of rangetoo many argumentsREWAstorage decode error: bad array lengthtoo few argumentsisRegisteredscFunderAddressacceptFundsregister_callbackresultno callback function with that name exists in contractfunder_address\00panic occurred"))
