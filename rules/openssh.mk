# openssh package

OPENSSH_VERSION = 7.9p1-10+deb10u2

export OPENSSH_VERSION

OPENSSH_SERVER = openssh-server_$(OPENSSH_VERSION)_$(CONFIGURED_ARCH).deb
$(OPENSSH_SERVER)_SRC_PATH = $(SRC_PATH)/openssh
SONIC_MAKE_DEBS += $(OPENSSH_SERVER)

OPENSSH_CLIENT = openssh-client_$(OPENSSH_VERSION)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(OPENSSH_SERVER),$(OPENSSH_CLIENT)))

OPENSSH_SFTP_SERVER = openssh-sftp-server_$(OPENSSH_VERSION)_$(CONFIGURED_ARCH).deb
$(eval $(call add_derived_package,$(OPENSSH_SERVER),$(OPENSSH_SFTP_SERVER)))

# The .c, .cpp, .h & .hpp files under src/{$DBG_SRC_ARCHIVE list}
# are archived into debug one image to facilitate debugging.
#
DBG_SRC_ARCHIVE += openssh
