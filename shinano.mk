$(call inherit-product, device/qcom/msm8974/msm8974.mk)

PRODUCT_COPY_FILES := @inherit:device/qcom/common/common.mk

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product-if-exists, vendor/sony/shinano/shinano-vendor-blobs.mk)

PRODUCT_COPY_FILES += \
  device/sony/shinano/volume.cfg:system/etc/volume.cfg \
  system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf \
  device/sony/shinano/media_profiles.xml:system/etc/media_profiles.xml \

PRODUCT_PACKAGES += \
  bcm4339.ko \
  libandroid \

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

GAIA_DEV_PIXELS_PER_PX := 2.0

PRODUCT_NAME := shinano
PRODUCT_DEVICE := shinano
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := shinano
