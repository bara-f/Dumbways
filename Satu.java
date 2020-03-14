public class Satu{
    
    public static void main(String[] args) {
        
        int uang = 2921690;
        double bunga = 0.021;
        double bulan1; double bulan6;
        double bulan2; double bulan7;
        double bulan3; double bulan8;
        double bulan4; double bulan9;
        double bulan5; double bulan10;
        double bulan11; double total;

        bulan1 = (uang * bunga) + uang;
        bulan2 = (bulan1 * bunga) + bulan1;
        bulan3 = (bulan2 * bunga) + bulan2;
        bulan4 = (bulan3 * bunga) + bulan3;
        bulan5 = (bulan4 * bunga) + bulan4;
        bulan6 = (bulan5 * bunga) + bulan5;
        bulan7 = (bulan6 * bunga) + bulan6;
        bulan8 = (bulan7 * bunga) + bulan7;
        bulan9 = (bulan8 * bunga) + bulan8;
        bulan10 = (bulan9 * bunga) + bulan9;
        bulan11 = (bulan10 * bunga) + bulan10;
        total = (bulan11 * bunga) + bulan11;

        System.out.print("Jumlah Uang Setelah Bulan 12 : ");
        System.out.printf("%.2f", total);
        
    }
}