public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String temp = new String();
  String temp2 = word.toLowerCase();
  for (int e=0; e<temp2.length(); e++)
  {
    if (Character.isLetter(temp2.charAt(e)))
    {
      temp = temp + temp2.substring(e, e+1);
    }
  }
  for (int i=0; i<temp.length()/2; i++)
  {
    if (temp.charAt(i) != temp.charAt(temp.length()-(i+1)))
    {
      return false;
    }
  }
  return true;
}

