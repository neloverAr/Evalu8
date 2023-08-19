import 'package:evalu8/app/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/theme/app_text_style.dart';
import 'AppButton.dart';

class AttentionDialog extends StatelessWidget {
  const AttentionDialog(
      {super.key,
        required this.description,
        required this.onTap,
        this.okText,
        this.trailing,
        this.tittleWidget,
        this.isHtml,
        this.title,
        this.cancelText,
        this.icon,
        this.showTittle = true,
        this.iconColor,
        this.onCancel});

  final String description;
  final String? title;
  final Widget? tittleWidget;
  final String? okText;
  final String? cancelText;
  final Widget? trailing;
  final bool? isHtml;
  final bool? showTittle;

  final Function onTap;
  final Function? onCancel;
  final String? icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Dialog(
        insetPadding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 60,
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error,size: 80,color: Colors.red,),
              if (showTittle == true) ...[
                SizedBox(height: 16,),
                SizedBox(
                  width: 250,
                  child: tittleWidget ??
                      Text(
                        title ?? "Error",
                        style: AppTextStyles.b14.copyWith(
                          color: const Color(0xff030406),
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                ),
              ],
              SizedBox(height: 12,),
              if (isHtml != true)
                Text(
                  description,
                  style: AppTextStyles.b14.copyWith(
                    color: const Color(0xff030406),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              if (trailing != null)
                const SizedBox(
                  height: 8,
                ),
              if (trailing != null) trailing!,
              SizedBox(height: 16,),
              Row(
                children: [
                  if (cancelText != null) ...[
                    Expanded(
                      child: AppButton(
                        borderRadius: 15,
                        fontSize: 14,
                        height: 59,
                        elevation: 0,
                        isLoading: false,
                        title: cancelText ?? "cancel",
                        onPressed: () async {
                          if (onCancel == null) {
                            Get.back();
                          } else {
                            onCancel!();
                          }
                        },
                        color: secondaryColor,
                        fontColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                  Expanded(
                    child: AppButton(
                      borderRadius: 15,
                      fontSize: 14,
                      height: 59,
                      elevation: 0,
                      isLoading: false,
                      title: okText?.tr ?? "ok".tr,
                      onPressed: () async {
                        onTap();
                      },
                      color: primaryColor,
                      fontColor: Colors.white,
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                ],
              ),
              SizedBox(height: 8,)
            ],
          ),
        ),
      ),
    );
  }
}
