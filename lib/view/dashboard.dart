import 'package:business_app/constant/helper.dart';
import 'package:business_app/constant/widgets/custom_button.dart';
import 'package:business_app/constant/widgets/custom_checkbox.dart';
import 'package:business_app/constant/widgets/custom_textfield.dart';
import 'package:business_app/controller/app_controller.dart';
import 'package:business_app/utils/header_bar.dart';
import 'package:business_app/view/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {

    final AppController appController = Get.find();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          height: height,
          width: width,
          padding: Helper.paddingAll,
          child: Column(
            children: [
              const HeaderWidget(
                name: "عمیر اقبال",
                id: "00000",
                shop: "حسن گلاس",
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('نام',style: Theme.of(context).textTheme.bodyMedium),
                          SizedBox(
                              width: width*0.65,
                              child: CustomTextField(
                                textInputType: TextInputType.text,
                                isReadOnly: false,
                                isFilled: true,
                                fillColor: Theme.of(context).cardColor,

                              )),
                        ],
                      ),
                      Helper.sized(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('فون نمبر',style: Theme.of(context).textTheme.bodyMedium),
                          SizedBox(
                              width: width*0.65,
                              child: CustomTextField(
                                textInputType: TextInputType.text,
                                isReadOnly: false,
                                isFilled: true,
                                fillColor: Theme.of(context).cardColor,

                              )),
                        ],
                      ),
                      Helper.sized(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('تک',style: Theme.of(context).textTheme.bodyMedium),
                          Container(
                              padding: const EdgeInsets.only(left: 8),
                              width: width*0.65,
                              height: MediaQuery.of(context).size.height*0.06,
                              decoration:  MyDecoration.decoration(radius: 5, color: Theme.of(context).cardColor),
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      value: null,
                                      icon: const Icon(Icons.arrow_drop_down, color: Colors.black, size: 26),
                                      // isExpanded: true,
                                      items: const [],
                                      iconEnabledColor: Colors.black,
                                      onChanged: (val) async {})
                              )),
                        ],
                      ),
                      Helper.sized(),
                      Row(
                        children: [
                          Text('مقررہ قیمت',style: Theme.of(context).textTheme.bodyMedium),
                          Switch(
                              activeColor: Theme.of(context).primaryColor,
                              activeTrackColor: Theme.of(context).secondaryHeaderColor,
                              value: true,
                              onChanged: (value){}),
                        ],
                      ),
                      Helper.sized(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('دکان کے پیسے',style: Theme.of(context).textTheme.bodyMedium),
                              Helper.sized(),
                              SizedBox(
                                  width: width*0.4,
                                  child: CustomTextField(
                                    textInputType: TextInputType.text,
                                    isReadOnly: false,
                                    isFilled: true,
                                    fillColor: Theme.of(context).secondaryHeaderColor,

                                  )),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('گاڑی کی قسم',style: Theme.of(context).textTheme.bodyMedium),
                              Helper.sized(),
                              Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  width: width*0.4,
                                  height: MediaQuery.of(context).size.height*0.06,
                                  decoration:  MyDecoration.decoration(radius: 5, color: Theme.of(context).secondaryHeaderColor),
                                  child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                          value: null,
                                          icon: const Icon(Icons.arrow_drop_down, color: Colors.black, size: 26),
                                          // isExpanded: true,
                                          items: const [],
                                          iconEnabledColor: Colors.black,
                                          onChanged: (val) async {})
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Helper.sized(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(left: 8),
                              width: width*0.4,
                              height: MediaQuery.of(context).size.height*0.06,
                              decoration:  MyDecoration.decoration(radius: 5, color: Theme.of(context).secondaryHeaderColor),
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      value: 'کہاں تک',
                                      hint: Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Text('کہاں تک', style: Theme.of(context).textTheme.titleMedium),
                                      ),
                                      icon: const Icon(Icons.arrow_drop_down, color: Colors.black, size: 26),
                                      // isExpanded: true,
                                      items: const [],
                                      iconEnabledColor: Colors.black,
                                      onChanged: (val) async {})
                              )),
                          Container(
                              padding: const EdgeInsets.only(left: 8),
                              width: width*0.4,
                              height: MediaQuery.of(context).size.height*0.06,
                              decoration:  MyDecoration.decoration(radius: 5, color: Theme.of(context).secondaryHeaderColor),
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      value: null,
                                      hint: Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Text('کب تک', style: Theme.of(context).textTheme.titleMedium),
                                      ),
                                      icon: const Icon(Icons.arrow_drop_down, color: Colors.black, size: 26),
                                      // isExpanded: true,
                                      items: const [],
                                      iconEnabledColor: Colors.black,
                                      onChanged: (val) async {})
                              )),
                        ],
                      ),
                      Helper.sized(),
                      Align(
                          alignment: Alignment.center,
                          child: Text('سامان', style: Theme.of(context).textTheme.bodyMedium)),
                      Helper.sized(height: 20),
                      CustomButton(
                        radius: 4.84,
                        height: height*0.07,
                        width: width*0.5,
                        bgColor: Colors.white,
                        text: 'سامان داخل کریں',
                        style: Theme.of(context).textTheme.titleMedium!,
                        onTap: ()=> Get.to(()=> const NextScreen(), transition: Transition.fadeIn),
                      ),
                      Helper.sized(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: width*0.1, height: width*0.1),
                          SizedBox(
                              width: width*0.5,
                              child: CustomTextField(
                                textInputType: TextInputType.text,
                                isReadOnly: false,
                                isFilled: true,
                                fillColor: Theme.of(context).secondaryHeaderColor,

                              )),
                          Obx(()=> CustomCheckBox(
                            bgColor: Theme.of(context).secondaryHeaderColor,
                            width: width*0.1,
                            height: width*0.1,
                            onTap: (){
                              appController.checkBoxValue.value = !appController.checkBoxValue.value;
                            },
                            iconColor: appController.checkBoxValue.value ? Theme.of(context).primaryColor : Theme.of(context).cardColor,
                          )),
                        ],
                      ),
                      Helper.sized(),
                      SizedBox(
                          width: width*0.75,
                          child: CustomTextField(
                            textInputType: TextInputType.text,
                            isReadOnly: false,
                            isFilled: true,
                            hint: '  فریج ۔ اےسی ۔ ٹیبل ۔ کرسی 4',
                            hintStyle: Theme.of(context).textTheme.displayMedium,
                            borderColor: Theme.of(context).secondaryHeaderColor,
                            contentPadding: EdgeInsets.symmetric(vertical: height*0.1),
                            fillColor: Theme.of(context).secondaryHeaderColor.withOpacity(0.2),
                          )),
                      Helper.sized(),
                      CustomButton(
                        radius: 4.84,
                        height: height*0.07,
                        width: width*0.5,
                        bgColor: Colors.white,
                        text: 'آرڈر درج کریں',
                        style: Theme.of(context).textTheme.titleMedium!,
                        onTap: ()=> Get.to(()=> const NextScreen()),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
