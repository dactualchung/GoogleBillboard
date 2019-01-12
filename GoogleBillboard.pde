public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260";  
public void setup()  
{
  //{first ten digit prime found in consecutive digits of e}.com
  int x = 2;
  boolean notPrime = true;
  while(notPrime){
    String digits = e.substring(x, x + 10);
    double dNum = Double.parseDouble(digits);
    notPrime = !isPrime(dNum);
    if(isPrime(dNum) == true){
      System.out.println(e.substring(x, x + 10) + " " + (x - 1) + "th position " + "1st ten digit prime");
      break;
    }
    if(x < e.length() - 10){
      x++;
    }else{
      break;
    }
  }
  /*
  f(1)= 7182818284 
  f(2)= 8182845904 
  f(3)= 8747135266 
  f(4)= 7427466391 
  f(5)= __________ 
  */
  for(int i = 2; i < e.length() - 10; i++){
    String digits = e.substring(i, i + 10);
    if(equals49(digits) == true){
      System.out.println(e.substring(i, i + 10) + " " + (i - 1) + "th position " + "individual digits added together equal 49");
    }
  }
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double num){
  if(num < 2){
    return false;
  }
  for(int i = 2; i <= Math.sqrt(num); i++){
    if(num % i == 0){
      return false;
    }
  }
  return true;
}
public boolean equals49(String digits){
  double sum = 0;
  for(int i = 0; i < 10; i++){
    double trueValue = Double.parseDouble(digits.substring(i, i + 1));
    sum += trueValue;
  }
  if(sum == 49){
    return true;
  }
  return false;
}
