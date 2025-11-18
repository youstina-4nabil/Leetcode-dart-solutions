class Solution {
  int romanToInt(String s) {
    s=s.toUpperCase();
    Map<String, int> h = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    List<String> f=s.split('');
    int count=0;
    for(int i=0;i<f.length;i++)
    {
      int current=h[f[i]]!;

      int next=i+1<f.length? h[f[i+1]]!:0;

      if(current<next)
      {
        count-=current;
      }
      else
      {
       count+=current;
      }

    }
    return count;
  }
}

