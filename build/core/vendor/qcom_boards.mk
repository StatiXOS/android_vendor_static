# Platform name variables - used in makefiles everywhere
ATOLL := atoll #SM7125
KONA := kona #SM8250
LITO := lito #SM7250
BENGAL := bengal #SM6115
MSMNILE := msmnile #SM8150
MSMSTEPPE := sm6150
TRINKET := trinket #SM6125
LAHAINA := lahaina #SM8350

# Board platforms lists to be used for
# PRODUCT_BOARD_PLATFORM specific featurization
# We will only be including msm8917-msm8996 4.9 variants.
QCOM_BOARD_PLATFORMS += msm8917
QCOM_BOARD_PLATFORMS += msm8937
QCOM_BOARD_PLATFORMS += msm8952
QCOM_BOARD_PLATFORMS += msm8953
QCOM_BOARD_PLATFORMS += msm8996
QCOM_BOARD_PLATFORMS += msm8998

QCOM_BOARD_PLATFORMS += sdm660
QCOM_BOARD_PLATFORMS += sdm845

QCOM_BOARD_PLATFORMS += $(ATOLL)
QCOM_BOARD_PLATFORMS += $(KONA)
QCOM_BOARD_PLATFORMS += $(LITO)
QCOM_BOARD_PLATFORMS += $(BENGAL)
QCOM_BOARD_PLATFORMS += $(TRINKET)
QCOM_BOARD_PLATFORMS += $(MSMSTEPPE)
QCOM_BOARD_PLATFORMS += $(MSMNILE)
QCOM_BOARD_PLATFORMS += $(LAHAINA)
