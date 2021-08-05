package service;

import model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ProductService{
    @Autowired
    @Qualifier("iProductRepository")
    private IProductRepository productRepository;


    public Iterable<Product> findAll() {
         return productRepository.findAll();
    }


    public Optional<Product> findById(Long id) {
        return productRepository.findById(id);
    }
}

