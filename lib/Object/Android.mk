LOCAL_PATH:= $(call my-dir)

object_SRC_FILES := \
  Binary.cpp \
  COFFObjectFile.cpp \
  ELFObjectFile.cpp \
  Error.cpp \
  MachOObject.cpp \
  MachOObjectFile.cpp \
  Object.cpp \
  ObjectFile.cpp

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(object_SRC_FILES)

LOCAL_MODULE := libLLVMObject

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)
