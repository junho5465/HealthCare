package org.health.test;

import static org.junit.Assert.assertNotNull;

import org.health.domain.BookVO;
import org.health.service.BookService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BookServiceTest {
	@Setter(onMethod_= {@Autowired})
	private BookService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	
	@Test
	public void testGetList() {
		log.info("============testGetList===============");
		service.getList().forEach(book->log.info(book));
	}
	
	@Test
	public void testRead() {
		log.info("===========testRead==============");
		BookVO book = service.read(2);
		log.info(book.getBookId());
	}
}
