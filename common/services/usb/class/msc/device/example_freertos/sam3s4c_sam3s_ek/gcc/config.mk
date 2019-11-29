#
# Copyright (c) 2011 Atmel Corporation. All rights reserved.
#
# \asf_license_start
#
# \page License
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. The name of Atmel may not be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# 4. This software may only be redistributed and used in connection with an
#    Atmel microcontroller product.
#
# THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# \asf_license_stop
#

# Path to top level ASF directory relative to this project directory.
PRJ_PATH = ../../../../../../../../..

# Target CPU architecture: cortex-m3, cortex-m4
ARCH = cortex-m3

# Target part: none, sam3n4 or sam4l4aa
PART = sam3s4c

# Application target name. Given with suffix .a for library and .elf for a
# standalone application.
TARGET_FLASH = example_freertos_flash.elf
TARGET_SRAM = example_freertos_sram.elf

# List of C source files.
CSRCS = \
       common/components/memory/sd_mmc/sd_mmc.c           \
       common/components/memory/sd_mmc/sd_mmc_mem.c       \
       common/components/memory/virtual_mem/virtual_mem.c \
       common/services/clock/sam3s/sysclk.c               \
       common/services/delay/sam/cycle_counter.c          \
       common/services/sleepmgr/sam/sleepmgr.c            \
       common/services/storage/ctrl_access/ctrl_access.c  \
       common/services/usb/class/msc/device/example_freertos/exceptions_sam.c \
       common/services/usb/class/msc/device/example_freertos/main.c \
       common/services/usb/class/msc/device/example_freertos/memories_initialization_sam.c \
       common/services/usb/class/msc/device/example_freertos/sam3s4c_sam3s_ek/ui.c \
       common/services/usb/class/msc/device/udi_msc.c     \
       common/services/usb/class/msc/device/udi_msc_desc.c \
       common/services/usb/udc/udc.c                      \
       common/utils/interrupt/interrupt_sam_nvic.c        \
       sam/boards/sam3s_ek/init.c                         \
       sam/boards/sam3s_ek/led.c                          \
       sam/drivers/hsmci/hsmci.c                          \
       sam/drivers/matrix/matrix.c                        \
       sam/drivers/pdc/pdc.c                              \
       sam/drivers/pio/pio.c                              \
       sam/drivers/pio/pio_handler.c                      \
       sam/drivers/pmc/pmc.c                              \
       sam/drivers/pmc/sleep.c                            \
       sam/drivers/udp/udp_device.c                       \
       sam/utils/cmsis/sam3s/source/templates/exceptions.c \
       sam/utils/cmsis/sam3s/source/templates/gcc/startup_sam3s.c \
       sam/utils/cmsis/sam3s/source/templates/system_sam3s.c \
       sam/utils/syscalls/gcc/syscalls.c                  \
       thirdparty/freertos/freertos-10.0.0/Source/croutine.c \
       thirdparty/freertos/freertos-10.0.0/Source/event_groups.c \
       thirdparty/freertos/freertos-10.0.0/Source/list.c  \
       thirdparty/freertos/freertos-10.0.0/Source/portable/GCC/ARM_CM3/port.c \
       thirdparty/freertos/freertos-10.0.0/Source/portable/MemMang/heap_1.c \
       thirdparty/freertos/freertos-10.0.0/Source/queue.c \
       thirdparty/freertos/freertos-10.0.0/Source/stream_buffer.c \
       thirdparty/freertos/freertos-10.0.0/Source/tasks.c \
       thirdparty/freertos/freertos-10.0.0/Source/timers.c

# List of assembler source files.
ASSRCS = 

# List of include paths.
INC_PATH = \
       common/boards                                      \
       common/components/memory/sd_mmc                    \
       common/components/memory/virtual_mem               \
       common/services/clock                              \
       common/services/delay                              \
       common/services/gpio                               \
       common/services/ioport                             \
       common/services/sleepmgr                           \
       common/services/storage/ctrl_access                \
       common/services/usb                                \
       common/services/usb/class/msc                      \
       common/services/usb/class/msc/device               \
       common/services/usb/class/msc/device/example_freertos \
       common/services/usb/class/msc/device/example_freertos/sam3s4c_sam3s_ek \
       common/services/usb/udc                            \
       common/utils                                       \
       sam/boards                                         \
       sam/boards/sam3s_ek                                \
       sam/drivers/hsmci                                  \
       sam/drivers/matrix                                 \
       sam/drivers/pdc                                    \
       sam/drivers/pdc/pdc_uart_example                   \
       sam/drivers/pio                                    \
       sam/drivers/pmc                                    \
       sam/drivers/udp                                    \
       sam/utils                                          \
       sam/utils/cmsis/sam3s/include                      \
       sam/utils/cmsis/sam3s/source/templates             \
       sam/utils/header_files                             \
       sam/utils/preprocessor                             \
       thirdparty/CMSIS/Include                           \
       thirdparty/CMSIS/Lib/GCC                           \
       thirdparty/freertos/freertos-10.0.0/Source/include \
       thirdparty/freertos/freertos-10.0.0/Source/portable/GCC/ARM_CM3 \
       common/services/usb/class/msc/device/example_freertos/sam3s4c_sam3s_ek/gcc

# Additional search paths for libraries.
LIB_PATH =  \
       thirdparty/CMSIS/Lib/GCC                          

# List of libraries to use during linking.
LIBS =  \
       arm_cortexM3l_math                                 \
       m                                                 

# Path relative to top level directory pointing to a linker script.
LINKER_SCRIPT_FLASH = sam/utils/linker_scripts/sam3s/sam3s4/gcc/flash.ld
LINKER_SCRIPT_SRAM  = sam/utils/linker_scripts/sam3s/sam3s4/gcc/sram.ld

# Path relative to top level directory pointing to a linker script.
DEBUG_SCRIPT_FLASH = sam/boards/sam3s_ek/debug_scripts/gcc/sam3s_ek_flash.gdb
DEBUG_SCRIPT_SRAM  = sam/boards/sam3s_ek/debug_scripts/gcc/sam3s_ek_sram.gdb

# Project type parameter: all, sram or flash
PROJECT_TYPE        = flash

# Additional options for debugging. By default the common Makefile.in will
# add -g3.
DBGFLAGS = 

# Application optimization used during compilation and linking:
# -O0, -O1, -O2, -O3 or -Os
OPTIMIZATION = -O3

# Extra flags to use when archiving.
ARFLAGS = 

# Extra flags to use when assembling.
ASFLAGS = 

# Extra flags to use when compiling.
CFLAGS = 

# Extra flags to use when preprocessing.
#
# Preprocessor symbol definitions
#   To add a definition use the format "-D name[=definition]".
#   To cancel a definition use the format "-U name".
#
# The most relevant symbols to define for the preprocessor are:
#   BOARD      Target board in use, see boards/board.h for a list.
#   EXT_BOARD  Optional extension board in use, see boards/board.h for a list.
CPPFLAGS = \
       -D ACCESS_USB_ENABLED                              \
       -D ARM_MATH_CM3=true                               \
       -D BOARD=SAM3S_EK                                  \
       -D FREERTOS_USED                                   \
       -D SD_MMC_ENABLE                                   \
       -D UDD_ENABLE                                      \
       -D VIRTUAL_MEMORY_ENABLE                           \
       -D __FREERTOS__                                    \
       -D __SAM3S4C__                                     \
       -D printf=iprintf                                  \
       -D scanf=iscanf

# Extra flags to use when linking
LDFLAGS = \

# Pre- and post-build commands
PREBUILD_CMD = 
POSTBUILD_CMD = 