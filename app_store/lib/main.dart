import 'package:app_store/app_store.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBaf9Ufz6Rxkkw7OdozBXIz1zdZygCxqvA",
        appId: "1:508396716908:android:7d82b4c8dc2c23c8afe949",
        messagingSenderId: "508396716908",
        projectId: "app-store-c5c8a",
        storageBucket: "app-store-c5c8a.firebasestorage.app",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const AppStore());
}
