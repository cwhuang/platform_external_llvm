LOCAL_PATH := $(call my-dir)
LLVM_ROOT_PATH := $(LOCAL_PATH)
LLVM_ENABLE_ASSERTION := false

include $(CLEAR_VARS)

subdirs := $(addprefix $(LOCAL_PATH)/,$(addsuffix /Android.mk, \
  lib/Analysis \
  lib/Analysis/IPA \
  lib/Archive \
  lib/AsmParser \
  lib/Bitcode/Reader \
  lib/Bitcode/Writer \
  lib/ExecutionEngine \
  lib/ExecutionEngine/Interpreter \
  lib/ExecutionEngine/JIT \
  lib/ExecutionEngine/MCJIT \
  lib/ExecutionEngine/RuntimeDyld \
  lib/CodeGen \
  lib/CodeGen/AsmPrinter \
  lib/CodeGen/SelectionDAG \
  lib/Linker \
  lib/MC \
  lib/MC/MCDisassembler \
  lib/MC/MCParser \
  lib/Object \
  lib/Support \
  lib/TableGen \
  lib/Target \
  lib/Target/ARM \
  lib/Target/ARM/AsmParser \
  lib/Target/ARM/InstPrinter \
  lib/Target/ARM/Disassembler \
  lib/Target/ARM/MCTargetDesc \
  lib/Target/ARM/TargetInfo \
  lib/Target/X86 \
  lib/Target/X86/AsmParser \
  lib/Target/X86/InstPrinter \
  lib/Target/X86/Disassembler \
  lib/Target/X86/MCTargetDesc \
  lib/Target/X86/TargetInfo \
  lib/Target/X86/Utils \
  lib/Transforms/IPO \
  lib/Transforms/InstCombine \
  lib/Transforms/Instrumentation \
  lib/Transforms/Scalar \
  lib/Transforms/Utils \
  lib/VMCore \
  utils/TableGen \
  tools/llvm-as \
  tools/llvm-link \
  ))

include $(LOCAL_PATH)/llvm.mk

include $(subdirs)

