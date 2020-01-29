public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord)
{
  String a = reverse(onlyLetters(noSpaces(noCapitals(sWord))));
  String b = onlyLetters(noSpaces(noCapitals(sWord)));
  if(b.equals(a) == true)
    return true;
   return false;
} 
public String reverse(String str)
{
  String s = "";
  int last = str.length()-1;
  for(int i = last; i>=0; i--){
    s += str.substring(i,i+1);
  }
  return s;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String a = "";
  for(int i = 0; i <= sWord.length()-1; i++){
    if(sWord.charAt(i) != ' '){
      a+=sWord.substring(i,i+1);
    }
  }
  return a;
}
public String onlyLetters(String sString){
  String a = new String();
  for(int i = 0; i<sString.length();i++){
    if(Character.isLetter(sString.charAt(i))){
      a = a + sString.substring(i,i+1);
    }
  }
  return a;
}
