public final static String e = "27182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{ 
  for (int i = 0; i < e.length(); i++) //loops through the digits of e starting at pos 0
  {
    String digits = e.substring(i, i+10); //creates a substring with ten digits
    double test = Double.parseDouble(digits); //converts to double
    if(isPrime(test) == true) //checks if it is prime and if it is returns the digits and ends program
    {
      System.out.println(test);
      break;
    }
  }  
}  

public void draw()
{
  //not needed for this program
}

public boolean isPrime(double dNum)  
{   
    /* 
    checks if the number is prime by creating a loop that divides number by all possible factors
    */
    for (int j = 2; j <= Math.sqrt(dNum); j++)  
    {
      if (dNum % j == 0)
      {
        return false;
      }  
    }
    return true;
} 
