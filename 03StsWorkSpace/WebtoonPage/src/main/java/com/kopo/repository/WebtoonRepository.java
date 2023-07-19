package com.kopo.repository;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.kopo.domain.Webtoon;

public interface WebtoonRepository {
	// 전체 웹툰 목록 리턴
	List<Webtoon> getAllWebtoonList();
	
	// 매개변수와 동일한 종류의 웹툰만 리턴
	List<Webtoon> getWebtoonListByGenre(String genre);
	
	// author & genre가 동일한 웹툰만 리턴
	// ex) localhost:8081/toons/webtoons/filter/bookFilter;author = ''; genre = '';
	// URL을 입력하면 만족하는 웹툰만 리턴
	Set<Webtoon> getWebtoonListByFilter(Map<String, List<String>> filter);
	
	// @RequestParam
	// ex)
	Webtoon getWebtoonByName(String name);
}