#Clone vibrator HAL
rm -rf vendor/qcom/opensource/vibrator
git clone https://github.com/itsxrp/android_vendor_qcom_opensource_vibrator.git vendor/qcom/opensource/vibrator
#Clang-14.0
git clone --depth=1 https://gitlab.com/Panchajanya1999/azure-clang prebuilts/clang/host/linux-x86/clang-14.0
