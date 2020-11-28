import 'dart:math';
import 'dart:io';
void guss(int max){
  Random rdm=Random();
  int gg=rdm.nextInt(max);
  var userguss;
  print("enter your number: ");
  do{
    userguss=stdin.readLineSync();
    userguss=int.parse(userguss);
    if(userguss > gg){
      print("too high");
    }else{
      print("too low");
    }
  }while(userguss != gg);
  print("you win !!");
}
main(){
  int mx;
  bool mainloop=true;
  while(mainloop==true){
    print("start ..");
    print("how much max number you want?:");
    var maxnumber=stdin.readLineSync();
    int x=int.parse(maxnumber);
    guss(x);
    print("wanna play again??(y/n): ");
    String chose=stdin.readLineSync();
    if(chose=='y' || chose=="Y"){
      guss(x);
    }else{
      print("see you later ..");
      break;
    }
  }

}