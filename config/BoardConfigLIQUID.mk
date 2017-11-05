# Charger
ifneq ($(WITH_LIQUID_CHARGER),false)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.liquid
endif
