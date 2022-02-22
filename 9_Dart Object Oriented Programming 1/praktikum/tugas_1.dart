
class Hewan{
  List<int> berat = [20,30,40];

}

class Mobil{

  // Jika muatan lebih dar atau sama dengan kapasistas, maka akan menampilkan pesan "Muatan Sudah Penuh"
    List<String> muatan = ['anjing','kucing','buaya','ayam'];

    void tambahMuatan(){
      int jumlahMuatan = muatan.length;
      int kapasitas = 4;
     
   

      if (jumlahMuatan >= kapasitas ){
         print('Muatan Sudah Penuh');
      }else{
           muatan.add('babi');
      }
      print(muatan);

    } 

    
}


 void main() {
  var mobil = Mobil();
  mobil.tambahMuatan();


 
}