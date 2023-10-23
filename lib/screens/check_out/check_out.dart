import 'package:e_commerce2/widgets/primary_buttons/primary_button.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int groupValue = 1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 150,
        child: Padding(
          padding:const EdgeInsets.all(12.0),
          child: Column(children: [
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                 Text("150₼",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            const SizedBox(height: 12,),
            
            PrimaryButton(title: "CheckOut",
            onPressed: (){},),
          ]),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          const SizedBox(
            height: 36.0,
          ),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: Colors.green,
                width: 1.0,
              ),
            ),
            child: Row(
              children: [
               Radio(value:1, 
               groupValue: groupValue, 
               onChanged: (value){
                setState(() {
                  groupValue = value!;
                });
               }),
               const Icon(Icons.money),
              const  SizedBox(width: 10,),
              const Text("Cash on delivery",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),)
              ],
            ),
          ),

         const  SizedBox(height: 20.0,),

           Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: Colors.green,
                width: 1.0,
              ),
            ),
            child: Row(
              children: [
               Radio(
                
                value:2, 
               groupValue: groupValue, 
               onChanged: (value){
                setState(() {
                  groupValue = value!;
                });
               }),
               const Icon(Icons.money),
              const  SizedBox(width: 10,),
              const Text("Pay Online",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),)
              ],
            ),
          ),
      
        ]),
      ),
    );
  }
}

// class CustomRadio extends StatefulWidget {
//   final int value;
//   final int groupValue;
//   final void Function(int) onChanged;
//   const CustomRadio({Key? key, required this.value, required this.groupValue, required this.onChanged})
//       : super(key: key);

//   @override
//   _CustomRadioState createState() => _CustomRadioState();
// }

// class _CustomRadioState extends State<CustomRadio> {
//   @override
//   Widget build(BuildContext context) {
//     bool selected = (widget.value == widget.groupValue);

//     return InkWell(
//       onTap: () => widget.onChanged(widget.value),
//       child: Container(
//         margin: const EdgeInsets.all(4),
//         padding: const EdgeInsets.all(4),
//         decoration: BoxDecoration(shape: BoxShape.circle, color: selected ? const Color.fromARGB(255, 211, 211, 211): Colors.grey),
//         child: Icon(
//           Icons.circle,
//           size: 30,
//           color: selected ? Colors.green : Colors.grey,
//         ),
//       ),
//     );
//   }
// }