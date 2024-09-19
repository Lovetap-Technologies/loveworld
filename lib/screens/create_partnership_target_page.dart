import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreatePartnershipTarget extends StatefulWidget {
  const CreatePartnershipTarget({super.key});

  @override
  State<CreatePartnershipTarget> createState() =>
      _CreatePartnershipTargetState();
}

class _CreatePartnershipTargetState extends State<CreatePartnershipTarget> {
  final _formKey = GlobalKey<FormState>();
  final _categoryController = TextEditingController();
  final _amountController = TextEditingController();
  final _targetAmountController = TextEditingController();
  final _deadlineController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text(
          'Create Partnership Target',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Partnership Arms',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  value: _categoryController.text.isEmpty
                      ? null
                      : _categoryController
                          .text, // Fix: Ensure valid value or null
                  onChanged: (value) {
                    setState(() {
                      _categoryController.text =
                          value!; // Update controller's text with selected value
                    });
                  },
                  items: <String>[
                    'Teens Advance Partnership',
                    'Healing School Partnership',
                    'Rhapsody of Realities Partnership',
                    'Lovetap Television Partnership',
                    'Inner-city Mission Partnership',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    labelText: 'Select Category',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: _targetAmountController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Enter Target Amount',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a target amount';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: _deadlineController,
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Deadline',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today),
                      onPressed: () async {
                        final DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2100),
                        );
                        if (pickedDate != null) {
                          setState(() {
                            _deadlineController.text =
                                DateFormat('dd-MMM-yyyy').format(pickedDate);
                          });
                        }
                      },
                    ),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please select a deadline';
                    }
                    return null;
                  },
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Handle form submission
                          print('Category: ${_categoryController.text}');
                          print('Amount: ${_amountController.text}');
                          print(
                              'Target Amount: ${_targetAmountController.text}');
                          print('Deadline: ${_deadlineController.text}');
                        }
                      },
                      child: const Text('Create Target'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(
                            0xFFF54277), // Replace with your desired background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8), // Adjust the border radius as needed
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 24, vertical: 16), // Adjust padding
                        textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.33),
                  child: Center(
                    child: const Text(
                      'LOVEWORLD TEENS & YOUTH MINISTRY',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
