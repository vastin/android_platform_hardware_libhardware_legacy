# Copyright 2006 The Android Open Source Project

ifeq ($(BOARD_DISABLE_PM),true)
       LOCAL_SRC_FILES += power/power_disable.c
else
LOCAL_SRC_FILES += power/power.c
endif

ifeq ($(QEMU_HARDWARE),true)
  LOCAL_SRC_FILES += power/power_qemu.c
  LOCAL_CFLAGS    += -DQEMU_POWER=1
endif
