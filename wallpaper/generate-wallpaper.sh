#!/bin/bash

#################################
#EXECUTE FROM Liquid ROOT DIRECTORY
#################################


CWD=`pwd`

#SOURCE IMAGE NAME
BASE_NAME=default_wallpaper.png

#SOURCE IMAGE LOCATION
BASE_WALLPAPER=$(echo "$PWD"/vendor/liquid/wallpaper/"$BASE_NAME")

#OUTPUT WALLPAPERS LOCATION
OUTPUT_PACKAGE=$(echo "$PWD"/vendor/liquid/overlay/common/frameworks/base/core/res/res/)

#STANDARD IMAGE SIZES
HDPI_RES="1080x960"
MDPI_RES="720x640"
NODPI_RES="960x800"
SW600DP_RES="1600x1280"
SW720DP_RES="1920x1280"
XHDPI_RES="1440x1280"
XXHDPI_RES="2160x1920"
XXXHDPI_RES="2880x2560"

#STANDARD FOLDER NAMING
HDPI_FOLDER="$OUTPUT_PACKAGE"drawable-hdpi/
MDPI_FOLDER="$OUTPUT_PACKAGE"drawable-mdpi/
NODPI_FOLDER="$OUTPUT_PACKAGE"drawable-nodpi/
SW600DP_FOLDER="$OUTPUT_PACKAGE"drawable-sw600dp-nodpi/
SW720DP_FOLDER="$OUTPUT_PACKAGE"drawable-sw720dp-nodpi/
XHDPI_FOLDER="$OUTPUT_PACKAGE"drawable-xhdpi/
XXHDPI_FOLDER="$OUTPUT_PACKAGE"drawable-xxhdpi/
XXXHDPI_FOLDER="$OUTPUT_PACKAGE"drawable-xxxhdpi/


#CONVERT IMAGES
mkdir -p "$HDPI_FOLDER" "$MDPI_FOLDER" "$NODPI_FOLDER" "$SW600DP_FOLDER" "$SW720DP_FOLDER" "$XHDPI_FOLDER" "$XXHDPI_FOLDER" "$XXXHDPI_FOLDER"
convert $BASE_WALLPAPER -resize $HDPI_RES^ -gravity center -extent $HDPI_RES $HDPI_FOLDER/$BASE_NAME
echo "$HDPI_FOLDER$BASE_NAME created"
convert $BASE_WALLPAPER -resize $MDPI_RES^ -gravity center -extent $MDPI_RES $MDPI_FOLDER/$BASE_NAME
echo "$MDPI_FOLDER$BASE_NAME created"
convert $BASE_WALLPAPER -resize $NODPI_RES^ -gravity center -extent $NODPI_RES $NODPI_FOLDER/$BASE_NAME
echo "$NODPI_FOLDER$BASE_NAME created"
convert $BASE_WALLPAPER -resize $SW600DP_RES^ -gravity center -extent $SW600DP_RES $SW600DP_FOLDER/$BASE_NAME
echo "$SW600DP_FOLDER$BASE_NAME created"
convert $BASE_WALLPAPER -resize $SW720DP_RES^ -gravity center -extent $SW720DP_RES $SW720DP_FOLDER/$BASE_NAME
echo "$SW720DP_FOLDER$BASE_NAME created"
convert $BASE_WALLPAPER -resize $XHDPI_RES^ -gravity center -extent $XHDPI_RES $XHDPI_FOLDER/$BASE_NAME
echo "$XHDPI_FOLDER$BASE_NAME created"
convert $BASE_WALLPAPER -resize $XXHDPI_RES^ -gravity center -extent $XXHDPI_RES $XXHDPI_FOLDER/$BASE_NAME
echo "$XXHDPI_FOLDER$BASE_NAME created"
convert $BASE_WALLPAPER -resize $XXXHDPI_RES^ -gravity center -extent $XXXHDPI_RES $XXXHDPI_FOLDER/$BASE_NAME
echo "$XXXHDPI_FOLDER$BASE_NAME created"
echo "ALL DONE!"

