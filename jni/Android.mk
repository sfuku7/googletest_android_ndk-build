LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPP_EXTENSION := .cc
LOCAL_MODULE := libgtest
LOCAL_C_INCLUDES := include .
LOCAL_SRC_FILES := ../src/gtest-all.cc

include $(BUILD_STATIC_LIBRARY)
