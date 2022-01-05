package org.health.persistence;

import java.util.List;

import org.health.domain.BookVO;

public interface BookMapper {
	
	public List<BookVO> getList();
	
	public BookVO read(int bookId);
}
