package org.health.service;

import java.util.List;

import org.health.domain.BookVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BookServiceImpl implements BookService{
	@Setter(onMethod_=@Autowired)
	private BookService mapper;

	@Override
	public List<BookVO> getList(){
		// TODO Auto-generated method stub
		log.info("=============getList.....!!!!==============");
		
		 List<BookVO> list=	mapper.getList();
		 log.info(list + "============================");
		 log.info("size :" + list.size() );
		 return list;
	}
	
	@Override
	public BookVO get(int bookId) {
		log.info("get.............." + bookId);
		return mapper.read(bookId);
	}
	
	public BookVO read(int bookId) {
		log.info("get.............." + bookId);
		return mapper.read(bookId);
	}
	
}
