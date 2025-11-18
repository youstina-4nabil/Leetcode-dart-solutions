 class Solution {
  bool isPalindrome(int x) {
    if(x<0)
    {
      return false;
    }
    int z=x;
    
    int y=0;    
    while(x>0){      
      y=y*10+(x%10);
      x=(x~/10); 
          
    }
    if(z==y)
    {
      return true;
    } 
    else{
      return false;
    }   
  }
}
