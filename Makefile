export BUILD_TOPDIR=$(PWD)
export STAGING_DIR=$(BUILD_TOPDIR)/tmp

export MAKECMD=make --silent ARCH=mips CROSS_COMPILE=mips-openwrt-linux-uclibc-

# boot delay (time to autostart boot command)
export CONFIG_BOOTDELAY=1

# uncomment following line, to disable output in U-Boot console
#export DISABLE_CONSOLE_OUTPUT=1

tplink_mr3020:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-mr3020
tplink_mr3020:	export MAX_UBOOT_SIZE=64
tplink_mr3020:	export COMPRESSED_UBOOT=1
tplink_mr3020:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) mr3020_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size
	
tplink_wr703n:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-wr703n
tplink_wr703n:	export MAX_UBOOT_SIZE=64
tplink_wr703n:	export COMPRESSED_UBOOT=1
tplink_wr703n:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) wr703n_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_wr720n_v3_CH:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-wr720n_v3_CH
tplink_wr720n_v3_CH:	export MAX_UBOOT_SIZE=64
tplink_wr720n_v3_CH:	export COMPRESSED_UBOOT=1
tplink_wr720n_v3_CH:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) wr720n_v3_CH_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_wr710n:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-wr710n
tplink_wr710n:	export MAX_UBOOT_SIZE=64
tplink_wr710n:	export COMPRESSED_UBOOT=1
tplink_wr710n:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) wr710n_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_mr3040:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-mr3040
tplink_mr3040:	export MAX_UBOOT_SIZE=64
tplink_mr3040:	export COMPRESSED_UBOOT=1
tplink_mr3040:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) mr3040_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_mr10u:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-mr10u
tplink_mr10u:	export MAX_UBOOT_SIZE=64
tplink_mr10u:	export COMPRESSED_UBOOT=1
tplink_mr10u:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) mr10u_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_mr13u:   export UBOOT_FILE_NAME=uboot_for_tp-link_tl-mr13u
tplink_mr13u:   export MAX_UBOOT_SIZE=64
tplink_mr13u:   export COMPRESSED_UBOOT=1
tplink_mr13u:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) mr13u_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_wr740n_v4:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-wr740n_v4
tplink_wr740n_v4:	export MAX_UBOOT_SIZE=64
tplink_wr740n_v4:	export COMPRESSED_UBOOT=1
tplink_wr740n_v4:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) wr740n_v4_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_mr3220_v2:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-mr3220_v2
tplink_mr3220_v2:	export MAX_UBOOT_SIZE=64
tplink_mr3220_v2:	export COMPRESSED_UBOOT=1
tplink_mr3220_v2:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) mr3220_v2_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_wdr3600_43x0:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-wdr3600-43x0
tplink_wdr3600_43x0:	export MAX_UBOOT_SIZE=64
tplink_wdr3600_43x0:	export COMPRESSED_UBOOT=1
tplink_wdr3600_43x0:	export ETH_CONFIG=_s17
tplink_wdr3600_43x0:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) wdr3600_43x0_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_wdr3500:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-wdr3500
tplink_wdr3500:	export MAX_UBOOT_SIZE=64
tplink_wdr3500:	export COMPRESSED_UBOOT=1
tplink_wdr3500:	export ETH_CONFIG=_s27
tplink_wdr3500:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) wdr3500_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_mr3420_v2:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-mr3420_v2
tplink_mr3420_v2:	export MAX_UBOOT_SIZE=64
tplink_mr3420_v2:	export COMPRESSED_UBOOT=1
tplink_mr3420_v2:	export ETH_CONFIG=_s27
tplink_mr3420_v2:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) mr3420_v2_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_wr841n_v8:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-wr841n_v8
tplink_wr841n_v8:	export MAX_UBOOT_SIZE=64
tplink_wr841n_v8:	export COMPRESSED_UBOOT=1
tplink_wr841n_v8:	export ETH_CONFIG=_s27
tplink_wr841n_v8:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) wr841n_v8_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

tplink_wa830re_v2_wa801nd_v2:	export UBOOT_FILE_NAME=uboot_for_tp-link_tl-wa830re_v2_tl-wa801nd_v2
tplink_wa830re_v2_wa801nd_v2:	export MAX_UBOOT_SIZE=64
tplink_wa830re_v2_wa801nd_v2:	export COMPRESSED_UBOOT=1
tplink_wa830re_v2_wa801nd_v2:	export ETH_CONFIG=_s27
tplink_wa830re_v2_wa801nd_v2:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) wa830re_v2_wa801nd_v2_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

dlink_dir505:	export UBOOT_FILE_NAME=uboot_for_d-link_dir-505
dlink_dir505:	export MAX_UBOOT_SIZE=64
dlink_dir505:	export COMPRESSED_UBOOT=1
dlink_dir505:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) dir505_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

gs-oolite_v1_dev:	export UBOOT_FILE_NAME=uboot_for_gs-oolite_v1_dev
gs-oolite_v1_dev:	export MAX_UBOOT_SIZE=64
gs-oolite_v1_dev:	export COMPRESSED_UBOOT=1
gs-oolite_v1_dev:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) gs_oolite_v1_dev_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/tuboot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

8devices_carambola2:	export UBOOT_FILE_NAME=uboot_for_8devices_carambola2
8devices_carambola2:	export MAX_UBOOT_SIZE=256
8devices_carambola2:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) carambola2_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/u-boot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

dragino_v2_ms14:	export UBOOT_FILE_NAME=uboot_for_dragino_v2_ms14
dragino_v2_ms14:	export MAX_UBOOT_SIZE=192
dragino_v2_ms14:	export DEVICE_VENDOR=dragino
dragino_v2_ms14:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) dragino_v2_ms14_config
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) ENDIANNESS=-EB V=1 all
	@cp $(BUILD_TOPDIR)/u-boot/u-boot.bin $(BUILD_TOPDIR)/bin/temp.bin
	@make show_size

show_size:
	@echo -e "\n======= Preparing $(MAX_UBOOT_SIZE)KB file filled with 0xFF... ======="
	@`tr "\000" "\377" < /dev/zero | dd ibs=1k count=$(MAX_UBOOT_SIZE) of=$(BUILD_TOPDIR)/bin/$(UBOOT_FILE_NAME).bin`
	@echo -e "\n======= Copying U-Boot image... ======="
	@`dd if=$(BUILD_TOPDIR)/bin/temp.bin of=$(BUILD_TOPDIR)/bin/$(UBOOT_FILE_NAME).bin conv=notrunc`
	@`rm $(BUILD_TOPDIR)/bin/temp.bin`
	@echo -e "\n======= U-Boot image ready, size:" `wc -c < $(BUILD_TOPDIR)/bin/$(UBOOT_FILE_NAME).bin`" bytes =======\n"
	@`md5sum $(BUILD_TOPDIR)/bin/$(UBOOT_FILE_NAME).bin | awk '{print $$1}' | tr -d '\n' > $(BUILD_TOPDIR)/bin/$(UBOOT_FILE_NAME).md5`
	@`echo ' *'$(UBOOT_FILE_NAME).bin >> $(BUILD_TOPDIR)/bin/$(UBOOT_FILE_NAME).md5`
	@if [ "`wc -c < $(BUILD_TOPDIR)/bin/$(UBOOT_FILE_NAME).bin`" -gt "`echo '$(MAX_UBOOT_SIZE)*1024' | bc`" ]; then \
			echo -e "\n     **********************************"; \
            echo "     *   U-BOOT IMAGE SIZE TOO BIG!   *"; \
            echo -e "     **********************************\n"; \
    fi;

clean:
	@cd $(BUILD_TOPDIR)/u-boot/ && $(MAKECMD) distclean
	@rm -f $(BUILD_TOPDIR)/u-boot/httpd/fsdata.c

clean_all:	clean
	@echo Removing all binary images
	@rm -f $(BUILD_TOPDIR)/bin/*.bin
	@rm -f $(BUILD_TOPDIR)/bin/*.md5
