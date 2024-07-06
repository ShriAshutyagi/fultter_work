

import 'dart:math';

main() {



    String originalData = "Hello Vpn";
    print("Original data: $originalData");
    ///encrypted data//
    String encryptedData = encryptData(originalData);
    print("Encrypted Data : $encryptedData");
    ///decrypted data//
    String decryptedData = decryptData(encryptedData);
    print("decrypted Data : $decryptedData");

  }
  /// encryptedData
  String encryptData(String data){
    String encryptedData = "";
    for(int i=0; i<data.length; i++){

      for(int j=0; j<1; j++){

        int randomNumber = Random().nextInt(245);

        int charCode = (data.codeUnitAt(i)+ randomNumber)%256;
        encryptedData += String.fromCharCode(charCode);


      }
    }
    return encryptedData;
  }

  ///decryptedData

  String decryptData(String encryptedData){
    String decryptedData = "";
    for(int i = 0; i<encryptedData.length; i++ ){
      for(int j= 0; j<2; j++){
        int randomNumber = Random() .nextInt(245);
        int charCode = (encryptedData.codeUnitAt(i) - randomNumber ) %256;
        decryptedData += String.fromCharCode(charCode);
      }
    }
    return decryptedData;

  }


