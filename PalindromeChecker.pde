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
public boolean palindrome(String word)
{
  //your code here
  if(word.equals(reverse(word))) {
    return true;
  }
  
  else {
    return false;
  }
 /* 
  for (int i = 0; i < word.length()/2; i++) {
      if (word.charAt(i) == word.charAt(word.length() - 1 - i)) {
        return true;
      }
    }
  return false;
  */
}

public String reverse(String str){
  String newWord = "";
  for(int i = str.length()-1; i >= 0; i--) {
    newWord = newWord + str.charAt(i);
  }
  return newWord;
}
