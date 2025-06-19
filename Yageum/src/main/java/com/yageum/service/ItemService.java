package com.yageum.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yageum.domain.ItemDTO;
import com.yageum.mapper.ItemMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.java.Log;

@Service
@Log
@RequiredArgsConstructor
public class ItemService {
	
	private final ItemMapper itemMapper;
	
	
	public List<ItemDTO> findAll(){
		
		
		
		return itemMapper.findAll();
	}

}
