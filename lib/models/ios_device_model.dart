import 'package:device_info_plus/device_info_plus.dart';

class IOSDeviceModel {
  String? iconName;
  String? title;
  dynamic description;

  IOSDeviceModel({this.iconName, this.title, this.description});
}

IosDeviceInfo? info;
List<IOSDeviceModel> iosDeviceDataList = [
  IOSDeviceModel(
    iconName: "assets/images/device.png",
    title: "name",
  ),
  IOSDeviceModel(
    iconName: "assets/images/device.png",
    title: "systemName",
  ),
  IOSDeviceModel(
    iconName: "assets/images/version_sdk.png",
    title: "systemVersion",
  ),
  IOSDeviceModel(
    iconName: "assets/images/mobile_model.png",
    title: "model",
  ),
  IOSDeviceModel(
    iconName: "assets/images/device.png",
    title: "localizedModel",
  ),
  IOSDeviceModel(
    iconName: "assets/images/device.png",
    title: "identifierForVendor",
  ),
  IOSDeviceModel(
    iconName: "assets/images/info.png",
    title: "isPhysicalDevice",
  ),
  IOSDeviceModel(
    iconName: "assets/images/info.png",
    title: "utsname.sysname:",
  ),
  IOSDeviceModel(
    iconName: "assets/images/info.png",
    title: "utsname.nodename:",
  ),
  IOSDeviceModel(
    iconName: "assets/images/info.png",
    title: "utsname.release:",
  ),
  IOSDeviceModel(
    iconName: "assets/images/info.png",
    title: "utsname.version:",
  ),
  IOSDeviceModel(
    iconName: "assets/images/info.png",
    title: "utsname.machine:",
  ),
];
