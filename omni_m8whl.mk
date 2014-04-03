## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Omni Common
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m8_whl/device_m8_whl.mk)

## Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := m8whl
PRODUCT_DEVICE := m8whl
PRODUCT_NAME := omni_m8whl
PRODUCT_BRAND := htc
PRODUCT_MODEL := One M8
PRODUCT_MANUFACTURER := htc
