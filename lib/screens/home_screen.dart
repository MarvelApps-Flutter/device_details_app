import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/android_device_model.dart';
import '../models/ios_device_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  AndroidDeviceInfo? data;
  AndroidDeviceInfo? _deviceData;
  IosDeviceInfo? iosData;
  IosDeviceInfo? _iosDeviceData;
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    
    try {
      if (Platform.isAndroid) {
        data = await deviceInfoPlugin.androidInfo;
      } else if (Platform.isIOS) {
        iosData = await deviceInfoPlugin.iosInfo;
      }
    } on PlatformException {
      log('Failed to get platform version.');
    }

    setState(() {
      _deviceData = data;
      _iosDeviceData = iosData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            Platform.isAndroid
                ? 'Android Device Info'
                : Platform.isIOS
                    ? 'iOS Device Info'
                    : '',
          ),
        ),
        body: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemBuilder: (context, index) {
              if (Platform.isAndroid && _deviceData != null) {
                for (int i = 0; i < androidDeviceDataList.length; i++) {
                  androidDeviceDataList[0].description =
                      _deviceData!.version.securityPatch;
                  androidDeviceDataList[1].description =
                      _deviceData!.version.sdkInt.toString();
                  androidDeviceDataList[2].description =
                      _deviceData!.version.release;
                  androidDeviceDataList[3].description =
                      _deviceData!.version.previewSdkInt.toString();
                  androidDeviceDataList[4].description =
                      _deviceData!.version.incremental;
                  androidDeviceDataList[5].description =
                      _deviceData!.version.codename;
                  androidDeviceDataList[6].description =
                      _deviceData!.version.baseOS;
                  androidDeviceDataList[7].description = _deviceData!.board;
                  androidDeviceDataList[8].description =
                      _deviceData!.bootloader;
                  androidDeviceDataList[9].description = _deviceData!.brand;
                  androidDeviceDataList[10].description = _deviceData!.device;
                  androidDeviceDataList[11].description = _deviceData!.display;
                  androidDeviceDataList[12].description =
                      _deviceData!.fingerprint;
                  androidDeviceDataList[13].description = _deviceData!.hardware;
                  androidDeviceDataList[14].description = _deviceData!.host;
                  androidDeviceDataList[15].description = _deviceData!.id;
                  androidDeviceDataList[16].description =
                      _deviceData!.manufacturer;
                  androidDeviceDataList[17].description = _deviceData!.model;
                  androidDeviceDataList[18].description = _deviceData!.product;
                  androidDeviceDataList[19].description =
                      _deviceData!.supported32BitAbis.join(',');
                  androidDeviceDataList[20].description =
                      _deviceData!.supported64BitAbis.join(',');
                  androidDeviceDataList[21].description =
                      _deviceData!.supportedAbis.join(',');
                  androidDeviceDataList[22].description = _deviceData!.tags;
                  androidDeviceDataList[23].description = _deviceData!.type;
                  androidDeviceDataList[24].description =
                      _deviceData!.isPhysicalDevice == true ? "true" : "false";
                  androidDeviceDataList[25].description = _deviceData!.id;
                  androidDeviceDataList[26].description = _deviceData!
                      .systemFeatures
                      .take(5)
                      .join(',')
                      .replaceAll(',', '\n');
                }
              }
              if (Platform.isIOS && _iosDeviceData != null) {
                for (int i = 0; i < iosDeviceDataList.length; i++) {
                  iosDeviceDataList[0].description = _iosDeviceData!.name;
                  iosDeviceDataList[1].description = _iosDeviceData!.systemName;
                  iosDeviceDataList[2].description =
                      _iosDeviceData!.systemVersion;
                  iosDeviceDataList[3].description = _iosDeviceData!.model;
                  iosDeviceDataList[4].description =
                      _iosDeviceData!.localizedModel;
                  iosDeviceDataList[5].description =
                      _iosDeviceData!.identifierForVendor;
                  iosDeviceDataList[6].description =
                      _iosDeviceData!.isPhysicalDevice == true
                          ? "true"
                          : "false";
                  iosDeviceDataList[7].description =
                      _iosDeviceData!.utsname.sysname;
                  iosDeviceDataList[8].description =
                      _iosDeviceData!.utsname.nodename;
                  iosDeviceDataList[9].description =
                      _iosDeviceData!.utsname.release;
                  iosDeviceDataList[10].description =
                      _iosDeviceData!.utsname.version;
                  iosDeviceDataList[11].description =
                      _iosDeviceData!.utsname.version;
                }
              }

              return Platform.isAndroid && androidDeviceDataList.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        dense: true,
                        leading: _deviceData != null && Platform.isAndroid
                            ? Image.asset(
                                androidDeviceDataList[index].iconName!,
                                color: Colors.black,
                                height: 30,
                                width: 30,
                              )
                            : Image.asset(
                                iosDeviceDataList[index].iconName!,
                                color: Colors.black,
                                height: 30,
                                width: 30,
                              ),
                        title: _deviceData != null
                            ? Text(Platform.isAndroid
                                ? androidDeviceDataList[index].title!
                                : iosDeviceDataList[index].title!,
                                style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black)
                                )
                            : Container(),
                        subtitle: _deviceData != null
                            ? Text(Platform.isAndroid
                                ? androidDeviceDataList[index].description!
                                : iosDeviceDataList[index].description!,
                                style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: Colors.grey)
                                )
                            : Container(),
                      ),
                    )
                  : Platform.isIOS && iosDeviceDataList.isNotEmpty
                      ? ListTile(
                          leading: _iosDeviceData != null && Platform.isIOS
                              ? Image.asset(
                                  iosDeviceDataList[index].iconName!,
                                  color: Colors.black,
                                  height: 30,
                                  width: 30,
                                )
                              : Image.asset(
                                  androidDeviceDataList[index].iconName!,
                                  color: Colors.black,
                                  height: 30,
                                  width: 30,
                                ),
                          title: _iosDeviceData != null
                              ? Text(Platform.isAndroid
                                  ? androidDeviceDataList[index].title!
                                  : iosDeviceDataList[index].title!,
                                  style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black)
                                  )
                              : Container(),
                          subtitle: _iosDeviceData != null
                              ? Text(Platform.isAndroid
                                  ? androidDeviceDataList[index].description!
                                  : iosDeviceDataList[index].description!,
                                  style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                color: Colors.grey)
                                  )
                              : Container())
                      : Container();
            },
            itemCount: Platform.isAndroid
                ? androidDeviceDataList.length
                : Platform.isIOS
                    ? iosDeviceDataList.length
                    : 0));
  }
}
