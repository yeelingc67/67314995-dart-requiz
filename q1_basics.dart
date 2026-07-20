double vatRate = 0.07;
void main(){
  String shopName = 'Dart Cafe';
  print('ร้าน: $shopName');
  print('อัตราภาษี (vatRate): $vatRate');
  print('---');

  List<String> categories =['เครื่องดื่ม','ของคาว','ของหวาน'];
  Map<String,int> menu = {'ลาเต้' : 55 ,'ข้าวผัด':60,'ผัดไทย': 45 , 'ไอติม':20};
  print('หมวดเมนู: $categories');
  print('จำนวนเมนูทั้งหมด: ${menu.length} รายการ');
  print('ราคาลาเต้: ${menu['ลาเต้']} บาท');
  print('---');

  print('เมนูราคาตั้งเเต่ 50 บาทขึ้นไป:');
  for(var entry in menu.entries){
    if(entry.value>50){
      print('${entry.key} : ${entry.value} บาท');
    }
  }
  print('---');

  print('ยอดสุทธิ (ไม่มีส่วนลด): ${calcTotal(price: 55, qty: 2)}');
  print('ยอดสุทธิ (ส่วนลด 10 บาท): ${calcTotal(price: 55, qty: 2, discount: 10)}');
  print('---');

  String? coupon;
  int length = coupon?.length?? 0;
  print('ความยาวคูปอง: $length');

  coupon??='NO-COUPON';
  print('คูปองหลังกำหนดค่า: $coupon');

}

double calcTotal({required int price, required int qty, double discount = 0}){
  return (price*qty-discount)*(1+vatRate);
}