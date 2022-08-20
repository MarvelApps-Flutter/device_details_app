import 'package:device_info_plus/device_info_plus.dart';

class AndroidDeviceModel {
  String? iconName;
  String? title;
  dynamic description;
  AndroidDeviceInfo? data;

  AndroidDeviceModel({this.iconName, this.title, this.description, this.data});
}

AndroidDeviceInfo? build;
AndroidDeviceModel androidDeviceData = AndroidDeviceModel();
List<AndroidDeviceModel> androidDeviceDataList = [
  AndroidDeviceModel(
    iconName: "assets/images/security_patch.png",
    title: "version.securityPatch",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/version_sdk.png",
    title: "version.sdkInt",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/version_release.png",
    title: "version.release",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/version_preview_sdk.png",
    title: "version.previewSdkInt",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/version_incremental.png",
    title: "version.incremental",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/device.png",
    title: "version.codename",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/device.png",
    title: "version.baseOS",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/device.png",
    title: "board",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/bootloader.png",
    title: "bootloader",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/brand.png",
    title: "brand",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/device.png",
    title: "device",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/display.png",
    title: "display",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/fingerprint.png",
    title: "fingerprint",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/hardware.png",
    title: "hardware",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/host.png",
    title: "host",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/mobile_id.png",
    title: "id",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/info.png",
    title: "manufacturer",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/mobile_model.png",
    title: "model",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/mobile_product.png",
    title: "product",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/info.png",
    title: "supported32BitAbis",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/info.png",
    title: "supported64BitAbis",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/info.png",
    title: "supportedAbis",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/device.png",
    title: "tags",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/info.png",
    title: "type",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/device.png",
    title: "isPhysicalDevice",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/info.png",
    title: "androidId",
  ),
  AndroidDeviceModel(
    iconName: "assets/images/info.png",
    title: "systemFeatures",
  ),
];
