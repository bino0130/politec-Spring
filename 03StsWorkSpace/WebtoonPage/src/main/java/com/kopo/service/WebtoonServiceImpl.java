package com.kopo.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopo.domain.Webtoon;
import com.kopo.repository.WebtoonRepository;

@Service
public class WebtoonServiceImpl implements WebtoonService {

	@Autowired
	private WebtoonRepository webtoonRepository;
	
	@Override
	public List<Webtoon> getAllWebtoonList() {
		return webtoonRepository.getAllWebtoonList();
	}

	@Override
	public List<Webtoon> getWebtoonListByGenre(String genre) {
		List<Webtoon> webtoonsByGenre = webtoonRepository.getWebtoonListByGenre(genre);
		return webtoonsByGenre;
	}

	@Override
	public Set<Webtoon> getWebtoonListByFilter(Map<String, List<String>> filter) {
		Set<Webtoon> webtoonsByFilter = webtoonRepository.getWebtoonListByFilter(filter);
		return webtoonsByFilter;
	}

	@Override
	public Webtoon getWebtoonByName(String name) {
		Webtoon webtoon = webtoonRepository.getWebtoonByName(name);
		return webtoon;
	}
}