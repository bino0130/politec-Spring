package iqr;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class P1 {

    public static void main(String[] args) {
        int[] arr = {1, 2, 5, 6, 7, 9, 12, 15, 18, 19, 27};
        List<Integer> lowData = new ArrayList<>();

        for (int i = 0; i < arr.length; i++) {
            lowData.add(arr[i]);
        }
        lowData = lowData.parallelStream().sorted().collect(Collectors.toList());
        Double Q1 = mode(lowData, 0.25);
        Double Q2 = mode(lowData, 0.50);
        Double Q3 = mode(lowData, 0.75);
        Double IQR = Q3 - Q1;

        System.out.println("Q1: " + Q1);
        System.out.println("Q2: " + Q2);
        System.out.println("Q3: " + Q3);
        System.out.println("IQR: " + IQR);

        List<Integer> filteredData = lowData.parallelStream().filter(num -> num >= Q1 && num <= Q3).collect(Collectors.toList());
        int max = Collections.max(filteredData);
        int min = Collections.min(filteredData);
        System.out.println("Min: " + min);
        System.out.println("Max: " + max);

        System.out.println("Filtered Data: " + filteredData);
    }

    public static double mode(List<Integer> datas, double base) {
        Double index = base * (datas.size() - 1);
        int lower = (int) Math.floor(index);

        if (lower < 0) return datas.get(0);

        if (lower >= datas.size() - 1) return datas.get(datas.size() - 1);

        Double fraction = index - lower;
        return datas.get(lower) + fraction * (datas.get(Math.min(datas.size() - 1, lower + 1)) - datas.get(lower));
    }
}