// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:tokokita/ui/produk_form.dart';
import 'package:tokokita/ui/produk_page.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return const MaterialApp(
            title: 'Toko Kita',
            debugShowCheckedModeBanner: false,
            home: ProdukPage(),
        );
    }
}
