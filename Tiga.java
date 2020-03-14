public class Tiga {
    public static void cetak_gambar(int n) {
        String karakter = "=";
        for(int i=0; i<n; i++) {
            if(i%2==0){
                for(int j=0; j<n; j++){
                    if(j%2==0 ){
                        System.out.print(" = ");
                    }else{
                        System.out.print(" * ");
                    }
                }
            }else{
                for(int j=0; j<n; j++){
                    if(j%2==1 ){
                        System.out.print(" = ");
                    }else{
                        System.out.print(" * ");
                    }
                }
            }
            
            System.out.println("");
        }
    }
    public static void main(String[] args) {
        int n;
        cetak_gambar(5);
    }
}