package com.daoimpl;
import com.dao.ProductDao;
import com.model.Product;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

@Component
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
		
	}

	public List<Product> getAllProduct() {
		List<Product> products=this.hibernateTemplate.loadAll(Product.class);
		return products;
	}

	@Transactional
	public void deleteProduct(int pid) {
		Product p=this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
		
	}

	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
		
	}	
}
