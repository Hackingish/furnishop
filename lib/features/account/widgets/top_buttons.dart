import 'package:flutter/material.dart';
import 'package:frunishop/features/account/services/account_services.dart';
import 'package:frunishop/features/account/widgets/account_button.dart';
import 'package:frunishop/features/customise_order/screen/customised_product_screen.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AcountButton(
              text: "Customised Orders",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomisedProduct()),
                );
              },
            ),
            AcountButton(
              text: "Address",
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AcountButton(
              text: 'Log Out',
              onTap: () => AccountServices().logOut(context),
            ),
            AcountButton(
              text: "WishList",
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
