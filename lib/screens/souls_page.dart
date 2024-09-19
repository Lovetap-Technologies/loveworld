import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:intl/intl.dart';

class Souls extends StatefulWidget {
  @override
  _SoulsState createState() => _SoulsState();
}

class _SoulsState extends State<Souls> {
  final _formKey = GlobalKey<FormState>();

  String _soulName = '';
  String _nationality = '';
  String _email = '';
  String _phoneNumber = '';
  final _deadlineController = TextEditingController();
  PhoneNumber phoneNumber = PhoneNumber(isoCode: 'NG'); // Default to Nigeria
  DateTime _date = DateTime.now();
  CountryCode _selectedCountryCode = CountryCode(code: 'NG', dialCode: '+234');
  String _selectedCountry = 'Select a country';

  void _showCountryPicker() {
    showCountryPicker(
      context: context,
      onSelect: (Country country) {
        setState(() {
          _selectedCountry = country.displayName;
        });
      },
      // Optional: Customize the country list theme
      countryListTheme: CountryListThemeData(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        inputDecoration: InputDecoration(
          labelText: 'Search',
          hintText: 'Start typing to search',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xFF8C98A8).withOpacity(0.2),
            ),
          ),
        ),
        searchTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Souls Data Submission'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Soul's Name Field
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Enter Soul\'s Name'),
                onChanged: (value) {
                  _soulName = value;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter Soul\'s Name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Soul's Nationality Dropdown
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _showCountryPicker,
                    child: const Text('Select Soul\'s Nationality'),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _selectedCountry,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Soul's Email Field
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Enter Soul\'s Email'),
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  _email = value;
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r"^\S+@\S+\.\S+$").hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),

              // Country Picker with Intl Phone Number Input
              Row(
                children: [
                  Expanded(
                    child: InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                        _phoneNumber =
                            number.phoneNumber ?? ''; // Update phone number
                      },
                      initialValue: phoneNumber,
                      inputDecoration: const InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),
                      ),
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      formatInput: false,
                      keyboardType: const TextInputType.numberWithOptions(
                        signed: true,
                        decimal: false,
                      ),
                      validator: (value) {
                        if (_phoneNumber.isEmpty) {
                          return 'Please enter a valid phone number';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: _deadlineController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Date',
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
                    return 'Please select a date';
                  }
                  return null;
                },
              ),

              // Submit Button
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Submit the form data
                    print('Soul Name: $_soulName');
                    print('Nationality: $_nationality');
                    print('Email: $_email');
                    print('Phone Number: $_phoneNumber');
                    print('Date: $_date');
                    print('Country Code: ${_selectedCountryCode.dialCode}');
                  }
                },
                child: const Text('Submit'),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.28),
                  child: Center(
                    child: const Text(
                      'LOVEWORLD TEENS & YOUTH MINISTRY',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
                    ),
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
