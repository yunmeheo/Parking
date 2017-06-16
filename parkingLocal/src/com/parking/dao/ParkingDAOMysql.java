package com.parking.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.parking.vo.Parking;

@Repository
public class ParkingDAOMysql {
	
	@Autowired
	public SqlSession session;
	
	public void insert(List<Parking> list){
		System.out.println("ParkingDAOMysql insert()");
		for(Parking p : list){
			session.insert("ParkingMapper.insert", p);
		}
	}
	
}
