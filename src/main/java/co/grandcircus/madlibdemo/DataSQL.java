package co.grandcircus.madlibdemo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class DataSQL {
	
	private List<MenuItem> list = new ArrayList<>();
	
	public List<MenuItem> getAllMenuItems() {
		return list;
	}
}
