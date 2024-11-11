Mobile Test Automation Project
This project is designed for automating tests for mobile applications using Robot Framework. It aims to simplify the process of creating comprehensive test scenarios for mobile apps.

Table of Contents
Features
Requirements
Installation
Project Structure
Running Tests
Contributing
License
Features
Integration with Appium to enable testing on mobile devices (Android and iOS)
Quick and easy test case creation with Robot Framework's user-friendly syntax
An extendable architecture for easy addition of new test cases
Detailed reporting and logging capabilities
Requirements
Python 3.7 or higher
Robot Framework
Appium
Java (for Appium Server)
Node.js (for Appium CLI)

Installation
After cloning the project, follow these steps to set up the environment:
Clone the repository:
git clone https://github.com/ErcanEAK/appiumWithRobotForMobile.git
cd mobile-test-automation
Install the required Python packages:
pip install -r requirements.txt

Install and start Appium Server:
npm install -g appium
appium
Project Structure

appiumWithRobotForMobile
│
├── tests/                   # Contains test cases
│   ├── android/
│   └── ios/
│
├── resources/               # Keyword files and supporting resources
│
├── reports/                 # Test result reports and logs
│
├── README.md                # Project documentation
│
└── requirements.txt         # Python dependencies
Running Tests
To execute a test, use the following command:
robot -d reports/ tests/android/example_test.robot
This command will run the example_test.robot file and save the results in the reports/ directory.

Contributing
If you'd like to contribute, please read the contribution guide and submit a pull request.

License
This project is licensed under the MIT License. See the LICENSE file for details.
