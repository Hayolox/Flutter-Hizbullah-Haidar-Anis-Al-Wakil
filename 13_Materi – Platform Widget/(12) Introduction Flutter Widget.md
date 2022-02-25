

## 13 Platform Widget

Dalam materi ini, mempelajari:
1. MaterialApp
2. Cupertino

### MaterialApp
MaterialApp merupakan widget dasar yang mengemas dalam aplikas sistem android, untuk menggunakan widget ini maka harus  import ```package:flutter/material.dart';```. MaterialApp terdapat scafold yang berfungsi untuk membangun sebuah halaman yang dimana stuktur scafold terdiri dari appBar bagian menu atas halaman, drawer menu bagian samping halaman, body bagian utama halaman, bottomNavigationBar bagian bawah halaman.  

### Cupertino
Cupertino merupakan widget dasar yang mengemas dalam aplikas sistem iphone,  untuk menggunakan widget ini maka harus  import ```package:flutter/cupertino.dart';```. Sama seperti MaterialApp, Cupertino memiliki seperti scafold yang bernama CupertinoApp.

   ###### a. Anonymous function
            ``` 
             var hellow = (){
                 print('hellow);
             }
            ```                
   ###### b. Arrow function
            ``` 
             var hellow () => print('hellow'); 
            ``` 
### List
List merupakan berisi kumpulan data yang mampu menyimpan beberapa nilai dalam satu variabel. Untuk penulisan list salah satunya sebagai  berikut :

   ###### Penulisan list
            ``` 
             var nameList = [data1, data2, data3,];
            ```                
   Untuk menampilkan list dapat langsung menggunakan print atau looping, dapat dilihat pada contoh dibawah ini 

   ###### a. Menampilkan list dengan menggunakan print
            ``` 
            print(nameList);
            ```
   ###### b. Menampilkan list dengan looping
            ``` 
             for(var list in nameList) {
                print(list);
             }
            ```

### Map List
Map List hampir sama dengan list biasanya, akan tetapi map list mempunyai tipe data key dan value mirip seperti index. apabila list index dibikin secara otomatis dan nilainya secara auto increment. sedangkan map key bisa ditentukan dengan tipe data apapun. Untuk penulisan list dapat dilihat dibawah ini:

    ###### a. Menampilkan Map list dengan menggunakan print
            ``` 
            var name = {
                'first' : 'akil',
                'last'  :  yahuy',
            };

            //untuk menampilkan map list
            print(name['first']);
            ```

### Async-Await
Berfungsi untuk menjalankan beberapa proses tanpa perlu menunggu.

## Task

### 1. Tugas Pertama
Pada tugas pertama ini membuat function dengan menerima 2 parameter yaitu list dan pengali, melakukan perulangan pada list data secara Async, setiap perulangan, mengalikan antara elemnt list data dengan pengali

Berikut kode tugas 1.

[function.dart](./praktikum/function.dart)

output:

![tugas1](./screenshots/tugas1.jpeg )

### 2. Tugas Kedua
Tugas selanjutnya adalah membuat list dengan spesifikasi setiap element berupa list, setiap element wajib terdiri dari 2 data sub dan membuat sebuah MAP dengan menggunakan list tersebut

Berikut kode tugas 2.

[ListAndMap.dart](./praktikum/ListAndMap.dart)

output:

![tugas2](./screenshots/tugas2.jpeg )
