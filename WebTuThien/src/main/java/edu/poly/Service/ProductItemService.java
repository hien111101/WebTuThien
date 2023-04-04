package edu.poly.Service;


import edu.poly.model.ProductItem;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public interface ProductItemService {


    void add(ProductItem item);

    void remove(int id);

    Collection<ProductItem> getCartItems();

    void clear();

    void update(int id, int quantity);

    double getAmount();

    int getCount();
}
