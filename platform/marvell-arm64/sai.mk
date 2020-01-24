# Marvell SAI

export MRVL_SAI_VERSION = 1.5.1
export MRVL_SAI_TAG = SONiC.201904
export MRVL_SAI = mrvllibsai_$(PLATFORM_ARCH)_$(MRVL_SAI_VERSION).deb

$(MRVL_SAI)_SRC_PATH = $(PLATFORM_PATH)/sai
#$(MRVL_SAI)_DEPENDS += $(MRVL_FPA)
SONIC_MAKE_DEBS += $(MRVL_SAI)
