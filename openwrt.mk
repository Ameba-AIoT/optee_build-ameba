include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_VERSION:=2021.10

include $(INCLUDE_DIR)/optee.mk
include $(INCLUDE_DIR)/package.mk

define OP-TEE/Default
  BUILD_TARGET:=amebad2
  OPTEE_IMAGE:=fip.bin
  DEFAULT:=y
endef

define OP-TEE/generic
  NAME:=amebad2
  BUILD_SUBTARGET:=generic
  OPTEE_CONFIG:=xxxx
endef

OPTEE_TARGETS := generic
OPTEE_MAKE_FLAGS:=DIR_RSDK=$(TOOLCHAIN_ROOT_DIR)

define Build/InstallDev
endef

$(eval $(call BuildPackage/OP-TEE))
