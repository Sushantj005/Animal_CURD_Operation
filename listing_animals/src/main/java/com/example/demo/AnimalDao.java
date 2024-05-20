package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AnimalDao implements AnimalService {
	
	@Autowired
	AnimalRepo ar;

	@Override
	public void submit(Animal a1) {
		// TODO Auto-generated method stub
		
		ar.save(a1);

	}

	@Override
	public List<Animal> getallinfo() {
		// TODO Auto-generated method stub
		return ar.findAll();
	}

	@Override
	public void deldata(int id) {
		// TODO Auto-generated method stub
		
		ar.deleteById(id);
		
	}

	@Override
	public Animal getsingleinfo(int id) {
		// TODO Auto-generated method stub
		
		return ar.getById(id);
	}

}
