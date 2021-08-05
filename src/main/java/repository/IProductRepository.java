package repository;

import model.Product;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository("iProductRepository")
public interface IProductRepository extends PagingAndSortingRepository<Product, Long> {
}

