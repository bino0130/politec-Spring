package com.kopo.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.kopo.domain.Webtoon;

@Repository
public class WebtoonRepositoryImpl implements WebtoonRepository {
	private List<Webtoon> listOfWebtoons = new ArrayList<Webtoon>();
	
	public WebtoonRepositoryImpl() {
		Webtoon webtoon1 = new Webtoon("뷰티풀 군바리", "img1.jpg");
		webtoon1.setAuthor("설이, 윤성원");
		webtoon1.setDescription("'여자도 군대에 간다면?'본격 여자도 군대 가는 만화!");
		webtoon1.setRanking("1위");
		webtoon1.setReleaseDay("월요일");;
		webtoon1.setWebsite("naver");
		webtoon1.setGenre("드라마");
		
		Webtoon webtoon2 = new Webtoon("윈드브레이커", "img2.jpg");
		webtoon2.setAuthor("조용속");
		webtoon2.setDescription("혼자서 자전거를 즐겨타던 모범생 조자현. 원치 않게 자전거 크루의 일에 자꾸 휘말리게 되는데... 자유를 꿈꾸는 청춘들의 스트릿라이딩 드라마!");
		webtoon2.setRanking("2위");
		webtoon2.setReleaseDay("월요일");;
		webtoon2.setWebsite("naver");
		webtoon2.setGenre("스포츠");
		
		Webtoon webtoon3 = new Webtoon("별난 식당", "img3.jpg");
		webtoon3.setAuthor("HO9");
		webtoon3.setDescription("특급호텔에서 최연소 팀장에 오르며 승승장구하던 주인공 한별은 퇴사를 하고 작은 식당을 차린다. 그 식당의 이름은 '별난식당'. 별난식당은 상권이라고는 찾아볼 수 없는, 서울에서 제일 가난한 동네인 부자동에 위치해 있다. 또한 메뉴도 별나다. 바로 메뉴가 없기 때문이다. 메뉴가 없이 한별 셰프가 그때그때 제철 식재료를 이용해 요리를 만드는 식당이다. 이 식당의 특별한 점은 요리를 먹는 손님이 마음까지 위로 받는다는 것. 한별 셰프는 대체 어떠한 방법으로 마음의 상처가 있는 많은 손님들을 요리로 치유하는 것일까?");
		webtoon3.setRanking("3위");
		webtoon3.setReleaseDay("월요일");;
		webtoon3.setWebsite("naver");
		webtoon3.setGenre("드라마");
		
		listOfWebtoons.add(webtoon1);
		listOfWebtoons.add(webtoon2);
		listOfWebtoons.add(webtoon3);
	}
	
	@Override
	public List<Webtoon> getAllWebtoonList() {
		return listOfWebtoons;
	}

}