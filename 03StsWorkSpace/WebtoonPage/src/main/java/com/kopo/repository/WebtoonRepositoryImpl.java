package com.kopo.repository;

import java.util.*;

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
		webtoon1.setReleaseDay("월요일");
		webtoon1.setWebsite("naver");
		webtoon1.setGenre("드라마");
		
		Webtoon webtoon2 = new Webtoon("윈드브레이커", "img2.jpg");
		webtoon2.setAuthor("조용속");
		webtoon2.setDescription("혼자서 자전거를 즐겨타던 모범생 조자현. 원치 않게 자전거 크루의 일에 자꾸 휘말리게 되는데... 자유를 꿈꾸는 청춘들의 스트릿라이딩 드라마!");
		webtoon2.setRanking("2위");
		webtoon2.setReleaseDay("월요일");
		webtoon2.setWebsite("naver");
		webtoon2.setGenre("스포츠");
		
		Webtoon webtoon3 = new Webtoon("별난 식당", "img3.jpg");
		webtoon3.setAuthor("HO9");
		webtoon3.setDescription("특급호텔에서 최연소 팀장에 오르며 승승장구하던 주인공 한별은 퇴사를 하고 작은 식당을 차린다. 그 식당의 이름은 '별난식당'. 별난식당은 상권이라고는 찾아볼 수 없는, 서울에서 제일 가난한 동네인 부자동에 위치해 있다. 또한 메뉴도 별나다. 바로 메뉴가 없기 때문이다. 메뉴가 없이 한별 셰프가 그때그때 제철 식재료를 이용해 요리를 만드는 식당이다. 이 식당의 특별한 점은 요리를 먹는 손님이 마음까지 위로 받는다는 것. 한별 셰프는 대체 어떠한 방법으로 마음의 상처가 있는 많은 손님들을 요리로 치유하는 것일까?");
		webtoon3.setRanking("3위");
		webtoon3.setReleaseDay("월요일");
		webtoon3.setWebsite("naver");
		webtoon3.setGenre("드라마");
		
		Webtoon webtoon4 = new Webtoon("화산귀환", "img4.jpg");
		webtoon4.setAuthor("LICO, 비가");
		webtoon4.setDescription("대 화산파 13대 제자.천하삼대검수 매화검존 청명. 천하를 혼란에 빠뜨린 고금제일마 천마의 목을 치고 십만대산의 정상에서 영면. 백 년의 시간을 뛰어넘어 아이의 몸으로 다시 살아나다. ......뭐? 화산이 망해? 이게 뭔 개소리야!?");
		webtoon4.setRanking("1위");
		webtoon4.setReleaseDay("수요일");
		webtoon4.setWebsite("naver");
		webtoon4.setGenre("무협,사극");
		
		Webtoon webtoon5 = new Webtoon("전지적 독자 시점", "img5.jpg");
		webtoon5.setAuthor("UMI, 슬리피-C");
		webtoon5.setDescription("'이건 내가 아는 그 전개다' 한순간에 세계가 멸망하고, 새로운 세상이 펼쳐졌다. 오직 나만이 완주했던 소설 세계에서 평범했던 독자의 새로운 삶이 시작된다.");
		webtoon5.setRanking("2위");
		webtoon5.setReleaseDay("수요일");
		webtoon5.setWebsite("naver");
		webtoon5.setGenre("판타지");
		
		Webtoon webtoon6 = new Webtoon("백xx", "img6.jpg");
		webtoon6.setAuthor("병장, 박태준 만화회사, 펀치킥");
		webtoon6.setDescription("정보사(HID) 요원 '백이수'와 범죄 조직의 보스인 쌍둥이 형 '백도경'. 같은 얼굴 다른 삶을 살아온 쌍둥이 형제. 조직에 배신당한 동생은 자신의 신분을 버리고 형이 되기로 한다. 정보사요원, 범죄 조직의 보스가 되다...!");
		webtoon6.setRanking("3위");
		webtoon6.setReleaseDay("수요일");
		webtoon6.setWebsite("naver");
		webtoon6.setGenre("액션");
		
		Webtoon webtoon7 = new Webtoon("외모지상주의", "img7.jpg");
		webtoon7.setAuthor("박태준");
		webtoon7.setDescription("못생기고 뚱뚱하다고 괴롭힘을 당하며 루저 인생만 살아온 내가 잘생겨졌다는 이유로 인싸가 됐다. 어느 날 자고 일어났더니 갑자기 완벽한 외모와 몸을 지닌 사람이 되어 깨어난다면?");
		webtoon7.setRanking("1위");
		webtoon7.setReleaseDay("금요일");
		webtoon7.setWebsite("naver");
		webtoon7.setGenre("드라마");
		
		Webtoon webtoon8 = new Webtoon("광마회귀", "img8.jpg");
		webtoon8.setAuthor("JP, 이히");
		webtoon8.setDescription("무공에 미친 광마 이자하. 그는 마교 교주의 천옥을 훔쳐 쫓기던 중 벼랑에서 떨어지게 된다. 모든 게 끝났다고 생각한 순간 눈을 떠보니, 사람들에게 무시당하던 점소이 시절로 돌아와 있는데... 게다가 억울한 누명으로 두들겨 맞고 객잔은 박살이 나 있는 상황. ​점소이 시절로 회귀한 광마! 사내는 다시 미치게 될 것인가? 아니면 사내의 적들이 미치게 될 것인가.");
		webtoon8.setRanking("2위");
		webtoon8.setReleaseDay("금요일");
		webtoon8.setWebsite("naver");
		webtoon8.setGenre("무협,사극");
		
		Webtoon webtoon9 = new Webtoon("나 혼자 만렙 뉴비", "img9.jpg");
		webtoon9.setAuthor("WAN.Z, 스윙뱃");
		webtoon9.setDescription("게임 너튜버로 활동 중인 주인공 진혁은 유일하게 [시련의 탑]의 엔딩을 봤지만, 게임의 인기가 하락하며 더 이상 게임 너튜버로서의 삶도 유지하기 힘들어진다. 엔딩을 보았기에 이대로 게임을 마무리하려는 진혁. 바로 그날, [시련의 탑]은 현실이 되었다. 게임의 모든 요소를 다 알고 있는 진혁은 누구보다 빠르게 모든 것을 차지한다! \"진짜 고인물이 뭔지 보여주지.\"");
		webtoon9.setRanking("3위");
		webtoon9.setReleaseDay("금요일");
		webtoon9.setWebsite("naver");
		webtoon9.setGenre("판타지");
		
		listOfWebtoons.add(webtoon1);
		listOfWebtoons.add(webtoon2);
		listOfWebtoons.add(webtoon3);
		listOfWebtoons.add(webtoon4);
		listOfWebtoons.add(webtoon5);
		listOfWebtoons.add(webtoon6);
		listOfWebtoons.add(webtoon7);
		listOfWebtoons.add(webtoon8);
		listOfWebtoons.add(webtoon9);
	}
	
	@Override
	public List<Webtoon> getAllWebtoonList() {
		return listOfWebtoons;
	}

	@Override
	public List<Webtoon> getWebtoonListByGenre(String genre) {
		List<Webtoon> webtoonsByGenre = new ArrayList<Webtoon>();
		for (int i = 0; i < listOfWebtoons.size(); i++) {
			Webtoon webtoon = listOfWebtoons.get(i);
			if (genre.equalsIgnoreCase(webtoon.getGenre())) {
				webtoonsByGenre.add(webtoon);
			}
		}
		return webtoonsByGenre;
	}

	@Override
	public Set<Webtoon> getWebtoonListByFilter(Map<String, List<String>> filter) {
		// author & genre가 동일한 웹툰 리턴
		Set<Webtoon> webtoonsByAuthor = new HashSet<Webtoon>();
		Set<Webtoon> webtoonsByGenre = new HashSet<Webtoon>();
		
		Set<String> webtoonsByFilter = filter.keySet(); // keySet : 전체 key 출력
		
		// author, genre 검출 작업
		if(webtoonsByFilter.contains("author")) {
			for(int i = 0; i < filter.get("author").size(); i++) {
				String authorName = filter.get("author").get(i);
				for(int j = 0; j < listOfWebtoons.size(); j++) {
					Webtoon webtoon = listOfWebtoons.get(j);
					if (authorName.equalsIgnoreCase(webtoon.getAuthor())) {
						webtoonsByAuthor.add(webtoon);
					}
				}
			}
			
			if (webtoonsByFilter.contains("genre")) {
				for (int i = 0; i < filter.get("genre").size(); i++) {
					String genre = filter.get("genre").get(i);
					List<Webtoon> list = getWebtoonListByGenre(genre); // 만든 메서드 활용
					webtoonsByGenre.addAll(list);
				}
			}
		}
		
		webtoonsByGenre.retainAll(webtoonsByAuthor);
		return webtoonsByGenre;
	}

	@Override
	public Webtoon getWebtoonByName(String name) {
		Webtoon webtoonInfo = null;
		for (int i = 0; i < listOfWebtoons.size(); i++) {
			Webtoon webtoon = listOfWebtoons.get(i);
			if (webtoon != null && webtoon.getName() != null && webtoon.getName().equals(name)) {
				webtoonInfo = webtoon;
				break;
			}
		}
		if (webtoonInfo == null) {
			throw new IllegalArgumentException("연재 시작일을 찾을 수 없습니다 : " + name);
		}
		
		return webtoonInfo;
	}
}