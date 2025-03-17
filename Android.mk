LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),itc)

RADIO_FILES := $(wildcard $(LOCAL_PATH)/radio/*)
$(foreach f, $(notdir $(RADIO_FILES)), \
    $(call add-radio-file,radio/$(f)))

$(warning ITC firmware is included!!)

endif
