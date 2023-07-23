package com.kopo.repository;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Repository;

import com.kopo.domain.Players;

@Repository
public class PlayersRepositoryImpl implements PlayersRepository {
	private List<Players> listOfPlayers = new ArrayList<Players>();
	
	public PlayersRepositoryImpl() {
		Players player1 = new Players("Puskas Ferenc", "ST");
		player1.setClub("Fut Icons");
		player1.setNation("Hungary");
		player1.setLeague("Icons");
		player1.setSkill("4★");
		player1.setWeakFoot("3★");
		player1.setHeight("172cm");
		player1.setSeason("Icon");
		player1.setDescription("그의 트레이드 마크는 강력한 왼발 슛이다. 슛도 패스도 심지어 개인기까지 지독하게 왼발만을 고집했기에 별명이 악마의 왼발. 더욱 무서운 것은 85경기 84골을 29세 이전에 이룬 것이라는 것. 1954 스위스 월드컵에서 맞붙었던 홍덕영 골키퍼에 의하면 그의 슈팅은 너무 강력해서 선방하면 갈비뼈가 부러질 것같은 고통을 주었고 골대에 공이 맞으면 한참동안이나 흔들렸다고 했다. 하지만 그의 문제점 역시 지독한 왼발 고집이다. 오른발로 밀어넣어도 될 상황에서 각도까지 바꿔가며 굳이 왼발로 차려는 움직임을 보여줬다. 영상은 찾을 수 없지만 그것 때문에 많은 골을 놓쳤을 수도 있다. 어쨌든 그래도 푸스카스는 어마어마한 기록을 남겼다.\r\n" + 
				"\r\n" + 
				"이런 기록만 보면 최전방 스트라이커일 것같지만 드리블도 수준급이었고 플레이메이킹을 통한 기회 창출 능력 역시 뛰어났다. 매직 마자르의 'MM 포메이션'에서 그는 포메이션 상 코치슈와 스트라이커 위치에 있지만 실제로는 제로톱에 위치한 폴스 나인 역할의 중앙 공격수였던 히데그쿠티 난도르만큼 내려오며 공격을 전개하기도 했었다. 또한 레알에서도 그렇고 팀원들과의 유기적인 공격 연계에도 아주 뛰어났다.\r\n" + 
				"\r\n" + 
				"​마치 요한 크루이프가 토탈 풋볼을 잘 이행해낸것처럼 그 역시도 '소셜리스트 풋볼' 정립에 있어서 크나 큰 역할을 했다고 본다. 정말 아쉬운것은 헝가리 혁명이다. 축구에 만약은 없다지만 헝가리 혁명이 없었다면 축구강국은 브라질이 아닌 헝가리였을 수도 있다. 월드컵 결승에는 정말 많은 비극과 기적이 있었지만 푸스카스에게 있어서 최악의 비극은 당연 '베른의 비극', 또 스페인으로 귀화했을때는 운없게도 4경기밖에 못뛰고 다시한번 국대은퇴를 선언했어야 했으니...... 2009년에는 올해의 골 상의 이름을 푸스카스상으로 변경해서 발롱도르와 함께 수상하기 시작했다. 이를 보면 축구사의 푸스카스가 남긴 발자취가 대단하다는 것을 알수 있다.");
		player1.setImgPath("puskas.png");
		
		Players player2 = new Players("Pele", "CAM");
		player2.setClub("Fut Icons");
		player2.setNation("Brazil");
		player2.setLeague("Icons");
		player2.setSkill("5★");
		player2.setWeakFoot("4★");
		player2.setHeight("173cm");
		player2.setSeason("Icon");
		player2.setDescription("펠레의 플레이 스타일을 한 마디로 표현하자면, 모든 능력이 정점에 가까운 완성형 선수다. 최근 들어 멀티 플레이어나 육각형 선수들이 많아지면서 '약점이 없다'는 표현이 남용되고 있지만, 펠레는 그중에서도 단연 정점이라고 할 수 있다. 그것도 인사이드 포워드의 표본이라 불릴만한 뛰어난 드리블 능력과 패싱 능력을 활용하여 많은 기회를 창출하고 골 결정력의 우수함을 증명하는 해결사적인 역할 뿐만 아니라 심지어 공중 경합 능력도 당대 최고 수준인데다 수비 가담까지 했다는 점에서 모든 부분이 완벽했던 '컴플리트 포워드'라 불리기에도 제격이었다.\r\n" + 
				"\r\n" + 
				"펠레의 높은 득점 기록 때문에 그를 전형적인 골게터로 착각하기 쉽지만, 펠레는 자서전에서 스스로를 공격형 미드필더라 칭했을 정도로 미드필더적인 성향이 있는 선수였다. 1970년 월드컵 직전에 브라질 대표팀 감독이 펠레를 센터포워드로 뛰게하자, 당시 언론의 인터뷰에서 거기는 당신이 좋아하는 포지션이 아니었던 것이 아니냐고 물어볼 정도였다. 펠레도 이에 대해 15년을 미드필더로 뛰었는데, 갑자기 하라고 하면 되겠느냐며 불만을 표출했다. 실제로 이 링크처럼 펠레를 공격형 미드필더로 분류한 사례들이 존재한다. 당시 펠레의 포지션은 브라질에서 Ponta de Lança(창날)이라 불렸던 포지션이다. 이 창날 포지션은 빠르고 날렵한 드리블로 라인을 부순 뒤, 창처럼 침투해서 마무리를 짓기도 했고, 때때로 3선까지 내려와 박스 사이를 휘저으며 중원 장악을 돕기도 했다. 현재의 전술 및 포지션과 완전한 1대1 대응은 어려우나, 연관짓자면 지금의 세컨드 스트라이커 혹은 공격형 미드필더와 비슷한 역할을 수행했다고 볼 수 있다. 이러한 펠레의 역할을 잘 알고 있었던 전문가들은 발롱도르 드림팀을 선정할 때 펠레를 공격형 미드필더 후보로 분류했다. 이에 대해 축구 매니아를 제외한 많은 축구팬들은 당황하는 반응을 보였다.");
		player2.setImgPath("pele.png");
		
		Players player3 = new Players("Kaka", "CAN");
		player3.setClub("Fut Icons");
		player3.setNation("Brazil;");
		player3.setLeague("Icons");
		player3.setSkill("5★");
		player3.setWeakFoot("4★");
		player3.setHeight("186cm");
		player3.setSeason("Icon");
		player3.setDescription("공격형 미드필더의 꽃이라 불릴 만큼 슈팅, 드리블, 패스 삼박자를 두루 갖춘 선수였다. 세부적으로 봐도 드리블, 치달, 중거리 슛, 골 결정력, 크로스, 스루 패스, 숏 패스, 롱 패스 모두 일품이었다. 퍼스트 터치와 오프더볼 움직임도 훌륭했다. 특히 아직까지도 치달 하면 카카를 떠올리는 사람이 많을 정도로, 압도적인 최대 속력을 유지하는 동시에 공을 컨트롤하는 기술이 월등했다. 이렇게 기술과 스피드, 패스가 강점인 선수는 몸싸움이 약한 경우가 많은데, 카카는 피지컬도 탄탄하고 몸싸움마저 훌륭했다. 대표적인 예가 전성기의 맨유 수비진을 테크닉과 피지컬을 조합해 완전히 가지고 놀며 무너뜨린 06-07 챔스 4강전.\r\n" + 
				"\r\n" + 
				"또 레알 마드리드 이적 후 부상으로 먹튀가 됐다는 오명과 달리, 팀원의 노쇠화를 홀몸으로 감당해야 했던 07-08 시즌 이전에는 매 시즌 50경기 가까이 소화할 정도로 부상이 적었다. 카카가 몰락하게 된 계기는 바로 부상을 안은채로 무리해서 월드컵에 출전한 것이었다. 수많은 월드클래스 선수들이 마치 모닥불에 뛰어드는 불나방처럼 월드컵의 유혹을 참지못해 몸 아픈거 참고 어거지로 출전했다가 폼을 잃어버리곤 하는데, 카카도 그 중에 하나가 되고 말았다.\r\n" + 
				"\r\n" + 
				"활동량도 준수한 편이었다. 심지어 레알 시절에도 컨디션이 괜찮을 때는 생각 이상으로 좋은 활동량을 보여줬다. 동시에 06-07 시즌 당시에는 여러 이유들로 인해 카카에게 주어지는 역할이 과다해지면서 스프린트의 빈도가 늘어났는데도 이를 잘 수행하는 체력을 보여주었다. 절정의 폼이었을 때에는 초인이나 다름없었고 이러한 모습 덕분에 신계 두 명을 제치고 2007년 발롱도르를 거머쥐었다.\r\n" + 
				"\r\n" + 
				"선수로서 최전성기를 보냈던 AC 밀란 시절에는 치달의 임팩트가 부각되었지만 다른 능력도 뛰어났다. 2004-05 시즌의 리버풀과의 챔피언스 리그 결승전에서 리버풀을 패배 직전까지 몰고 갔던 건 카카의 날카로운 공격 전개와 킬러 패스였다. 특히 경기를 3:0으로 굳히는 크레스포를 향한 어시스트는 문자 그대로 대지를 가르는 킬러 패스. 또한 전성기 시절을 돌이켜 보면 득점력도 무시무시했다. UCL에서 86경기 동안 30골을 넣어서 지금도 역대 득점 기록 20위 안에 들어가고, 특히 2006-07 챔스에서는 10골을 넣어 득점왕이 됐다.[20] UCL 득점왕이 발롱도르를 타는 징크스는 2007년부터 2017년까지 이어졌는데, 이 징크스를 시작한 선수가 바로 카카였다는 것은 유념할 만하다.\r\n" + 
				"\r\n" + 
				"카카의 능력이 가장 빛났던 순간은 바로 역습상황인데 좌우 측면과 중앙을 가리지 않는 역대급 치달과 뛰어난 킬러 패스, 골 결정력으로 커리어 대부분의 공격 포인트를 역습상황에서 쌓았다. 세밀한 드리블 기술과 중거리 슛도 뛰어나 역습상황에서만 쓸 수 있는 반쪽짜리 선수도 아니었다. 전성기 때는 완벽한 공격형 미드필더 중 한 명이었다.\r\n" + 
				"\r\n" + 
				"물론 이러한 장점들 중 가장 독보적이고 또 다른 장점들을 잘 받쳐 준 건 바로 경악스러운 스피드와 바디 밸런스였다. 때문에 카카의 전성기를 지켜본 세리에 팬들은 스피드를 바탕으로 이지선다의 플레이를 펼치던 정상급 선수가 스피드가 죽으니 다른 능력들마저도 어정쩡해져서 폭망했다고 추측하기도 한다. 또한 부상으로 신체 균형이 깨지면서 몸싸움이 약해진 것도 한 몫 한다. 테크닉과 축구지능도 정상급으로 뛰어났지만 아무래도 기본적으로 신체 능력, 특히 주력에 기반한 돌파에 실력의 바탕을 둔 선수인 탓에 그 정점과 한계를 동시에 보여 준 선수. 한편 카카처럼 스피드가 죽으니 다른 장점까지 같이 죽어버린 케이스로는 마이클 오언, 안드리 셰브첸코, 페르난도 토레스가 있다.\r\n" + 
				"\r\n" + 
				"레알에서의 생활을 끝내고 AC 밀란으로 돌아온 카카는 부상 여파와 노쇠화가 겹쳐 과거 전성기 시절의 주력은 유지하지 못했다. 또한 현대 축구가 발전하면서 공격형 미드필더라는 포지션이 사라짐에 따라 카카도 조금 더 밑에 내려와서 뛰는 경기들이 많아졌다. 비록 주력이 조금 줄었다고 하나, 기존에 가졌던 찬스를 만들어 낼 수 있는 정교한 패스 능력은 여전했기 때문에 중앙 미드필더를 완벽히 소화하는 모습이다. 오랜 경험과 어느 정도 타고난 축구지능은 이러한 전술 수행을 뒷받침해 주기에 충분했다.\r\n" + 
				"\r\n" + 
				"카카의 이런 유니크한 플레이 스타일과 수려한 외모 때문에 많은 팬들이 제2의 카카를 기대하지만, 현재까지 이런 유형의 선수는 찾기 어렵다.");
		player3.setImgPath("kaka.png");
		
		Players player4 = new Players("Vinicius Junior", "LW");
		player4.setClub("Real Madrid");
		player4.setNation("Brazil");
		player4.setLeague("LaLiga Santander");
		player4.setSkill("5★");
		player4.setWeakFoot("5★");
		player4.setHeight("176cm");
		player4.setSeason("TOTS");
		player4.setDescription("폭발적인 스피드와 화려한 발재간을 갖췄으며 탄력적이고 유연한 피지컬과 이에 기반한 민첩성을 앞세워 상대 수비진을 헤집는 스타일이다. 속도가 빠르고 민첩하다보니 드리블의 파괴력이 상당하며 최대 장점으로 꼽힌다. 왼쪽 윙이 주 포지션이며 오른쪽 윙어로도 뛸 수 있지만, 아직은 왼쪽에서 뛰는 것에 비해 퍼포먼스가 떨어진다. 브라질리언 특유의 예측하기 힘든 플레이와 깔끔한 첫 터치가 장점으로 꼽힌다. 전형적인 브라질리언의 클래식함이 잘 묻어나면서도 현대 축구가 요구하는 능력들을 지닌 선수라 레알 마드리드 팬들에게도 기대를 많이 받고 있다.");
		player4.setImgPath("vinicius.png");
		
		Players player5 = new Players("Karim Benzema", "CF");
		player5.setClub("Real Madrid");
		player5.setNation("France");
		player5.setLeague("LaLiga Santander");
		player5.setSkill("5★");
		player5.setWeakFoot("4★");
		player5.setHeight("185cm");
		player5.setSeason("TOTS");
		player5.setDescription("준수한 피지컬과 스피드, 뛰어난 볼 컨트롤 능력을 바탕으로 세계 최정상급 포스트 플레이를 할 수 있으며, 드리블과 패스에도 능해 찬스 메이킹에서도 뛰어난 강점을 보임과 동시에 해가 지날수록 더욱 좋아지는 골 결정력을 바탕으로 10년 넘게 레알 마드리드의 주전 스트라이커를 차지하고 있다. 본디 2010년대 4대 스트라이커 중에서 아구에로와 최약체 자리를 두고 다투는 위치였으나, 21-22 시즌에 본인의 커리어 하이를 갱신하며 발롱도르까지 받아버린 역대급 활약을 보여준 덕에 확실하게 급수가 올라가 현재 각종 축구 커뮤니티에선 레반도프스키-수아레스-벤제마 누가 제일 위인가를 두고 활발하게 토론하고 있을 지경이다.");
		player5.setImgPath("benzema.png");
		
		Players player6 = new Players("Kylian Mbappé", "ST");
		player6.setClub("Paris SG");
		player6.setNation("France;");
		player6.setLeague("Ligue 1");
		player6.setSkill("5★");
		player6.setWeakFoot("4★");
		player6.setHeight("182cm");
		player6.setSeason("TOTS");
		player6.setDescription("음바페 하면 가장 먼저 떠오르는 장점으로, 음바페는 엄청난 스피드를 이용하여 카카를 연상시키는 치달 플레이를 보여준다. 현재 전 세계에서 가장 빠른 축구선수중 한 명으로 불릴 정도로 스피드가 말도 안 되는 수준이다. 현재 음바페와 동나이대에서 그만큼 빠른 선수는 엘링 홀란드, 비니시우스 주니오르 정도가 고작이며, 이들 중에서도 스피드로 가장 유명한 인물이다. 음바페는 단순히 빠른 선수라는 말로는 부족한 수준인데, 순간 스피드, 최고 속도는 세계 1위를 다투며 음바페가 압도적으로 빠르게 느껴지는 이유는 최고속도가 탑급이기도 하지만 긴 보폭, 압도적인 민첩성, 탄력을 이용해 순간적인 스프린트로 가속을 붙이는 것이 차원이 다를 정도로 빠르기 때문이다. 현재 최고기록은 비니시우스 다음가는 2위에 기록되고 있다."
				+ "골 결정력 또한 음바페의 장점들 중 하나로 평가받는데, 리그앙 득점왕을 차지한 18-19 시즌부터는 매 시즌 40골 이상을 넣을 수 있는 수준에 이르며 박스 안에서의 터치가 매우 좋아 공을 받은 후 슈팅을 하기 위한 최적의 자세를 잘 만들고, 꾸준한 벌크업으로 인한 탄탄한 몸 덕분에 균형을 쉽게 잃지 않는다. 킥력 또한 뛰어난 편인데, 천부적으로 뛰어난 발목 힘과 정확성을 바탕으로 파 포스트와 니어 포스트 구석을 노리는 슈팅, 칩슛, 골키퍼의 가랑이 사이를 노리는 슈팅 모두 정확하면서도 강력하다. 수비수로 인해 방해받을 때에는 페인팅 동작으로 손쉽게 벗겨내고 공간을 만들어 때려버린다. 게다가 음바페는 슈팅 시에 양발 모두 잘쓰기 때문에 이러한 슈팅들을 왼발, 오른발 가리지 않고 때릴 수 있는편이다. 특히 니어포스트로 강하게 때리는 슈팅은 음바페의 또 하나의 트레이드 마크로 자리잡는 중이다.\r\n" + 
				"\r\n" + 
				"또한 음바페는 어린 나이임에도 불구하고 박스 안에서의 침착함, 골키퍼와 1대 1, 득점찬스에서 더 좋은 위치에 있는 동료에게 패스하는 이타성 또한 광장히 좋은 편이며 이러한 장점들이 데뷔 초에 비하여 경험이 쌓여가며 더욱 발전한 만큼 앞으로도 계속해서 발전할 것으로 예상된다.");
		player6.setImgPath("mbappe.png");
		
		Players player7 = new Players("Javier Mascherano", "CDM");
		player7.setClub("HERO");
		player7.setNation("Argentina");
		player7.setLeague("LaLiga Santander");
		player7.setSkill("3★");
		player7.setWeakFoot("3★");
		player7.setHeight("174cm");
		player7.setSeason("HERO");
		player7.setDescription("전형적인 홀딩 미드필더로, 헌신적인 선수다. 상대 선수를 마크하여 경기장에서 지워 버리는 능력이 탁월하며[23] 패스 길목 차단에도 능하다. 젠나로 가투소와 유사하게 과격하고 터프한 수비를 구사하기에 옐로 카드는 일상으로 달고 다니는 사나이지만, 그의 활동량과 패스 차단 능력은 언제나 팀에 도움이 된다.\r\n" + 
				"\r\n" + 
				"주 포지션은 포백 앞의 수비형 미드필더이나 축구 IQ가 높아서 멀티 플레이어로 팀 상황에 따라 여러 포지션을 소화가 가능했다. 본래 위치뿐만 아니라 조금 더 전진하는 박스투박스 미드필더로도 뛴 적이 있으며, 바르셀로나 시절에는 푸욜이 은퇴한 이후 수 년간 피케와 짝을 이뤄 센터백 역할을 수행했다. 심지어 부상자가 많아 수비진 구성이 짜여지지 않을 때는 측면 수비수로도 출전한 적이 있다.\r\n" + 
				"\r\n" + 
				"리더십과 인품 역시 훌륭하다고 평가받는 선수이며, 대표팀에서는 사네티의 뒤를 이어 주장 완장을 찼다.[24]\r\n" + 
				"\r\n" + 
				"웨스트햄, 리버풀 시절부터 마스체라노를 지켜본 축구팬들은 알겠지만, 마스체라노는 거칠고 투박한 이미지가 강했고 패스, 발기술에 강점이 있는 선수는 아니었다. 그런데 바르셀로나로 와서 진화를 거듭하며 후방 빌드업을 큰 무리 없이 수행할 수 있는 자원으로 거듭났다. 비교 대상이 패스플레이의 최정점에 있는 바르셀로나의 주전 피케 혹은 부스케츠이기에 평가절하되지만 다른 팀의 정상급 센터백과 비교해 봐도 중장거리 패스를 꽤 능수능란하게 뿌리는 자원중에 하나다. 발 기술도 늘어서 간단한 탈압박 또한 가능해져, 수비형 미드필더로 뛰는 아르헨티나 국가대표팀에서도 과거보다 섬세한 선수로 탈바꿈했다. 심지어 가고가 폼이 떨어지고 바네가가 대표팀에 복귀하기 전까지인 2010년대 초중반에는 후방 빌드업과 수비 라인 컨트롤 등 후방에서 벌어지는 모든 일을 마스체라노 혼자 책임진다 해도 과언이 아닐 정도였다. 즉 그의 플레이스타일 변화와 전성기가 곧 아르헨티나 대표팀의 변화와 전성기라고 볼 수 있다. 아직 빌드업 측면에서 완숙하지 못했던 2010년 월드컵에서는 이미 35살을 넘긴 베론과 짝을 맞춰 출전하며 왕성한 활동량과 수비력을 자랑했으나, 베론이 1차전 이후 부상으로 나올 수 없게 되자 마라도나의 기이한 포메이션의 허리를 홀로 책임졌고, 아르헨티나 대표팀은 무너졌다. 반면 기량이 절정에 달한 2014년 월드컵에서는 가고, 빌리아라는 다소 부족한 중원을 이끌며 대표팀이 결승전에 이르는데 메시 못지않은 기여를 했다. 하지만 전성기가 지난 2018년 월드컵에서는 대표팀의 침몰을 막지 못하고 16강에서 탈락했다. 즉 2010년대 아르헨티나 대표팀에서의 마스체라노는 메시 못지않은 키 플레이어였다.");
		player7.setImgPath("mascherano.png");
		
		Players player8 = new Players("David Ginola", "LM");
		player8.setClub("HERO");
		player8.setNation("France");
		player8.setLeague("Ligue 1");
		player8.setSkill("5★");
		player8.setWeakFoot("5★");
		player8.setHeight("186cm");
		player8.setSeason("HERO");
		player8.setDescription("정교한 기술력을 가진 좌측 윙어로, 드리블 테크닉을 통해 화려한 볼거리를 제공하여 팬들과 평론가 모두에게 극찬을 받았던 그라운드의 마법사였다. 특히 그 시대에 흔치 않게 양발을 자유자재로 사용했던 윙어로, 뉴캐슬 시절 페렌츠바로시를 상대로 오른발로 데니스 베르캄프가 연상되는 트래핑을 한 후 바로 왼발로 쏜 대포알 발리슛은 이를 잘 보여주는 지놀라의 대표적 골로 회자된다. 또한 1999년 리즈 유나이티드와의 FA컵 경기에서 왼발 중거리슛으로 골대를 두 번 친 후 오른발 중거리 슛으로 기어이 득점을 이뤄내는 (...) 신기를 보일 정도로 본인이 가진 기술력을 양발과 연계하는 능력이 탁월했다. 이 양발을 이용한 드리블 돌파 기술이 특히 탁월했는데, 상대 풀백 앞에서 공을 오밀조밀 드리블하며 상대의 태클을 유도하고 본인은 앞으로 치고나가는 특유의 드리블 스타일은 아직도 지놀라의 대표 기술로 회자된다.\r\n" + 
				"\r\n" + 
				"다만 상기된 바 있는 저주받은 국가대표 경력과 EPL 중위권 팀을 전전한 팀 커리어의 영향으로 수상 경력이 빈약하다. 특히 지놀라의 전성기였던 토트넘 시절은 정작 팀이 강등권에서 허우적대는 막장테크 (...)를 타고있었기 때문에 임대의 전설을 쓴 위르겐 클린스만과 신입생 지놀라 둘이서 눈물겨운 활약을 보여줘야만 했다. 또한 본인의 주장과 개성이 뚜렷하여 자유방임적인 케빈 키건같은 감독 밑에서는 예술적인 천재성을 뚜렷히 보여줬으나, 제라르 울리에 등 권위적 감독들과는 상기된 엑조세 미사일 발언으로 인한 명예훼손 법정공방까지 가는 등, 마찰을 많이 일으켜 다루기 힘든 선수라는 이미지도 있었다. 또한 화려한 발기술과 외모에 가려졌지만 수비 참여에 적극적이지 않은 모습을 보여줬다.");
		player8.setImgPath("ginola.png");
		
		Players player9 = new Players("Joe Cole", "RW");
		player9.setClub("HERO");
		player9.setNation("England;");
		player9.setLeague("Premier League");
		player9.setSkill("4★");
		player9.setWeakFoot("4★");
		player9.setHeight("176cm");
		player9.setSeason("HERO");
		player9.setDescription("폴 개스코인의 뒤를 이었던 천재적인 재능의 선수였다. 팬들은 훗날 같은 첼시의 10번이 되었던 에덴 아자르와 많이 엮고 싶어 하지만, 실제로 서로가 테크니션이라는 점 외에는 그렇게 닮은 구석이 많지 않다.둘다 잘생긴 단신 빡빡이란것은 닮았다 오히려 개스코인이나 잔프랑코 졸라의 케이스와 비교해야 마땅할 것이다.\r\n" + 
				"\r\n" + 
				"에덴 아자르는 릴 OSC 시절주터 윙어로서 주목 받는 선수였지만, 조 콜은 본디 중앙 공격형 미드필더에 가까운 선수였으며, 요즘의 기준에선 스타일상으로 에덴 아자르보다는 잭 그릴리쉬에 가까운 선수였다. 거대한 재능과 열정을 가졌으나, 전술적으로 미묘한 어긋남을 보였던 선수. 폴 개스코인, 데얀 사비세비치 등 이러한 틀이 잡혀 있지 않은 변덕쟁이 천재 유형의 선수들이 그렇듯이 조 콜 또한 그 재능에 비하여 선수 생활 내내 자신의 메인 포지션을 굳혀서 꾸준히 재능에 걸맞는 위대한 성과를 낸 적이 없었으며, 팀의 사정에 따라 여러 포지션을 전전하였다.\r\n" + 
				"\r\n" + 
				"상투적인 표현임에도 불구하고, 모든 것을 다 갖추고 있었던 선수였다고 할 수 있다. 에덴 아자르에게는 없는 수비 능력과 의지 또한 어느정도 가지고 있었다. 양 발로 강슛을 날릴 수 있었고, 슛팅이 위치를 가리지 않아서 각도가 없는 측면이나 먼 거리에서의 독수리 슛 같은 골들도 있었다. 라보나 킥을 구사한다던가, 화려한 턴 동작도 많았으며, 공간을 파고드는 것도 잘 했고, 패스의 종류도 다양했다. 그러나 가장 큰 무기는 드리블이었으며, 공간을 확보한 상태에서의 드리블도 좋았지만, 선수들에게 둘러 쌓인 난전 속에서 드리블로 벗겨나와 빠져 나가는 데도 능했다. 한창 때는 각종 축구 게임들에서 조 콜의 능력치는 매우 높았으며, 풋볼매니저 같은 게임에선 아예 천재성이 20점 만점에 20점이었다. 자신의 세대에선 가장 뛰어난 잉글랜드의 재능으로 널리 인정 받았었다.\r\n" + 
				"\r\n" + 
				"그는 본디 중앙 공격형 미드필더였지만, 첼시의 환경에서는 측면 미드필더를 소화하는 경우가 많았으며, 덕분에 굉장히 터프하고 호전적인 경기 스타일을 갖고 있었다. 거친 슬라이딩 태클과 적극적인 압박 등은 주제 무리뉴 감독의 부임 이후 그에게서 주문 받은 것들인데, 아주 성실하게 잘 이행하며 주전 경쟁을 순조롭게 펼쳐갔다.\r\n" + 
				"\r\n" + 
				"다만, 피지컬적으로 그리 튼튼하지 않은 몸임에도 거칠고 헌신적인 플레이와 역동적인 테크닉을 모두 구사하며 경기 욕심을 구가하였기에 필연적으로 선수 생활 내내 부상을 동반하며 시즌을 보내곤 했다. 그럼에도 자신의 세대에서 가장 뛰어난 기술과 재능을 가진 선수임에는 변함이 없었으나, 계속 되는 부상으로 인해 리버풀 이적 즈음에서는 이미 신체 능력의 손상으로 재능을 다리가 맞춰주지 못하면서 전성기가 꺾이게 된다. 그 이후 릴 등을 전전하며 그저 그런 커리어를 쌓았으나, 2000년대 중반까지 보여주었던 그 명성만큼은 그 시절의 축구를 보았던 많은 사람들에겐 아직까지 남아 있다.");
		player9.setImgPath("cole.png");
		
		listOfPlayers.add(player1);
		listOfPlayers.add(player2);
		listOfPlayers.add(player3);
		listOfPlayers.add(player4);
		listOfPlayers.add(player5);
		listOfPlayers.add(player6);
		listOfPlayers.add(player7);
		listOfPlayers.add(player8);
		listOfPlayers.add(player9);
	}

	@Override
	public List<Players> getAllPlayersList() {
		return listOfPlayers;
	}

	@Override
	public List<Players> getPlayersListBySeason(String season) {
		List<Players> playersBySeason = new ArrayList<Players>();
		for (int i = 0; i < listOfPlayers.size(); i++) {
			Players players = listOfPlayers.get(i);
			if (season.equalsIgnoreCase(players.getSeason())); {
				// equalsIgnoreCase : 대소문자 관계없이 문자열을 비교
				System.out.println("Season : " + season);
				playersBySeason.add(players);
			}
		}
		return playersBySeason;
	}

	// ex) localhost:8082/football/players/filter/playersFilter;nation=Brazil;height=186cm
	@Override
	public Set<Players> getPlayersListByFilter(Map<String, List<String>> filter) {
		// nation & height가 동일한 선수만 리턴
		Set<Players> playersByNation = new HashSet<Players>();
		Set<Players> playersByHeight = new HashSet<Players>();
		
		Set<String> playersByFilter = filter.keySet();
		
		// nation, height 검출 작업
		if (playersByFilter.contains("nation")) {
			for (int i = 0; i < filter.get("nation").size(); i++) {
				String nationName = filter.get("nation").get(i);
				for (int j = 0; j < listOfPlayers.size(); j++) {
					Players players = listOfPlayers.get(j);
					
					if (nationName.equalsIgnoreCase(players.getName())) playersByNation.add(players);
				}
			}
		}
		
		if (playersByFilter.contains("height")) {
			for (int i = 0; i < filter.get("height").size(); i++) {
				String heightLength = filter.get("height").get(i);
				for (int j = 0; j < listOfPlayers.size(); j++) {
					Players players = listOfPlayers.get(j);
					
					if (heightLength.equalsIgnoreCase(players.getHeight())) playersByHeight.add(players);
				}
			}
		}
		
		playersByNation.retainAll(playersByHeight);
		// A.retainAll(B) : A와 B의 교집합만 남기고 나머지는 제거한다. 
		return playersByNation;
	}

	@Override
	public Players getPlayersByName(String name) {
		Players playersInfo = null;
		for (int i = 0; i < listOfPlayers.size(); i++) {
			Players players = listOfPlayers.get(i);
			if (players != null && players.getName() != null && players.getName().equals(name)) {
				playersInfo = players;
				break;
			}
		}
		
		if (playersInfo == null) {
			throw new IllegalArgumentException("선수 이름을 찾을 수 없습니다 : " + name);
		}
		
		return playersInfo;
	}

	@Override
	public void setNewPlayer(Players player) {
		listOfPlayers.add(player);
	}

}
