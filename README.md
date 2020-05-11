# home

A new Flutter project.


Software Function Requirements:
•	Login page: Customer should secure entry into the app with a login page and if possible facial recognition. This requires the use of a source that authenticates the security key. We considered using Firebase or Sqflite with CRUD.
•	Help desk: Client can make quick calls and can access help desk all the time with easy access to emergency contacts.
•	User should be able to allow or decline entry of unknown guests
•	The system should be able to record entry/leaving information and user should be able to access it

Data Structures: 
Stack: Mostly used in UI implementation. It allows the unique arrangements of the widgets in the Login File. It is used in the Login() => LoginState() class.
Technologies and Justification
Flutter Dependencies:
 flutter:
    sdk: flutter
    
  bloc: ^0.8.0
  flutter_bloc: ^0.5.0
  meta: ^1.1.6
  equatable: ^0.1.6
  flutter_local_notifications: ^1.4.3
  firebase_messaging: ^5.1.4
  get_it: ^1.0.3

These dependencies allow for various implementations such as Notifications. Some make it easy to display data from a source be it json or database. 

#Notification: From Image classifier

This functionility happens once someone comes around the camera. 
There is Fare_recognition algorithm  which uses AI to learn known people in the system, and tells if a person is an intruder/ stranger.
Currently, the model is installed on the local machine but the result is transfered to firebase, where the notification is triggered and sent to the system admin. The notification gives a possibility of allowing or denying a person into the house, it means if the admin/ owner accepts then, the intrance door opens, or if he or she denies then, there will be another possibility, either going back or any other means of communication betwen two parties. 

Data structure:
Stack- widgets 

Technologies:
-AI
-Flutter
-Dart 
-Python 




