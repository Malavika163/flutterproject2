import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gold Loan App Registration",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF002366), // Deep blue for the AppBar
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFD700), Color(0xFF002366)], // Gold and Blue gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Full Name
                  _buildInputField("Full Name"),
                  SizedBox(height: 16),

                  // Date of Birth
                  _buildInputField("Date of Birth"),
                  SizedBox(height: 16),

                  // Gender
                  _buildDropdownField("Gender", ["Male", "Female", "Other"]),
                  SizedBox(height: 16),

                  // Mobile Number
                  _buildInputField("Mobile Number", isNumber: true),
                  SizedBox(height: 16),

                  // Email
                  _buildInputField("Email Address", isEmail: true),
                  SizedBox(height: 16),

                  // Address
                  _buildInputField("Address", maxLines: 2),
                  SizedBox(height: 16),

                  // Aadhaar Number
                  _buildInputField("Aadhaar Number", isNumber: true),
                  SizedBox(height: 16),

                  // PAN Number
                  _buildInputField("PAN Card Number"),
                  SizedBox(height: 16),

                  // Bank Account Number
                  _buildInputField("Bank Account Number", isNumber: true),
                  SizedBox(height: 16),

                  // IFSC Code
                  _buildInputField("IFSC Code"),
                  SizedBox(height: 16),

                  // Employment Type
                  _buildDropdownField("Employment Type", ["Salaried", "Self-Employed"]),
                  SizedBox(height: 16),

                  // Monthly Income
                  _buildInputField("Monthly Income", isNumber: true),
                  SizedBox(height: 16),

                  // Username
                  _buildInputField("Username"),
                  SizedBox(height: 16),

                  // Password
                  _buildInputField("Password", isPassword: true),
                  SizedBox(height: 16),

                  // Confirm Password
                  _buildInputField("Confirm Password", isPassword: true),
                  SizedBox(height: 16),

                  // Terms & Conditions Checkbox
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Expanded(
                        child: Text(
                          "I agree to the terms and conditions of the gold loan app.",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Submit Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF002366), // Deep blue button
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Handle successful form submission
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Registration Successful")),
                          );
                        }
                      },
                      child: Text("Register"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Helper Widget: Input Field
  Widget _buildInputField(String label,
      {bool isNumber = false, bool isPassword = false, bool isEmail = false, int maxLines = 1}) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      keyboardType: isNumber
          ? TextInputType.number
          : isEmail
              ? TextInputType.emailAddress
              : TextInputType.text,
      obscureText: isPassword,
      maxLines: maxLines,
      style: TextStyle(color: Colors.white),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter $label";
        }
        if (isNumber && value.length < 10) {
          return "$label must be at least 10 digits";
        }
        if (isEmail && !RegExp(r"^[^@]+@[^@]+\.[^@]+").hasMatch(value)) {
          return "Please enter a valid email address";
        }
        return null;
      },
    );
  }

  // Helper Widget: Dropdown Field
  Widget _buildDropdownField(String label, List<String> options) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      items: options
          .map((option) => DropdownMenuItem(value: option, child: Text(option)))
          .toList(),
      onChanged: (value) {},
      validator: (value) => value == null ? "Please select $label" : null,
      dropdownColor: Color(0xFF002366), // Blue background for dropdown menu
      style: TextStyle(color: Colors.white),
    );
  }
}
