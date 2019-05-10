package com.bitcamp.aura.review.util;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class Location {
	public HashMap<String, List<String>> locationList() {
		HashMap<String, List<String>> category = new HashMap<>();
		List<String> gangnam = Arrays.asList(GANGNAM);
		List<String> gangbuk = Arrays.asList(GANGBUK);
		List<String> gyeonggi = Arrays.asList(GYEONGGI);
		List<String> busan = Arrays.asList(BUSAN);
		List<String> jeju = Arrays.asList(JEJU);
		category.put("gangnam", gangnam);
		category.put("gangbuk", gangbuk);
		category.put("gyeonggi", gyeonggi);
		category.put("busan", busan);
		category.put("jeju", jeju);
		
		return category;
	}
	
	public static final String[] GANGNAM = {
			"가로수",
			"강남",
			"강동구",
			"개포",
			"일원",
			"수서",
			"관악구",
			"교대",
			"서초",
			"구로구",
			"금천구",
			"논현동",
			"대치동",
			"도곡동",
			"동작",
			"사당",
			"등촌",
			"강서",
			"목동",
			"양천",
			"방배",
			"반포",
			"잠원",
			"방이동",
			"삼성동",
			"서래마을",
			"송파",
			"가락",
			"신사",
			"압구정",
			"신천",
			"잠실",
			"양재동",
			"여의도",
			"역삼",
			"선릉",
			"영등포구",
			"청담동"
	};
	
	public static final String[] GANGBUK = {
			"건대",
			"군자",
			"광진",
			"광화문",
			"노원구",
			"대학로",
			"혜화",
			"동대문구",
			"동부이촌동",
			"마포",
			"공덕",
			"명동",
			"남산",
			"삼청",
			"인사",
			"상암",
			"성산",
			"서대문구",
			"성북구",
			"수유",
			"도봉",
			"강북",
			"남대문",
			"시청",
			"신촌",
			"이대",
			"연남동",
			"왕십리",
			"성동",
			"용산",
			"숙대",
			"은평구",
			"이태원",
			"한남동",
			"종로",
			"중구",
			"중랑구",
			"합정",
			"망원",
			"홍대"
	};

	public static final String[] GYEONGGI = {
			"가평군",
			"고양시",
			"과천시",
			"광명시",
			"광주시",
			"구리시",
			"군포시",
			"김포시",
			"남양주시",
			"동두천시",
			"부천시",
			"성남시",
			"수원시",
			"시흥시",
			"안산시",
			"안성시",
			"안양시",
			"양주시",
			"양평군",
			"여주시",
			"연천군",
			"오산시",
			"용인시",
			"의왕시",
			"의정부시",
			"이천시",
			"파주시",
			"평택시",
			"포천시",
			"하남시",
			"화성시"
	};

	public static final String[] BUSAN = {
			"강서구",
			"금정구",
			"기장군",
			"남구",
			"동구",
			"동래구",
			"진구",
			"북구",
			"사상구",
			"사하구",
			"서구",
			"수영구",
			"연제구",
			"영도구",
			"중구",
			"해운대구"
	};

	public static final String[] JEJU = {
			"모슬포",
			"화순",
			"서귀포",
			"성산",
			"우도",
			"제주",
			"중문단지",
			"표선",
			"성읍",
			"한림",
			"애월",
			"함덕",
			"김녕"
	};
}
