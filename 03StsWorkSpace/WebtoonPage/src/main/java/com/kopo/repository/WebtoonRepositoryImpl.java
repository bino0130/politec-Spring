package com.kopo.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.kopo.domain.Webtoon;

@Repository
public class WebtoonRepositoryImpl implements WebtoonRepository {
	private List<Webtoon> listOfWebtoons = new ArrayList<Webtoon>();
	
	public WebtoonRepositoryImpl() {
		Webtoon webtoon1 = new Webtoon("��ƼǮ ���ٸ�", "img1.jpg");
		webtoon1.setAuthor("����, ������");
		webtoon1.setDescription("'���ڵ� ���뿡 ���ٸ�?'���� ���ڵ� ���� ���� ��ȭ!");
		webtoon1.setRanking("1��");
		webtoon1.setReleaseDay("������");;
		webtoon1.setWebsite("naver");
		webtoon1.setGenre("���");
		
		Webtoon webtoon2 = new Webtoon("����극��Ŀ", "img2.jpg");
		webtoon2.setAuthor("�����");
		webtoon2.setDescription("ȥ�ڼ� �����Ÿ� ���Ÿ�� ����� ������. ��ġ �ʰ� ������ ũ���� �Ͽ� �ڲ� �ָ����� �Ǵµ�... ������ �޲ٴ� û����� ��Ʈ�����̵� ���!");
		webtoon2.setRanking("2��");
		webtoon2.setReleaseDay("������");;
		webtoon2.setWebsite("naver");
		webtoon2.setGenre("������");
		
		Webtoon webtoon3 = new Webtoon("���� �Ĵ�", "img3.jpg");
		webtoon3.setAuthor("HO9");
		webtoon3.setDescription("Ư��ȣ�ڿ��� �ֿ��� ���忡 ������ �½��屸�ϴ� ���ΰ� �Ѻ��� ��縦 �ϰ� ���� �Ĵ��� ������. �� �Ĵ��� �̸��� '�����Ĵ�'. �����Ĵ��� ����̶��� ã�ƺ� �� ����, ���￡�� ���� ������ ������ ���ڵ��� ��ġ�� �ִ�. ���� �޴��� ������. �ٷ� �޴��� ���� �����̴�. �޴��� ���� �Ѻ� ������ �׶��׶� ��ö ����Ḧ �̿��� �丮�� ����� �Ĵ��̴�. �� �Ĵ��� Ư���� ���� �丮�� �Դ� �մ��� �������� ���� �޴´ٴ� ��. �Ѻ� ������ ��ü ��� ������� ������ ��ó�� �ִ� ���� �մԵ��� �丮�� ġ���ϴ� ���ϱ�?");
		webtoon3.setRanking("3��");
		webtoon3.setReleaseDay("������");;
		webtoon3.setWebsite("naver");
		webtoon3.setGenre("���");
	}
	
	@Override
	public List<Webtoon> getAllWebtoonList() {
		return listOfWebtoons;
	}

}