#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio_hal.period_size=192 \
    persist.vendor.audio.ambisonic.capture=false \
    persist.vendor.audio.ambisonic.auto.profile=false \
    ro.vendor.audio.sdk.fluencetype=none \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.audiorec=false \
    persist.vendor.audio.fluence.tmic.enabled=false \
    vendor.audio.apptype.multirec.enabled=false \
    vendor.audio.record.multiple.enabled=false \
    persist.vendor.audio.spv3.enable=true \
    persist.vendor.audio.avs.afe_api_version=2 \
    vendor.audio.tunnel.encode=false \
    persist.vendor.audio.ras.enabled=false \
    vendor.audio.offload.buffer.size.kb=64 \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    vendor.audio.offload.track.enable=true \
    audio.deep_buffer.media=true \
    vendor.voice.path.for.pcm.voip=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.safx.pbe.enabled=false \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.hal.boot.timeout.ms=20000 \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.hw.aac.encoder=true \
    persist.vendor.audio.hifi.int_codec=true \
    vendor.audio.keep_alive.disabled=false \
    vendor.audio.volume.headset.gain.depcal=true \
    persist.vendor.audio.fluence.voicecomm=true \
    vendor.audio.feature.a2dp_offload.enable=true \
    vendor.audio.feature.afe_proxy.enable=true \
    vendor.audio.feature.anc_headset.enable=true \
    vendor.audio.feature.battery_listener.enable=false \
    vendor.audio.feature.compr_cap.enable=false \
    vendor.audio.feature.compress_in.enable=false \
    vendor.audio.feature.compress_meta_data.enable=true \
    vendor.audio.feature.compr_voip.enable=false \
    vendor.audio.feature.concurrent_capture.enable=false \
    vendor.audio.feature.custom_stereo.enable=true \
    vendor.audio.feature.display_port.enable=true \
    vendor.audio.feature.dsm_feedback.enable=false \
    vendor.audio.feature.dynamic_ecns.enable=false \
    vendor.audio.feature.ext_hw_plugin.enable=false \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.external_speaker_tfa.enable=false \
    vendor.audio.feature.fluence.enable=true \
    vendor.audio.feature.fm.enable=true \
    vendor.audio.feature.hdmi_edid.enable=true \
    vendor.audio.feature.hdmi_passthrough.enable=true \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.hifi_audio.enable=true \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=true \
    vendor.audio.feature.multi_voice_session.enable=true \
    vendor.audio.feature.keep_alive.enable=false \
    vendor.audio.feature.kpi_optimize.enable=true \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.ras.enable=true \
    vendor.audio.feature.record_play_concurency.enable=false \
    vendor.audio.feature.src_trkn.enable=true \
    vendor.audio.feature.spkr_prot.enable=true \
    vendor.audio.feature.ssrec.enable=true \
    vendor.audio.feature.usb_offload.enable=true \
    vendor.audio.feature.usb_offload_burst_mode.enable=false \
    vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
    vendor.audio.feature.deepbuffer_as_primary.enable=false \
    vendor.audio.feature.vbat.enable=true \
    vendor.audio.feature.wsa.enable=false \
    vendor.audio.feature.audiozoom.enable=false \
    vendor.audio.feature.snd_mon.enable=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qcom.bluetooth.enable.splita2dp=true \
    persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac \
    persist.vendor.qcom.bluetooth.aac_frm_ctl.enabled=true \
    persist.vendor.qcom.bluetooth.twsp_state.enabled=false \
    persist.vendor.qcom.bluetooth.soc=cherokee \
    vendor.qcom.bluetooth.soc=cherokee \
    persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac-ldac \
    persist.bluetooth.a2dp_offload.cap=sbc-aac-aptx-aptxhd-ldac \
    persist.vendor.bt.aac_frm_ctl.enabled=true \
    ro.vendor.bluetooth.wipower=false \
    persist.vendor.qcom.bluetooth.scram.enabled=true \
    persist.vendor.qcom.bluetooth.aac_vbr_ctl.enabled=false \
    persist.bluetooth.bluetooth_audio_hal.disabled=true

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.gyro.disable=0

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.heapgrowthlimit=384m \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=4m \
    dalvik.vm.heapmaxfree=16m

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.display.ad.sdr_calib_data=/vendor/etc/OPPO_OLED_AD_calib.cfg \
    ro.vendor.display.ad=1 \
    ro.vendor.display.cabl=2 \
    ro.vendor.display.sensortype=2 \
    vendor.display.enable_default_color_mode=1

# Display density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=420

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Fling
PRODUCT_PROPERTY_OVERRIDES += \
    ro.min.fling_velocity=160 \
    ro.max.fling_velocity=20000

# FM
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.hw.fm.init=0

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.callstack=1 \
    debug.egl.hw=0 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1 \
    persist.sys.sf.color_saturation=1.0 \
    ro.opengles.version=196610 \
    vendor.gralloc.disable_ubwc=0 \
    ro.hardware.vulkan=adreno \
    ro.hardware.egl=adreno

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    debug.sf.use_phase_offsets_as_durations=1 \
    debug.sf.late.sf.duration=10500000 \
    debug.sf.late.app.duration=20500000 \
    debug.sf.early.sf.duration=16000000 \
    debug.sf.early.app.duration=16500000 \
    debug.sf.earlyGl.sf.duration=13500000 \
    debug.sf.earlyGl.app.duration=21000000 \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=2 \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.has_HDR_display=true \
    ro.surface_flinger.use_color_management=true \
    ro.surface_flinger.wcg_composition_dataspace=143261696

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.dbg.ims_volte_enable=1 \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    persist.vendor.radio.data_con_rprt=1

# Keystore
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore_desede=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    ro.media.recorder-max-base-layer-fps=60

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.vendor.at_library=libqti-at.so \
    persist.vendor.qti.games.gt.prof=1

# Qualcomm System Daemon
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.qcomsysd.enabled=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=dsds \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.aware.interface=wifi-aware0

# ZRAM writeback
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=180 \
    ro.zram.periodic_wb_delay_hours=24
