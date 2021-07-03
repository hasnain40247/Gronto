import 'package:flutter/material.dart';
import 'package:gronto/textStyles/poppinStyle.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({Key key}) : super(key: key);

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var h = screenSize.height;
    var w = screenSize.width;
    Orientation orientation = MediaQuery.of(context).orientation;
    return SafeArea(
        top: false,
        bottom: false,
        child: Container(
          height: screenSize.height,
          width: screenSize.width,
          child: ListView(
            shrinkWrap: true,
            children: [
              CustomTileSearch(productName: "Apple Juice", productPrice: "54", productQuantity: "200ml",),
              CustomTileSearch(productName: "Apple Juice", productPrice: "54", productQuantity: "200ml",),
              CustomTileSearch(productName: "Apple Juice", productPrice: "54", productQuantity: "200ml",),
              CustomTileSearch(productName: "Apple Juice", productPrice: "54", productQuantity: "200ml",),
              CustomTileSearch(productName: "Apple Juice", productPrice: "54", productQuantity: "200ml",),
              CustomTileSearch(productName: "Apple Juice", productPrice: "54", productQuantity: "200ml",),
              CustomTileSearch(productName: "Apple Juice", productPrice: "54", productQuantity: "200ml",),
              CustomTileSearch(productName: "Apple Juice", productPrice: "54", productQuantity: "200ml",),

            ],
          ),
        ));
  }
}

class CustomTileSearch extends StatelessWidget {
  const CustomTileSearch({
    Key key, @required this.productName, @required this.productPrice, this.productQuantity,
  }) : super(key: key);
final String productName;
  final String productPrice;
  final String productQuantity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [Expanded(
                flex: 2,
                child: Image.asset("assets/images/product.png")),

            Expanded(
                flex: 4,
                child: RichText(text: TextSpan(
                  text: productName,

                    style: poppinsStyle.copyWith(fontSize: 15, fontWeight: FontWeight.normal,letterSpacing: 0.4),
                  children: [
                    TextSpan(
                      text: productQuantity==null?"":"\n$productQuantity",
                 style: poppinsStyle.copyWith(fontSize: 15, fontWeight: FontWeight.normal,letterSpacing: 0.4)

                    ),
                    TextSpan(text: "\n₹$productPrice",style: poppinsStyle.copyWith(fontSize: 16,letterSpacing: 0.4))

                  ]
                ))
            ),
              Expanded(
                  flex: 2,
                  child:   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.red;

                              return Colors.white; // Use the component's default.
                            },
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(

                                  borderRadius: BorderRadius.circular(5.0),
                                  side: BorderSide(color: Colors.red, width: 1.0)))),
                      child: Text('Add',style: poppinsStyle.copyWith(fontSize: 12, fontWeight: FontWeight.normal),),
                      onPressed: () {},
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
