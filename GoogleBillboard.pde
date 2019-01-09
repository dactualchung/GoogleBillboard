public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{
  int x = 1;
  boolean notPrime = true;
  while(notPrime){
    String digits = e.substring(x, x + 10);
    double dNum = Double.parseDouble(digits);
    notPrime = !isPrime(dNum);
    System.out.println(dNum + " " + isPrime(dNum));
    x++;
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
