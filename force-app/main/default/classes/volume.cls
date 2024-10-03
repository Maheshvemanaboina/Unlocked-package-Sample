public class volume
{
     public static void counterMethod()
  {
        String str = 'Theyuyuit';
        String str1 = str.toLowerCase();
        Map<String,Integer> Count_Map = New Map<String,Integer>();
        for(string st :str1.split(''))
        {
            if(Count_Map.containskey(st))
            {
                count_map.put(st,count_map.get(st)+1);
            }
            else{
                count_map.put(st,1);
            }
        }
               
            System.debug(str+ '---->' + Count_Map);
        }
   }