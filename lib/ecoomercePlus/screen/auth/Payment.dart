import 'package:ecommerceproject/controller/PaymentController.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class CreditCardPage extends StatelessWidget {
  final Paymentcontroller controller = Get.put(Paymentcontroller());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Card'),
      ),
      body: Obx(() {
        return Column(
          children: [
            CreditCardWidget(
              cardNumber: controller.cardNumber.value,
              expiryDate: controller.expiryDate.value,
              cardHolderName: controller.cardHolderName.value,
              cvvCode: controller.cvvCode.value,
              showBackView: controller.isCvvFocused.value,
              onCreditCardWidgetChange: (CreditCardBrand) {},
            ),
            CreditCardForm(
              onCreditCardModelChange: (CreditCardModel data) {
                controller.updateCardNumber(data.cardNumber);
                controller.updateExpiryDate(data.expiryDate);
                controller.updateCardHolderName(data.cardHolderName);
                controller.updateCvvCode(data.cvvCode);
                controller.toggleCvvFocus(data.isCvvFocused);
              }, cardNumber:controller.cardNumber.value,
              expiryDate: controller.expiryDate.value,
              cardHolderName: controller.cardHolderName.value,
              cvvCode: controller.cvvCode.value,  formKey: formKey,
            ),
          ],
        );
      }),
    );
  }


}