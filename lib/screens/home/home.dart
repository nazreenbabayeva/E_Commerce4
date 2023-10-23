import 'package:e_commerce2/constants/routes.dart';
import 'package:e_commerce2/models/product_model/product_model.dart';
import 'package:e_commerce2/widgets/product_details/product_details.dart';
import 'package:e_commerce2/widgets/top_titles/top_titles.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body: SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Padding(
  padding: const EdgeInsets.all(12.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Yatayda sağa hizalama
        children: [
          TopTitles(title: "BOLLO", subtitle: "It is your healthy eating app!"),
          Padding(
            padding:  EdgeInsets.only(top:75.0),
            child: Icon(Icons.notifications, color: Colors.green, size: 28),
          ), // Notification icon
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: TextFormField(
          decoration: const InputDecoration(hintText: "Search..."),
        ),
      )
    ],
  ),
),
        const SizedBox(
          height: 2.0,
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Categories",
            style: TextStyle(
              color: Colors.green,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
       SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: categoriesList
        .map(
          (e) => Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Card(
              color: Colors.white,
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0), // İçerideki fotoğrafa vermek istediğiniz padding
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.network(e),
                ),
              ),
            ),
          ),
        )
        .toList(),
  ),
),
        const SizedBox(
          height: 12,
        ),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "Best products",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:1.0),
          child: GridView.builder(
            padding: const EdgeInsets.only(bottom: 50),
            itemCount: bestProducts.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (ctx, index) {
              ProductModel singleProduct = bestProducts[index];
              return Container(
                color: Colors.grey[100],
                child: Column(
                  children: [
                    const SizedBox(
                      height: 12.0,
                    ),
                    Image.network(
                      singleProduct.image,
                      height: 80,
                      width: 80,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      singleProduct.name,
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Price: ${singleProduct.price}₼"),
                    const SizedBox(
                      height: 8.0,
                    ),
                    SizedBox(
                      height: 45,
                      width: 140,
                      child: OutlinedButton(
                        onPressed: () {
                          Routes.instance.push(
                            widget: ProductDetails(
                              singleProduct: singleProduct,
                            ),
                            context: context,
                          );
                        },
                        child: const Text(
                          "Buy",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 117, 117, 117)),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  ),
);
  }
}

List<String> categoriesList = [
  "https://freepngimg.com/download/fruit/174260-fresh-fruits-png-download-free.png",
  "https://toppng.com/uploads/thumbnail/vegetables-images-png-vegetables-115632631134yzkcauzw5.png",
  "https://media.istockphoto.com/id/645016668/photo/honey-jar-lemons-and-ginger.jpg?s=170667a&w=0&k=20&c=BeC1lFnoJwaJe5YaxX36bsAGymk9aWxyKjC6X7pYcVo=",
  "https://watermark.lovepik.com/photo/48005/2020.jpg_wh1200.jpg",
  "https://freepngimg.com/download/bread/22500-7-bread-file.png",
  "https://www.nicepng.com/png/full/957-9579536_dairy-transparent-dairy-products-png.png",
];

List<ProductModel> bestProducts = [
  ProductModel(
      image:
          "https://parspng.com/wp-content/uploads/2023/02/honeypng.parspng.com-10.png",
      id: "1",
      name: "Honey",
      price: "10",
      description:
          "Honey is a natural sweet substance produced by honey bees from the nectar of flowers.It's important to note that the quality and potential health benefits of honey can vary depending on its source and processing. Raw, unprocessed honey is generally considered to be the most nutritious. ",
      status: "pending",
      isFavourite: false),
  ProductModel(
      image:
          "https://static.vecteezy.com/system/resources/previews/008/508/374/original/lemon-on-isolated-background-png.png",
      id: "2",
      name: "Lemon",
      price: "3",
      description:
          "Lemon from Lankaran is a natural. Lemons are known for their high vitamin C content. Vitamin C is an antioxidant that supports the immune system, promotes skin health, and aids in wound healing.",
      status: "pending",
      isFavourite: false),
  ProductModel(
      image: "https://www.pngmart.com/files/22/Coconut-milk-PNG-Pic.png",
      id: "3",
      name: "Coconut Milk",
      price: "17",
      description:
          "Coconut milk contains lauric acid, a type of saturated fat that may raise levels of beneficial HDL cholesterol in the body, potentially reducing the risk of heart disease. Additionally, the medium-chain triglycerides (MCTs) in coconut milk may have a positive impact on heart health.",
      status: "pending",
      isFavourite: false),
  ProductModel(
      image: "https://freepngimg.com/thumb/walnut/6-2-walnut-transparent.png",
      id: "4",
      name: "Nut",
      price: "17",
      description:
          "Nut from Zaqatala Nuts, such as almonds, walnuts, and pistachios, are rich in healthy fats, including monounsaturated and polyunsaturated fats, which can help reduce bad cholesterol levels and lower the risk of heart disease.",
      status: "pending",
      isFavourite: false),
  ProductModel(
      image:
          "https://parspng.com/wp-content/uploads/2022/09/teapng.parspng.com-7.png",
      id: "5",
      name: "Tea Leaf",
      price: "8",
      description:
          "Green Tea: Made from unoxidized tea leaves, green tea has a fresh, grassy flavor and is known for its antioxidants and potential health benefits.",
      status: "pending",
      isFavourite: false),
];
