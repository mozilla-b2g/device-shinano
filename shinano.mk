$(call inherit-product-if-exists, device/sony/shinano-common/device.mk)
$(call inherit-product-if-exists, vendor/sony/shinano/shinano-vendor-blobs.mk)

# for Gecko
PRODUCT_PROPERTY_OVERRIDES += \
  ro.moz.has_home_button=0 \
  ro.semc.product.model=D6603 \
  ro.semc.version.fs=GLOBAL-LTE \
  ro.semc.version.fs_revision=23.0.1.A.5.77 \
  ro.usb.pid_suffix=1BA \

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
  ro.semc.version.sw=1282-2729 \
  ro.semc.version.sw_revision=23.0.1.A.5.77 \
  ro.semc.version.sw_variant=GENERIC \
  ro.semc.version.sw_type=user \

GAIA_DEV_PIXELS_PER_PX := 2.25

BOOTANIMATION_ASSET_SIZE := 1080p

EXPORT_DEVICE_PREFS := $(LOCAL_PATH)/prefs

PRODUCT_NAME := shinano
PRODUCT_DEVICE := shinano
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia Z3 (B2G)
