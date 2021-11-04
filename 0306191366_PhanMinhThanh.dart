import 'dart:math';
//cau 1
void dssl(){
  var dssn=[1,2,3,4,5,6,7,8,9,10];
  for(int i = 0 ; i < dssn.length ; i++ ){
    if(i % 2!=0){
    print(i);
    }
  }
}
//cau 2
void dssc(){
 var dssn=[1,2,3,4,5,6,7,8,9,10];
  for(var i in dssn ){
    if(i % 2==0){
    print(i);
    }
  }
}
//cau 3
void docTenThangN(var n){
  switch(n){
    case 1: print("Tháng một"); break;
    case 2: print("Tháng hai"); break;
    case 3: print("Tháng ba"); break;
    case 4: print("Tháng bốn"); break;
    case 5: print("Tháng năm"); break;
    case 6: print("Tháng sáu"); break;
    case 7: print("Tháng bảy"); break;
    case 8: print("Tháng tám"); break;
    case 9: print("Tháng chín"); break;
    case 10: print("Tháng mười"); break;
    case 11: print("Tháng mười một"); break;
    case 12: print("Tháng mười hai"); break;
    default: print("không có tháng này trong năm");
  }
}
//cau 5
bool songuyento(int N){
  var tam = 0;
  for(int i = 2; i< N; i++){
    if(N%i==0)
    tam++;
    }
  if(tam>0)
    return false;
  else
    return true;
}
//cau 6
bool sohoanthien(int N) {
  int sum = 0;
  for (int i = 1; i < N; i++) {
    if (N % i == 0) {
      sum += i;
    }
  }
  if (sum == N) {
    return true;
  }
  return false;
}
//cau 7
int chuSoLonNhat(int N){
  var max = 0;
  while (N > 0) {
        int temp = N % 10;
        N ~/= 10;
        if (temp > max)
            max = temp;
    }
  return max;
}
//cau 8
int chuSoNhoNhat(int n){
  var min = n;
  while (n > 0) {
        int temp = n % 10;
        n ~/= 10;
        if (temp < min){
          min = temp;
        }
    }
  return min;
}
//cau 9
int sodaonguoc(int n){
     var sdn = 0;
  while(n>0){
    int temp = n% 10;
    n = n~/10;
    sdn = (sdn * 10) + temp;
  }
 
 return(sdn);
}
//cau 17
int ucln(int a, int b){
  if(b==0){
    return a;
  }
  return ucln(b,a%b);
}
//cau 18
void bcnn(int a , int b){
  int max = 0 , bcnn = 0;
  if(a > b){
    max = a;
  }max = b;
  for(int i = max ; i <= a*b ; i+=max){
    if(i % a == 0 && i%b==0){
      bcnn = i;
      print(bcnn);
      break;
    }
  }
}
//cau 30
bool kiemtracacphantubangnhau(var l){
  //var s = {for(var i in l)i};
  var s = l.toSet();
  return s.length == 1;
}
dynamic chuSo(int n){ //hàm đọc chữ số
  switch(n){
    case 1: return ("mot"); break;
    case 2: return 'hai'; break;
    case 3: return 'ba'; break;
    case 4: return 'bon'; break;
    case 5: return 'nam'; break;
    case 6: return 'sau'; break;
    case 7: return 'bay'; break;
    case 8: return 'tam'; break;
    case 9: return 'chin'; break;
    default: return ("");
  }
}
//cau 4
void docso3chuso(int a){
  int iHangTram = a~/100;
  int iHangChuc = a%100~/10;
  int iHangDonVi = a%100%10;
  if(iHangChuc == 0){
    if(iHangDonVi == 0){
      print (chuSo(iHangTram) + ' tram');
    }else{
      print (chuSo(iHangTram) + ' tram le ' + chuSo(iHangDonVi));
    }
  }else{
    if(iHangChuc == 1){
      if(iHangDonVi == 0){
        print (chuSo(iHangTram) + ' tram muoi');
      }else{
        if(iHangDonVi == 5){
          print (chuSo(iHangTram) + ' tram muoi lam');
        }else{
          print (chuSo(iHangTram) + ' tram muoi ' + chuSo(iHangDonVi));
        }
      }
    }else{
      if(iHangDonVi == 0){
        print (chuSo(iHangTram) + ' tram ' + chuSo(iHangChuc) + ' muoi');
      }else{
        if(iHangDonVi == 5){
          print (chuSo(iHangTram) + ' tram ' + chuSo(iHangChuc) + ' muoi lam');
        }else{
          print (chuSo(iHangTram) + ' tram ' + chuSo(iHangChuc) + ' muoi ' + chuSo(iHangDonVi));
        }
      }
    }
  }
}
//cau 19
dynamic ptBacNhat(int a, int b){
  if(a!=0){
    return -b/a;
  }
  else{
    if(b!=0){
      return 'phuong trinh vo nghiem';
    }else{
      return 'vo so nghiem';
    }
  }
}
//cau 20
dynamic ptBacHai(double a, double b, double c){
  double  delta = b*b - 4*a*c;
  if(delta < 0){
    return 'phuong trinh vo nghiem';
  }else{
    if(delta == 0){
      return 'phuong trinh co 2 nghiem kep ${-b/(2*a)}';
    }else{
      delta = sqrt(delta);
      return 'x1 = ${(-b + delta) / (2*a)} , x2= ${(-b - delta) / (2*a)}';
    }
  }
}
//cau21
int bai21(int n){
  int tong =0;
  while(n>0)
  {
    tong += n;
    n--;
  }
  return tong;
}
//cau 22
int bai22(){
  int tong =0;
  int n=1;
  while(tong<=10000)
  {
    n++;
    tong += n;
  }
  return n;
}
//cau23
bool namNhuan(int n){
  if(n%4 == 0){
    if(n%100 == 0){
      if(n%400 == 0){
        return true;
      }else{
        return false;
      }   
    }else{
      return true;
    }
  }
  return false;
}
//cau24
int soNgayTrongThang(int n, int iNam){
  switch(n){
    case 1: 
    case 3: 
    case 5: 
    case 7:
    case 8:
    case 10:
    case 12: return 31; break;
    case 4:
    case 6:
    case 9:
    case 11: return 30; break;
    case 2: 
      if(namNhuan(iNam)){
      return 29;
    }else{
        return 28;
      }
    default: return 0;
  }
}
//cau 25
void ngayTiepTheo(int d, int m, int y){
  if(d == soNgayTrongThang(m,y)){
    if(m == 12){
      d=1;
      m=1;
      y++;
    }else{
      d = 1;
      m++;
    }
  }else{
      d++;
    }
  if(d > soNgayTrongThang(m,y) || m > 12 || m < 1 ){
      print('Nhap sai nhap lai');
    }else{
      print('Ngay $d thang $m nam $y');
  }
}
//cau 26
void ngayTruocDo(int d, int m, int y){
  if(d > soNgayTrongThang(m,y) || m > 12 || m < 1 ){
    print('Nhap sai roi');
  }else{
    if(d == 1){
      if(m == 1){
        d = 31;
        m = 12;
        y--;
      }else{
        m--;
        d = soNgayTrongThang(m,y);
      }
    }else{
      d--;
    }
    print('Ngay $d thang $m nam $y');
  }
}
//cau 27
int bai27(int d, int m, int y){
  int tong = 0;
  for(int i = 1;i < m; i++){
    tong += soNgayTrongThang(i,y);
  }
  tong += d;
  return tong;
}
//cau28
bool tangDan(var l){
  int temp = l[0];
  for(int i = 1; i < 4; i++){
    if(temp >= l[i]){
      return false;
    }else{
      temp = l[i];
    }
  }
  if(temp == l[l.length - 1])
  {
    return true;
  }
  return false;
}
//cau 29
bool giamDan(var l){
  int temp = l[0];
  for(int i = 1; i < 4; i++){
    if(temp <= l[i]){
      return false;
    }else{
      temp = l[i];
    }
  }
  if(temp == l[l.length - 1])
  {
    return true;
  }
  return false;
}
//cau 10
void demSoLonNhat(var n){
  var x = chuSoLonNhat(n);
  int dem = 0;
  while (n>0){
    int temp = n %10;
    n~/=10;
    if(x == temp){
      dem++;
    }
  }print (dem);
}
//cau 11
void demSoNhoNhat(var n){
  var x = chuSoNhoNhat(n);
  int dem = 0;
  while (n>0){
    int temp = n %10;
    n~/=10;
    if(x == temp){
      dem++;
    }
  }print (dem);
}
//cau 12
bool kiemTraSoLe(int n){
  while(n > 0){
    if((n%10)%2==0){
      return false;
    }
     n~/=10;
  }
  return true;
}
//cau 13
bool kiemTraSoChan(int n){
  while(n > 0){
    if((n%10)%2!=0){
      return false;
    }
     n~/=10;
  }
  return true;
}
//cau 14
bool kiemTraSoDoiXung(int n){
  if(n == sodaonguoc(n)){
    return true ;
  }return false;
}
//cau 15
bool kiemTraTangDan(int n){
 int linhcanh = n %10;
  n~/=10;
  while(n>0){
   int temp = n%10;
    if(temp > linhcanh){
      return false;
    }
    linhcanh = temp;
    n ~/=10;
  }
 return true;
}
//cau 16
bool kiemTraGiamDan(int n){
 int linhcanh = n %10;
  n~/=10;
  while(n>0){
   int temp = n%10;
    if(temp < linhcanh){
      return false;
    }
    linhcanh = temp;
    n ~/=10;
  }
 return true;
}
main(List<String> args) {
  
  //dssl();//cau 1
  //dssc();//cau 2
  //docTenThangN(15);cau 3
  //docso3chuso(589);//cau4
  //print(songuyento(7));//cau 5
  //print(sohoanthien(6));//cau 6
  //print(chuSoLonNhat(183)); //cau 7
  //print(chuSoNhoNhat(423)); //cau 8
  //print(sodaonguoc(12345)); //cau 9
  //demSoLonNhat(25665566241); //cau 10
  //demSoNhoNhat(544868499); //cau11
  //print(kiemTraSoLe(1379557)); //cau12
  //print(kiemTraSoChan(248462));//cau 13
  //print(kiemTraSoDoiXung(12421)); //cau 14
  //print(kiemTraTangDan(456789)); //cau 15
  //print(kiemTraGiamDan(54321)); //cau 16
  //print(ucln(45,15 )); //cau 17
  //bcnn(20, 10); //cau 18
  //print('x= ${ptBacNhat(3,4)}');//cau 19
  //print(ptBacHai(5,10,5));//cau 20
  //print(bai21(6));//cau21
  //print('N la ${bai22()}');//cau22
  //print(namNhuan(2124));//cau23
  //print(soNgayTrongThang(2,2020));//cau24
  //ngayTiepTheo(31,12,2019);//cau25
  //ngayTruocDo(1,3,2020);//cau26
  //print(bai27(1,3,2010));//cau27
  //print(tangDan([0,1,5,8]));//cau28
  //print(giamDan([9,8,7,6]));//cau29
  //print(kiemtracacphantubangnhau([2,2,2,2]));//cau 30

}