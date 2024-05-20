package com.example.demo;

import java.util.List;

public interface AnimalService {
	
	public void submit(Animal a1);
	
	public List<Animal> getallinfo();
	
	public void deldata(int sid);

	public Animal getsingleinfo(int id);
}
