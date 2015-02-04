$(call inherit-product, device/qcom/msm8974/msm8974.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product-if-exists, vendor/sony/shinano/shinano-vendor-blobs.mk)

PRODUCT_PACKAGES += \
  bcm4339.ko \

# for Gecko
PRODUCT_PROPERTY_OVERRIDES += \
  ro.moz.has_home_button=0

GAIA_DEV_PIXELS_PER_PX := 2.0

PRODUCT_NAME := shinano
PRODUCT_DEVICE := shinano
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := shinano
