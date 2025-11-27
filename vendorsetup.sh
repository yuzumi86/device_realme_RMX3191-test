echo "starting depencies"
echo "REMOVING UNUSED DEPENCIES"
rm -rf ./hardware/oplus/interfaces/
rm -rf ./vendor/realme/RMX3191-ims
rm -rf ./vendor/realme/even-ims
rm -rf ./vendor/realme/RMX3191
rm -rf ./vendor/realme/even
rm -rf ./device/realme/even
rm -rf ./hardware/mediatek/InCallService
rm -rf ./device/realme/RMX3191-kernel
echo "succesfully"

echo "clone vt"
git clone --depth=1 https://github.com/cumaRull/vendor_realme_RMX3191.git -b rui4-oss-dev ./vendor/realme/RMX3191
git clone --depth=1 https://github.com/kdrag0n/proton-clang.git -b master ./prebuilts/clang/host/linux-x86/mylitle-clang
git clone --recurse-submodules https://github.com/yuzumi86/kernel_realme_even-4.19.git -b bpf --depth=1 kernel/realme/RMX3191
git clone https://github.com/LineageOS/android_hardware_oplus.git -b lineage-20 ./hardware/oplus
git clone https://github.com/cumaRull/android_hardware_mediatek.git -b lineage-20 ./hardware/mediatek

rm -rf ./hardware/mediatek/InCallService
rm -rf ./hardware/oplus/interfaces/
