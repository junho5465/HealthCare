package org.health.domain;

import lombok.ToString;

@ToString
public class Criteria {
	private int pageNum;	// 페이지 번호
	private int amount;		// 한 페이지에 출력되는 데이터 수
	private String keyword;
	private String category;
	
	public Criteria() {
		this(1,10);
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public void setPageNum(int pageNum) {
		if(pageNum<=0) {
			this.pageNum=1;
			return;
		}
		this.pageNum=pageNum;
	}
	
	public int getPageNum() {
		return pageNum;
	}
	
	public int getAmount() {
		return amount;
	}
	
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	public int getPageStart() {	// limit 구문에서 시작 위치 설정을 위해 만듬
		return (this.pageNum-1)*this.amount;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
//	public String[] getTypeArr() {
//		return keyword == null? new String[] {} : keyword.split("");
//	}
//	public String[] getCategoryArr() {
//		return category == null? new String[] {} : keyword.split("");
//	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
}

