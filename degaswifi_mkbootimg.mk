DMKBOOTIMG := device/samsung/degaswifi/degas-mkbootimg
LZMA_RAMDISK := $(PRODUCT_OUT)/ramdisk-recovery-lzma.img

$(LZMA_RAMDISK): $(recovery_ramdisk)
	gunzip -f < $(recovery_ramdisk) | lzma -e > $@


$(INSTALLED_RECOVERYIMAGE_TARGET): $(DMKBOOTIMG) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo -e ${CL_CYN}"----- Making recovery image ------"${CL_RST}
	$(hide) $(DMKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made recovery image: $@"${CL_RST}

$(INSTALLED_BOOTIMAGE_TARGET): $(DMKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	$(hide) $(DMKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made boot image: $@"${CL_RST}
