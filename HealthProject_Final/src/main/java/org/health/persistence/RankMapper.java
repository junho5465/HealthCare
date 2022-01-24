package org.health.persistence;



import java.util.List;

import org.health.domain.RankingVO;

public interface RankMapper {
	public List<RankingVO> getfirst();
	public List<RankingVO> getsecond();
	public List<RankingVO> getthird();
	public List<RankingVO> leftover();
}
