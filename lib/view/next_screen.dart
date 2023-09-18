import 'package:business_app/constant/helper.dart';
import 'package:business_app/controller/app_controller.dart';
import 'package:business_app/utils/widgets/custom_button.dart';
import 'package:business_app/utils/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final AppController appController = Get.find();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: Helper.paddingAll,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('عمیر اقبال',style: Theme.of(context).textTheme.titleMedium),
                    Text('00000',style: Theme.of(context).textTheme.titleMedium),
                    Text('حسن گلاس',style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
                Helper.sized(),
                SizedBox(
                    height: 20,
                    width: width*0.9,
                    child: Divider(color: Theme.of(context).primaryColor, thickness: 0.9)),
                Helper.sized(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(appController.constIconList.length,
                          (index) => Image.asset(appController.constIconList[index])).reversed.toList(),
                ),
                ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    padding: Helper.paddingAll,
                    itemCount: appController.constantRecord.length,
                    itemBuilder: (context, index){
                      return tileCard(
                          context,
                          text: appController.constantRecord[index], height: height, width: width);
                    }),
                SizedBox(
                  width: width*0.8,
                  child: CustomTextField(
                    borderWidth: 2,
                    textInputType: TextInputType.text,
                    isReadOnly: false,
                    isFilled: true,
                    borderColor: Theme.of(context).primaryColor,
                    contentPadding: EdgeInsets.symmetric(vertical: height*0.07),
                    fillColor: const Color.fromRGBO(17, 75, 31, 1),
                  ),
                ),
                Helper.sized(),
                CustomButton(
                  radius: 4.84,
                  height: height*0.07,
                  width: width*0.5,
                  bgColor: Theme.of(context).primaryColor,
                  text: 'واپس',
                  style: Theme.of(context).textTheme.displayMedium!,
                  onTap: ()=> Get.back(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget tileCard(context, {required String text, required double height, required double width}) => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Image.asset('assets/images/sub.png', height: 30, width: 30,),
    Helper.sized(),
    Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: height*0.07,
      width: width*0.6,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(26, 83, 92, 1),
        borderRadius: BorderRadius.circular(5)
      ),
      alignment: Alignment.center,
      child: Text(text, style: Theme.of(context).textTheme.displayMedium),
    ),
    Helper.sized(),
    Image.asset('assets/images/add.png', height: 30, width: 30,),
  ],
);
