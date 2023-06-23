//question 7
void main(){
   int customerId=1001;
   String customerName="James";
   int unitsConsumedByuser=800;
   double chargePerUnit;
   num billAmount;

  if(unitsConsumedByuser<200){
    chargePerUnit=1.20;
  }
  else if(unitsConsumedByuser<=200 && unitsConsumedByuser>400){
    chargePerUnit=1.50;
  }
  else if(unitsConsumedByuser<=400 && unitsConsumedByuser>600){
    chargePerUnit=1.80;
  }
  else{
    chargePerUnit=2.00;
  }
  billAmount=unitsConsumedByuser*chargePerUnit;
  print("Customer IDNO: $customerId");
  print("Customer Name: $customerName");
  print("Amount Charge: $unitsConsumedByuser X $chargePerUnit = $billAmount");
  print("Net Bill Amount: $billAmount ");
}