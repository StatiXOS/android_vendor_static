include device/statix/sepolicy/common/sepolicy.mk
include vendor/statix/config/BoardConfigSoong.mk

ifeq ($(PRODUCT_USES_QCOM_HARDWARE), true)
include hardware/qcom-caf/common/BoardConfigSoong.mk
endif
