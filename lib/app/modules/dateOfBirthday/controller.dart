import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
class DateOfBirthdayController extends GetxController{
  DateTime? pickedDate;
  TextEditingController dateinput = TextEditingController();
  openCalender() async {
    pickedDate = await showDatePicker(
        context: Get.context!, initialDate: DateTime.now(),
        firstDate: DateTime(1970), //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime.now()
    );
    if(pickedDate != null ){
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate!);
      dateinput.text = formattedDate;
    }else{
      print("Date is not selected");
    }
  }
}