LOCAL_PATH := $(call my-dir)

###################### genc ######################
include $(CLEAR_VARS)

LOCAL_MODULE := genc


LOCAL_MODULE_CLASS := EXECUTABLES

intermediates := $(local-intermediates-dir)
GEN :=
GEN += $(intermediates)/func.c
GEN += $(intermediates)/func.h

#$(GEN): PRIVATE_INPUT_FILE :=
$(GEN): PRIVATE_CUSTOM_TOOL = cp -fp $< $@
$(GEN): $(intermediates)/%: $(LOCAL_PATH)/%.gen
	$(transform-generated-source)
LOCAL_GENERATED_SOURCES += $(GEN)

LOCAL_SRC_FILES :=
LOCAL_SRC_FILES += main.c
#LOCAL_SRC_FILES += func.c

LOCAL_C_INCLUDES += $(intermediates)

include $(BUILD_EXECUTABLE)

