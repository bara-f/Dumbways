import java.util.HashMap;

public class Dua{
    public static void check(String[] dataKeys, String word){
        char[] words = word.toCharArray();
        HashMap<Character, Boolean> checkChar = new HashMap<Character, Boolean>();

        for (char w : words) {
            checkChar.put(w, true);
        }

        for (String dataKey : dataKeys) {
            boolean isFound = true;

            char[] datas = dataKey.toCharArray();
            for (char d : datas) {
                if (checkChar.get(d) == null) {
                    isFound = false;
                    break;
                }
            }

            System.out.println(dataKey + " => " + isFound);
         }
    }

    public static void main(String[] args) {
        String[] dataKeys = new String[] { "dumb", "ways", "the", "best" } ;
        String word = "dumbways";
        check(dataKeys, word);
    }
}