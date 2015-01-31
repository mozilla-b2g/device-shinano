$(call inherit-product, device/qcom/msm8974/msm8974.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)
$(call inherit-product-if-exists, vendor/sony/shinano/shinano-vendor-blobs.mk)

PRODUCT_COPY_FILES += \
  device/sony/shinano/ric:root/sbin/ric \
  device/sony/shinano/tad_static:root/sbin/tad_static \
  device/sony/shinano/wait4tad_static:root/sbin/wait4tad_static \
  device/sony/shinano/fstab.qcom:root/fstab.qcom \
  device/sony/shinano/init.target.rc:root/init.target.rc \
  device/sony/shinano/ueventd.qcom.rc:root/ueventd.qcom.rc \

PRODUCT_PROPERTY_OVERRIDES += \
  ro.semc.product.model=D6603 \
  ro.semc.ms_type_id=PM-0800-BV \
  ro.semc.version.fs=GLOBAL-LTE \
  ro.semc.product.name=XperiaZ3 \
  ro.semc.product.device=D66 \
  ro.semc.version.fs_revision=23.0.1.A.5.77 \
  ro.semc.version.cust=1288-5032 \
  ro.semc.version.cust_revision=R9B \
  ro.somc.customerid=440 \

PRODUCT_PACKAGES += \
  librecovery \
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
