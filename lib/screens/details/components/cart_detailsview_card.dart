import 'package:flutter/material.dart';

import '../../../components/price.dart';
import '../../../constants.dart';
import '../../../controllers/home_controller.dart';
import '../../../models/ProductItem.dart';
import './cart_details_view_card.dart';

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({Key? key, required this.controller}) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cart", style: Theme.of(context).textTheme.headline6),
          ...List.generate(
            controller.cart.length,
            (index) => CartDetailsViewCard(productItem: controller.cart[index]),
          ),
          SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Next - \$30"),
            ),
          )
        ],
      ),
    );
  }
}







// class CartDetailsViewCard extends StatelessWidget {
//   const CartDetailsViewCard({
//     Key? key,
//     required this.productItem,
//   }) : super(key: key);

//   final ProductItem productItem;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       contentPadding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
//       leading: CircleAvatar(
//         radius: 25,
//         backgroundColor: Colors.white,
//         backgroundImage: AssetImage(productItem.product!.image!),
//       ),
//       title: Text(
//         productItem.product!.title!,
//         style: Theme.of(context)
//             .textTheme
//             .subtitle1!
//             .copyWith(fontWeight: FontWeight.bold),
//       ),
//       trailing: FittedBox(
//         child: Row(
//           children: [
//             Price(amount: "20"),
//             Text(
//               "  x ${productItem.quantity}",
//               style: Theme.of(context)
//                   .textTheme
//                   .subtitle1!
//                   .copyWith(fontWeight: FontWeight.bold),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
