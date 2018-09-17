$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/cmcc/m623c/kernel/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata \
    device/cmcc/m623c/kernel/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m623c
PRODUCT_NAME := omni_m623c
PRODUCT_BRAND := cmcc
PRODUCT_MODEL := m623c
PRODUCT_MANUFACTURER := cmcc

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=cmcc PRODUCT_NAME=m623c
