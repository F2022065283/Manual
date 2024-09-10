void main(){


  List arr =[2,45,34,65,20];

  print(arr);

  // 2 , 20 , 34 ,45 , 65
  num temp =0;

  for(int i=0;i<arr.length;i++){
//
    for(int j=i+1;j<arr.length;j++){
      
      if(arr[i] < arr[j]){

        temp = arr [i];
        arr[i] = arr[j];
        arr[j] = temp;

      }
    } 
}

print(arr);








  num total = 0;

  for(int i=0;i<arr.length;i++){
    total +=  arr [i];
  }

  print("total : $total" );

   print(arr);
}