package edu.poly.model;
import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter@Setter
public class ProductItem {
    private long id;
    private String name;
    private String image;
    private int quantity;
    private double price;
    private int discount;

}
