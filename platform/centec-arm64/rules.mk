include $(PLATFORM_PATH)/sai.mk
include $(PLATFORM_PATH)/docker-syncd-centec.mk
include $(PLATFORM_PATH)/docker-syncd-centec-rpc.mk
include $(PLATFORM_PATH)/one-image.mk
include $(PLATFORM_PATH)/libsaithrift-dev.mk
include $(PLATFORM_PATH)/docker-ptf-centec.mk
include $(PLATFORM_PATH)/linux-kernel-arm64.mk
include $(PLATFORM_PATH)/platform-modules-centec-e530.mk

SONIC_ALL += $(SONIC_ONE_IMAGE) \
             $(DOCKER_FPM)
#             $(DOCKER_SYNCD_CENTEC_RPC)

# Inject centec sai into syncd
$(SYNCD)_DEPENDS += $(CENTEC_SAI)
$(SYNCD)_UNINSTALLS += $(CENTEC_SAI)

# Runtime dependency on centec sai is set only for syncd
$(SYNCD)_RDEPENDS += $(CENTEC_SAI)
