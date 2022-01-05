package org.health.service;

import java.util.List;

import org.health.domain.BookVO;

public interface BookService {
	public List<BookVO> getList();
	
	public BookVO get(int bookId);
	public BookVO read(int bookId);
}
