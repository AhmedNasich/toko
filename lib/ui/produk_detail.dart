// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tokokita/model/produk.dart';
import 'package:tokokita/ui/produk_form.dart';

class ProdukDetail extends StatefulWidget {
  final Produk? produk;

  const ProdukDetail({super.key, this.produk});

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Kode: ${widget.produk?.kodeProduk ?? '-'}",
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              "Nama: ${widget.produk?.namaProduk ?? '-'}",
              style: const TextStyle(fontSize: 18.0),
            ),
            Text(
              "Harga: Rp. ${widget.produk?.hargaProduk?.toString() ?? '-'}",
              style: const TextStyle(fontSize: 18.0),
            ),
            _tombolHapusEdit(),
          ],
        ),
      ),
    );
  }

  Widget _tombolHapusEdit() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Tombol Edit
        OutlinedButton(
          child: const Text("EDIT"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProdukForm(
                  produk: widget.produk!,
                ),
              ),
            );
          },
        ),
        // Tombol Hapus
        OutlinedButton(
          onPressed: confirmHapus,
          child: const Text("DELETE"),
        ),
      ],
    );
  }

  void confirmHapus() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Yakin ingin menghapus data ini?"),
        actions: [
          // Tombol Hapus
          OutlinedButton(
            child: const Text("Ya"),
            onPressed: () {
              // Logic penghapusan bisa ditambahkan di sini
              Navigator.pop(context); // Menutup dialog
            },
          ),
          // Tombol Batal
          OutlinedButton(
            child: const Text("Batal"),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
