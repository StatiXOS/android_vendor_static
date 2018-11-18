aosp_devices=('angler' 'shamu' 'arm64')
caf_devices=('mata' 'beryllium')

function lunch_devices() {
    add_lunch_combo statix_${device}-user
    add_lunch_combo statix_${device}-userdebug
}

if [[ $( grep -i "caf" .repo/manifests/include.xml) ]]; then
    for device in ${caf_devices[@]}; do
        lunch_devices
    done
else
    for device in ${aosp_devices[@]}; do
        lunch_devices
    done
fi
