
void main() {
    
  var hewan = [
 ['anjing', 'ayam',], 
 ['semut', 'ular'], 
 ];

 var nameHewan = {
    'hewan1' : hewan[0][1],
    'hewan2' : hewan[0][0],
    'hewan3' : hewan[1][0],
    'hewan4' : hewan[1][1],
 };

 for (var key in nameHewan.keys){
   print(nameHewan[key]);
 }



}
