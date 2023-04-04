package edu.poly.Service.impl;


import edu.poly.Service.ProductItemService;
import edu.poly.model.ProductItem;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@Service
@SessionScope
public class ProductItemServiceImpl implements ProductItemService {
    private Map<Integer, ProductItem> map = new HashMap<Integer,ProductItem>();

    @Override
    public void add(ProductItem item){
        ProductItem existed = map.get(item.getId());
        if(existed!=null){
            existed.setQuantity(item.getQuantity()+1    );
        }else
            map.put((int) item.getId(),item);
    }

    @Override
    public void remove(int id){
        map.remove(id);
    }
    @Override
    public Collection<ProductItem> getCartItems(){
        return map.values();
    }
    @Override
    public void clear(){
        map.clear();
    }
    @Override
    public void update(int id, int quantity){
        ProductItem item = map.get(id);
        item.setQuantity(quantity);
        if(item.getQuantity()<=0){
            map.remove(id);
        }
    }
    @Override
    public double getAmount() {
        return map.values().stream().mapToDouble(item->item.getPrice()*item.getQuantity()*((100-item.getDiscount())*0.01)).sum();
              //  map.values().stream().mapToDouble(item->item.getQuantity() * item.getPrice()).sum();
    }
    @Override
    public int getCount(){
//        if(map.isEmpty()){
//            return 0;
//        }
        return map.values().size();
    }
}
