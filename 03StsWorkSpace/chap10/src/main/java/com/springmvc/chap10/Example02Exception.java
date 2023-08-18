package com.springmvc.chap10;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

/*
 * SuppressWarnings : 경고 나오는 걸 무시해줌 (안 써도 되긴 하지만, 쓰는 이유 : JVM에서 쓰는 걸 권장함)
 */
@SuppressWarnings("serial")
@ResponseStatus(value=HttpStatus.NOT_FOUND, reason="찾을 수 없습니다")
public class Example02Exception extends Exception {
	public Example02Exception(String message) {
		super(message);
		System.out.println(message);
	}
}