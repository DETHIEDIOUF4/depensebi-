import 'package:banking_app/utilities/themeStyles.dart';
import 'package:banking_app/widgets/transactionCard.dart';
import 'package:flutter/material.dart';
import 'dart:convert'; 
import 'package:flutter/services.dart' show rootBundle; 

class RecentTransactions extends StatefulWidget {
  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}



class _RecentTransactionsState extends State<RecentTransactions> {
  var jsonData;

  @override
  void initState() {
    super.initState();
    loadJsonAsset();
  }

  Future<void> loadJsonAsset() async {
    final String jsonString = await rootBundle.loadString('assets/data.json');
    var data = jsonDecode(jsonString);
    setState(() {
      jsonData = data;
    });
    print(jsonData);
    print(jsonData['transactions']);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // Your existing code...

          Flexible(
            flex: 1,
            child: ListView(
              // shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: jsonData != null && jsonData['transactions'] != null
                  ? jsonData['transactions'].map<Widget>((transaction) {
                      return TransactionCard(
                        color: Colors.black,
                        letter: transaction['letter'],
                        title: transaction['title'],
                        subTitle: transaction['subTitle'],
                        price: transaction['price'],
                      );
                    }).toList()
                  : [],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                // Add logic to save the new transaction
                // For simplicity, just close the dialog in this example
                addNewTransaction();
              },
              child: Text('Nouvelle depense  +  ',style: TextStyle(color: Colors.red)),
            )
        ],
      ),
    );
    
  }
  void addNewTransaction() {
    // You can implement logic to add a new transaction here
    // For example, you can show a dialog to input new transaction details
    // and then add it to the 'transactions' list
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
         insetPadding: EdgeInsets.all(10),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), // Adjust padding as needed
        backgroundColor: Colors.white,
        
          title: Text('Ajout nouvelle depense ' , style: ThemeStyles.titlecolor),
          // Add input fields for new transaction details here
          content:  Container ( 
                    color:Colors.white,
                    child:Padding(
                    padding: const EdgeInsets.all(10),
                    
                    child: Form(
                      
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Motif",
                              icon: Icon(Icons.add_task_outlined),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Nom produit",
                              icon: Icon(Icons.production_quantity_limits),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Coût de la dépense",
                              icon: Icon(Icons.price_change),
                            ),
                          ),
                           TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Mode Paiement",
                              icon: Icon(Icons.price_check),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )), 
          
          actions: [ElevatedButton(
            onPressed: () {
              // Add logic to delete the transaction
              // For simplicity, just close the dialog in this example
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Set the button color to red for delete
            ),
            child: Text('Delete'),
          ),
            ElevatedButton(
              onPressed: () {
                // Add logic to save the new transaction
                // For simplicity, just close the dialog in this example
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
             
          ],
        );
      },
    );
  }
  
}


