
<!DOCTYPE html>
<html lang="ko">
<head>
		
	
	
	
	
	

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>장르음악>가요>종합>최신곡>멜론</title>
	<meta name="keywords" content="SKT 음악서비스, 최신음악, 인기가요, 뮤직비디오, 앨범, 플레이어, 다운로드" />
	<meta name="description" content="320만 곡이 넘는 방대한 음악 데이터 베이스로 내가 원하는 최신 음악도 바로 업데이트. 세상의 모든 음악은 멜론에서 함께 즐기세요." />
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:description" content="음악이 필요한 순간, 멜론"/>
	<meta name="viewport" content="width=device-width"/>
	<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?1" />
	<script type="text/javascript">
		checkWin8Metro();
		function checkWin8Metro(){
			var userAgent = navigator.userAgent.toLowerCase();
			var canRunActiveX = false;
			try
			{
				canRunActiveX = !!new ActiveXObject("htmlfile");
			}
			catch (e)
			{
				canRunActiveX = false;
			}
			if ((userAgent.indexOf("windows nt 6.2") >= 0 || userAgent.indexOf("windows nt 6.3") >= 0 ) && userAgent.indexOf("msie") >= 0)
			{
				// windows 8
				if (canRunActiveX == false)
				{
					document.location.href = "http://t.melon.com";
				}
			}
		}
	</script>
	
	
	<link rel="stylesheet" href="/resource/style/web/common/melonweb_layout.css" type="text/css" />
	<link rel="stylesheet" href="/resource/style/web/common/melonweb_comm.css" type="text/css" />
  	<link rel="stylesheet" href="/resource/style/web/genre/melonweb_genre.css" type="text/css" />
	
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script type="text/javascript" src="/resource/script/web/common/jquery-1.9.1.min.js"><\/script>')</script>
	<script type="text/javascript" src="/resource/script/web/member/melonweb_member_external.js"></script>
	<script type="text/javascript" src="/resource/script/web/common/personal_area.js"></script>
	<script type="text/javascript">
	MelonPersonal.init();

	(function() {
		WEBPOCIMG = {
			defaultImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 38){
					thumbType = "_38";
				} else if(width > 38 && width <= 52){
					thumbType = "_52";
				} else if(width > 52 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200){
					thumbType = "_500";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultAlbumImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 38){
					thumbType = "_38";
				} else if(width > 38 && width <= 52){
					thumbType = "_52";
				} else if(width > 52 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200){
					thumbType = "_500";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultArtistImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_300";
				if(width > 0 && width <= 34){
					thumbType = "_34";
				} else if(width > 34 && width <= 40){
					thumbType = "_40";
				} else if(width > 40 && width <= 54){
					thumbType = "_54";
				} else if(width > 54 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 100){
					thumbType = "_100";
				} else if(width > 100 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 160){
					thumbType = "_160";
				} else if(width > 160 && width <= 200){
					thumbType = "_200";
				} else if(width > 200 && width <= 300){
					thumbType = "_300";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noArtist" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultDjImg : function(obj){
			},
			defaultMvImg : function(obj, width, height){
				if(width == null || width == '') width = $(obj).width();
				if(height == null || height == '') height = $(obj).height();

				var ratio43 = Math.floor((4/3)*10)/10;
				var ratio169 = Math.floor((16/9)*10)/10;
				var ratioObj = Math.floor((width/height)*10)/10;

				var ratio = "4x3";
				if(ratioObj == ratio43){
					ratio = "4x3"; //contentsType = "mv43";
				} else if(ratioObj == ratio169){
					ratio = "16x9"; //contentsType = "mv169";
				} else {
					if(ratioObj > 1.5) ratio = "16x9";
					else ratio = "4x3";
				}

				var thumbType = "_" + ratio + "_640";
				if(width > 0 && width <= 60){
					thumbType = "_" + ratio + "_60";
				} else if(width > 60 && width <= 120){
					thumbType = "_" + ratio + "_120";
				} else if(width > 120 && width <= 144){
					thumbType = "_" + ratio + "_144";
				} else if(width > 144 && width <= 240){
					thumbType = "_" + ratio + "_240";
				} else if(width > 240 && width <= 480){
					thumbType = "_" + ratio + "_480";
				} else if(width > 480){
					thumbType = "_" + ratio + "_640";
				}

				var altSrc = "http://image.melon.co.kr/resource/image/web/default/noMovie" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultPlaylistImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 38){
					thumbType = "_38";
				} else if(width > 38 && width <= 52){
					thumbType = "_52";
				} else if(width > 52 && width <= 70){
					thumbType = "_70";
				} else if(width > 70 && width <= 114){
					thumbType = "_114";
				} else if(width > 114 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200){
					thumbType = "_500";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultMemberImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_130";
				if(width > 0 && width <= 40){
					thumbType = "_40";
				} else if(width > 40 && width <= 54){
					thumbType = "_54";
				} else if(width > 54 && width <= 72){
					thumbType = "_72";
				} else if(width > 72 && width <= 96){
					thumbType = "_96";
				} else if(width > 96 && width <= 112){
					thumbType = "_112";
				} else if(width > 112){
					thumbType = "_130";
				}

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noUser" + thumbType + ".jpg";

				obj.src = altSrc;
			},
			defaultPhotoImg : function(obj, width){
				if(width == null || width == '') width = $(obj).width();

				var thumbType = "_500";
				if(width > 0 && width <= 200){
					thumbType = "_200";
				} else if(width > 200) {
					thumbType = "_500";
				}
/* 				if(width > 0 && width <= 60){
					thumbType = "_60";
				} else if(width > 60 && width <= 120){
					thumbType = "_120";
				} else if(width > 120 && width <= 200){
					thumbType = "_200";
				} else if(width > 200 && width <= 300){
					thumbType = "_300";
				} else if(width > 300 && width <= 500){
					thumbType = "_500";
				} else if(width > 500){
					thumbType = "_700";
				} */

				altSrc = "http://image.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";

				obj.src = altSrc;
			}
		}
		,WEBELLIPSIS = {
			ellipsis : function(ellipsisName,moreClassName,eWidth){
		        //아티스트 더보기
		        var arObj = $('.' + ellipsisName);
		        for(var i = 0; i < arObj.length; i++){
		            if (arObj.eq(i).width() > eWidth ){
		                arObj.eq(i).parent().parent().parent().find('.' + moreClassName).show();
		            }
		        }
			}
		}
	})();
	</script>
</head>

<body>
<div id="wrap">
	<div id="skip_nav">skip navigation
		<ul>
			<li><a href="#gnb_menu">메뉴</a></li>
			<li><a href="#id_box">마이영역</a></li>
			<li><a href="#conts_section">본문</a></li>
			<li><a href="#footer">하단 정보</a></li>
		</ul>
	</div>

	<!--  header -->
	
	<div id="header" class="gnb2_expn gnr">
		<div id="header_wrap" class="my_fold">  <!-- 1024이상 마이영역 접었을때 클래스 my_fold 추가 -->
			<div id="gnb" class="clfix">
				<!-- 상단 빠른 메뉴 -->
				<div id="util_menu">
					<p class="none">상단 빠른 메뉴</p>
					<div class="top_left">
						<ul class="clfix">
							<li class="first_child"><a href="http://www.melon.com/customer/serviceintro/index.htm" title="멜론 플레이어 - 페이지 이동" class="menu01">멜론 플레이어</a></li>
							<li><a href="http://www.melon.com/customer/serviceintro/multi_mobile_smart.htm" title="멜론모바일 - 페이지 이동" class="menu02">멜론모바일</a></li>
							<!-- <li><a href="http://www.melon.com/artistplus/aztalk/index.htm" title="아지톡 - 페이지 이동" class="menu03">아지톡</a></li> -->
							<!-- 140613_추가 -->
							<li><a href="http://www.melon.com/intro/index.htm" title="새로워진 멜론" class="menu04" target="_blank">새로워진 멜론</a></li>
							<!-- //140613_추가 -->
							<!-- 141023 추가 lyr-->
							<li class="mma"><a href="http://awards.melon.com" title="2014 멜론뮤직어워드" class="menu05" target="_blank"><span class="icon"></span>2014 멜론뮤직어워드</a></li>
							<!-- //141023 추가 lyr-->
						</ul>
					</div>
					<!-- 140603_수정 -->
					<div class="top_right">
						<ul class="clfix">
							<li class="first_child"><a href="javascript:MELON.WEBSVC.POC.menu.cm.goPamphlet();" title="상품구매" class="menu01">상품구매</a></li>
							<li><a href="javascript:MELON.WEBSVC.POC.menu.goMyPageAddCash();" title="멜론캐쉬충전" class="menu02">멜론캐쉬충전</a></li>
							<li><a href="http://www.melon.com/event/index.htm" title="이벤트" class="menu03">이벤트</a></li>
							<li class="last_child"><a href="http://faqs2.melon.com/customer/index.htm" title="고객센터" class="menu04">고객센터</a></li>
						</ul>
					</div>
					<!-- //140603_수정 -->
				</div>
				<!-- //상단 빠른 메뉴 -->
				<h1><a href="http://www.melon.com/index.htm" title="MelOn 로고 - 홈으로 이동"><img height="75" width="87" src="http://image.melon.co.kr/resource/image/web/common/logo_melon.png" alt="MelOn 로고 이미지"/></a></h1>
				<!-- 통합검색 영역 -->
				<fieldset>
					<legend>통합검색영역</legend>
					<input type="text" title="검색 입력 편집창" placeholder="" name="" id="top_search" style="width:249px" onkeypress="if(event.keyCode == 13){goSearch();}"/><input type="hidden" name="keywordLink" id="keywordLink" value="" />
					<button type="button" id="top_search_autocomplete_toggle" class="btn_icon btn_auto close" title="자동검색 펼침"><span class="odd_span">자동검색 펼침</span></button> <!-- open/close 클래스 사용 -->
					<button type="button" class="btn_icon search_m" title="검색"><span class="odd_span">검색</span></button>
					<div class="auto_complete" id="top_search_autocomplete"><!-- 자동완성 레이어 --></div>
					<div class="auto_complete" id="top_search_autocomplete_template" style="display: none;"> <!-- 자동완성 레이어 템플릿 -->
						<!-- 텍스트 결과 -->
						<ul class="text_result">
							<li><a href="#" class="autocomplete-label"></a></li>
						</ul>
						<!-- 섬네일 결과 -->
						<ul class="thumb_result">
							<li class="cate"></li>
							<li class="class02">
								<a href="#">
									<span class="thumb_40">
										<span class="thumb_frame"></span>
										<img class="autocomplete-img" width="40" height="40" alt="">
									</span>
									<div class="info">
										<span class="autocomplete-label"></span><br/>
										<span><span class="f11 autocomplete-info"></span></span>
									</div>
								</a>
							</li>
						</ul>
						<!-- 검색어가 없을 때 -->
						<ul class="text_result">
							<li class="result_none">
								<span>해당글자로 시작하는 단어가 없습니다.</span>
							</li>
						</ul>
					</div>
				</fieldset>
				<form style="display: none" id="searchFrm" method="get" action="">
					<input type="hidden" name="q"/>
					<input type="hidden" name="section"/>
				</form>
				<!-- //통합검색 영역 -->

				<!-- 실시간 검색어 -->
				<div class="realtime_soar_keyword">
					<!-- 140519_수정 -->
					<a href="http://www.melon.com/search/trend/index.htm" class="title">급상승 키워드</a>
					<!-- //140519_수정 -->
					<div class="keyword_overlay">
						<ol style="overflow:hidden; height:20px;">
							<!-- 롤링 영역
							<li>
								<div style="top:;">
									<strong class="order bg2 on"><span class="none">1 위</span></strong>
									<a href="#" class="ellipsis" title="something">something</a>
									<span class="wrap_rank">
										<span class="icon_up">순위상승수</span><span>139</span>
										<!- <span class="icon_rank_new">새진입</span>
									</span>
								</div>
							</li>
							//롤링 영역 -->
						</ol>
						<!-- 140423_추가 -->
						<a href="http://www.melon.com/search/trend/index.htm" class="keyword_more" title="실시간 순위"><span>더보기 <span></span></span></a>
						<!-- //140423_추가 -->
					</div>
					<!-- 140423_삭제 -->
					<!-- <a href="#" class="d_btn_ctrl pause" title="이벤트 일시정지"><span><span class="none">일시정지</span></span></a> -->
					<!-- //140423_삭제 -->
				</div>
				<!-- //실시간 검색어 -->

				<!-- 1024 이상일때 노출 배너 영역 -->
				<div class="cmn_banner"></div>

                <script type="text/javascript">
				MelonPersonal.printLayout();
				</script>

			</div>
			<div id="gnb_menu">
				<ul>
					<li class="nth1 "> <!-- 2뎁스 레이어메뉴 노출 시 lay 추가 -->
						<a href="http://www.melon.com/chart/index.htm" class="cur_menu"><span class="cur_status none">현재 선택된 메뉴-</span><span class="menu_bg menu01">멜론차트</span></a>
						<div class="lay_menu">
							<ul>
								<li class="first_child"><a href="http://www.melon.com/chart/index.htm"><span class="menu_chart m1">멜론 TOP 100</span></a></li>
								<li class=""><a href="http://www.melon.com/chart/award/index.htm"><span class="menu_chart m2">주간 어워드</span></a></li>
								<li class=""><a href="http://www.melon.com/chart/vdo/index.htm"><span class="menu_chart m3">트렌드 차트</span></a></li>
								<li class=""><a href="http://www.melon.com/chart/genre/index.htm"><span class="menu_chart m4">장르 스타일 차트</span></a></li>
								<li class=""><a href="http://www.melon.com/chart/age/index.htm"><span class="menu_chart m5">시대별 차트</span></a></li>
							</ul>
							<div class="chart_finder">
								<button type="button" class="btn_chart_f" onclick="location.href='http://www.melon.com/chart/search/index.htm'"><span class="odd_span">차트 파인더</span></button>
							</div>
						</div>
					</li>
					<li class="nth2"> <!-- 2뎁스 띠메뉴 노출 시 해당 li에 클래스 on 추가 -->
						<a href="http://www.melon.com/new/index.htm" class="cur_menu"><span class="cur_status none">현재 선택된 메뉴-</span><span class="menu_bg menu02 ">최신음악</span></a>
						<div class="lay_menu">
							<ul>
								<li class="first_child"><a href="http://www.melon.com/new/index.htm"><span class="menu_new m1">최신곡</span></a></li>
								<li class=""><a href="http://www.melon.com/new/album/index.htm"><span class="menu_new m2">최신앨범</span></a></li>
								<li class=""><a href="http://www.melon.com/new/mv/index.htm"><span class="menu_new m3">최신 뮤직비디오</span></a></li>
								<li class=""><a href="http://www.melon.com/new/comingsoon/index.htm"><span class="menu_new m4">커밍순</span></a></li>
							</ul>
						</div>
					</li>
						<li class="nth3 on">
						<a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP0100" class="cur_menu"><span class="cur_status none">현재 선택된 메뉴-</span><span class="menu_bg menu03">장르음악</span></a>
						<div class="lay_menu">
							<ul>
								<li class="first_child on"><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP0100"><span class="menu_gnr m1">가요</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP0200"><span class="menu_gnr m2">팝</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP0300"><span class="menu_gnr m3">OST</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP1400"><span class="menu_gnr m4">록/메탈</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP1500"><span class="menu_gnr m5">일렉트로니카/클럽뮤직</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP1600"><span class="menu_gnr m6">R&amp;B/Soul</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP1700"><span class="menu_gnr m7">랩/힙합</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP1800"><span class="menu_gnr m8">인디음악</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP1900"><span class="menu_gnr m9">트로트</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP0400"><span class="menu_gnr m10">일본음악</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP0500"><span class="menu_gnr m11">클래식</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP0900"><span class="menu_gnr m12">재즈</span></a></li>
								<li class=""><a href="javascript:;" title="더보기 - 레이어 열기"><span class="menu_gnr m13">더보기</span></a></li>
							</ul>
							<ul class="gnr_more">
								<li class="first_child"><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP0800"><span class="menu_gnr2 m1">뉴에이지</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP0700"><span class="menu_gnr2 m2">어린이</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP2000"><span class="menu_gnr2 m3">태교</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP0600"><span class="menu_gnr2 m4">CCM</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP1100"><span class="menu_gnr2 m5">종교음악</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP1200"><span class="menu_gnr2 m6">국악</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP1300"><span class="menu_gnr2 m7">중국음악</span></a></li>
								<li class=""><a href="http://www.melon.com/genre/song_list.htm?classicMenuId=DP1000"><span class="menu_gnr2 m8">월드뮤직</span></a></li>
							</ul>
						</div>
					</li>
					<li class="nth4">
						<a href="http://www.melon.com/dj/today/djtoday_list.htm" class="cur_menu"><span class="cur_status none">현재 선택된 메뉴-</span><span class="menu_bg menu04">멜론DJ</span></a>
						<div class="lay_menu">
							<ul>
								<li class="first_child"><a href="http://www.melon.com/dj/today/djtoday_list.htm"><span class="menu_dj m1">오늘은 뭘 듣지</span></a></li>
								<li class=""><a href="http://www.melon.com/dj/themegenre/djthemegenre_list.htm"><span class="menu_dj m2">테마/장르</span></a></li>
								<li class=""><a href="http://www.melon.com/dj/magazine/djmagazine_list.htm"><span class="menu_dj m3">DJ 매거진</span></a></li>
								<li class=""><a href="http://www.melon.com/dj/honor/djhonorweekplaylist_list.htm"><span class="menu_dj m4">명예의 전당</span></a></li>
								<li class=""><a href="http://www.melon.com/dj/chart/djchart_list.htm"><span class="menu_dj m5">DJ플레이리스트 차트</span></a></li>
							</ul>
						</div>
					</li>
					<li class="nth5">
						<a href="http://www.melon.com/tv/index.htm" class="cur_menu"><span class="cur_status none">현재 선택된 메뉴-</span><span class="menu_bg menu05">멜론TV</span></a>
						<div class="lay_menu">
							<ul>
								<li class="first_child"><a href="http://www.melon.com/tv/index.htm"><span class="menu_tv m1">오늘은 뭘 볼까</span></a></li>
								<li class=""><a href="http://www.melon.com/tv/mv/index.htm"><span class="menu_tv m2">뮤직비디오</span></a></li>
								<li class=""><a href="http://www.melon.com/tv/menu/index.htm?menuSeq=1"><span class="menu_tv m3">멜론 오리지널</span></a></li>
								<li class=""><a href="http://www.melon.com/tv/menu/index.htm?menuSeq=4"><span class="menu_tv m4">아티스트 업데이트</span></a></li>
								<li class=""><a href="http://www.melon.com/tv/menu/index.htm?menuSeq=3"><span class="menu_tv m5">방송</span></a></li>
							</ul>
						</div>
					</li>
					<li class="nth6">
						<a href="http://www.melon.com/artistplus/todayupdate/index.htm" class="cur_menu"><span class="cur_status none">현재 선택된 메뉴-</span><span class="menu_bg menu06">아티스트 플러스</span></a>
						<div class="lay_menu">
							<ul>
								<li class="first_child"><a href="http://www.melon.com/artistplus/todayupdate/index.htm"><span class="menu_arti m1">투데이</span></a></li>
								<li class=""><a href="http://www.melon.com/artistplus/artistchart/index.htm"><span class="menu_arti m2">아티스트 랭킹</span></a></li>
								<li class=""><a href="http://www.melon.com/artistplus/vote/index.htm"><span class="menu_arti m3">인기가요 투표</span></a></li>
<!--  								<li class=""><a href="http://www.melon.com/artistplus/aztalk/index.htm"><span class="menu_arti m3">아지톡</span></a></li> -->
							</ul>
                            <div class="artist_fan">
                                <button type="button" class="btn_fan" onclick="MELON.WEBSVC.POC.menu.goMyMusicFanSignArtist();"><span class="odd_span">팬맺은 아티스트</span></button>
                            </div>
                            <div class="artist_finder">
                                <button type="button" class="btn_artist_f" onclick="location.href='http://www.melon.com/artistplus/finder/index.htm'"><span class="odd_span">아티스트 파인더</span></button>
                            </div>
						</div>
					</li>
					<li class="nth7">
						<a href="http://www.melon.com/musicstory/today/index.htm" class="cur_menu"><span class="cur_status none">현재 선택된 메뉴-</span><span class="menu_bg menu07">뮤직스토리</span></a>
						<div class="lay_menu">
							<ul>
								<li class="first_child"><a href="http://www.melon.com/musicstory/today/index.htm"><span class="menu_ms m1">뮤직 투데이</span></a></li>
								<li class=""><a href="http://www.melon.com/musicstory/insidepeople/index.htm"><span class="menu_ms m2">인사이드 피플</span></a></li>
								<li class=""><a href="http://www.melon.com/musicstory/trendreport/index.htm"><span class="menu_ms m3">트렌드 리포트</span></a></li>
								<li class=""><a href="http://www.melon.com/musicstory/storymaker/index.htm"><span class="menu_ms m4">스토리 메이커</span></a></li>
								<li class=""><a href="http://www.melon.com/musicstory/entnews/index.htm"><span class="menu_ms m5">연예뉴스</span></a></li>
							</ul>
						</div>
					</li>
					<li class="nth8 last_child">
						<a href="#" class="cur_menu"><span class="cur_status none">현재 선택된 메뉴-</span><span class="menu_bg menu08">더보기</span></a>
						<div class="more_wrap" style="display:none"><!-- more_lay일때 display:block -->
							<ul>
								<li class="first_child"><a href="http://www.melon.com/smartradio/index.htm"><span class="menu_more m1">스마트라디오</span></a></li>
								<li class=""><a href="http://www.melon.com/flac/index.htm"><span class="menu_more m2">원음전용관</span></a></li>
								<li class=""><a href="http://www.melon.com/edu/index.htm"><span class="menu_more m3">어학</span></a></li>
								<!-- <li class=""><a href="http://www.melon.com/event/index.htm"><span class="menu_more m4">이벤트</span></a></li> -->
								<li class=""><a href="http://www.melon.com/customer/announce/index.htm"><span class="menu_more m5">공지사항</span></a></li>
							</ul>
						</div>
					</li>
				</ul>
				<ul class="sub_gnb">
					<li class="">
						<a href="javascript:MELON.WEBSVC.POC.menu.goMyMusicMain();" class="cur_menu"><span class="cur_status none">현재 선택된 메뉴-</span><span class="menu_bg menu09">마이뮤직</span></a>
					</li>
					<li class="mymusic">
						<a href="javascript:MELON.WEBSVC.POC.menu.goFeed();" class="cur_menu"><span class="cur_status none">현재 선택된 메뉴-</span><span class="menu_bg menu10">소식함</span><span class="msg_box" style="display: none;"><span class="num">99+</span><span class="none">개</span></span></a>
					</li>
				</ul>
			</div>
			<!-- location 기획 요청으로 제거 2014-04-01 -->

			<!-- //location -->
		</div>
	</div>
	<!-- //header -->

	<div id="cont_wrap" class="clfix">
		<div id="conts_section" class="my_fold">
			<!-- contents -->
			
<!-- contents -->
<div id="conts">

<h2 class="f_tit mb20">가요</h2>
<!-- Banner INFO -->
<div class="line_ban d_layer" style="display: none;">
	
	<a href="http://awards.melon.com/award/main/timeline.htm?web_detail_page" title="2014 멜론뮤직어워드 TOP10 투표 - 페이지 이동"><img height="48" width="1008" src="http://image.melon.co.kr/resource/image/cds/promotion/PROMO20141022201157.jpg" alt="2014 멜론뮤직어워드 TOP10 투표"/></a>
	<button type="button" title="2014 멜론뮤직어워드 TOP10 투표 배너 닫기" class="close d_fadeout" data-cookie-id="linebanner01" data-close-action="hide"><span>배너 닫기</span></button>
	
</div>
<div class="gnr_list">
	<ul>
		
		<li class="on" ><a href="javascript:melon.link.goGenreSong('DP0100', 'DP0101');" title="종합 - 페이지 이동">종합</a></li>
		
		<li  ><a href="javascript:melon.link.goGenreSong('DP0100', 'DP0102');" title="발라드 - 페이지 이동">발라드</a></li>
		
		<li  ><a href="javascript:melon.link.goGenreSong('DP0100', 'DP0103');" title="댄스 - 페이지 이동">댄스</a></li>
		
		<li  ><a href="javascript:melon.link.goGenreSong('DP0100', 'DP0104');" title="랩/힙합 - 페이지 이동">랩/힙합</a></li>
		
		<li  ><a href="javascript:melon.link.goGenreSong('DP0100', 'DP0105');" title="R&B/Soul - 페이지 이동">R&B/Soul</a></li>
		
		<li  ><a href="javascript:melon.link.goGenreSong('DP0100', 'DP0106');" title="록 - 페이지 이동">록</a></li>
		
		<li  ><a href="javascript:melon.link.goGenreSong('DP0100', 'DP0107');" title="일렉트로니카 - 페이지 이동">일렉트로니카</a></li>
		
		<li  ><a href="javascript:melon.link.goGenreSong('DP0100', 'DP0108');" title="트로트 - 페이지 이동">트로트</a></li>
		
		<li  ><a href="javascript:melon.link.goGenreSong('DP0100', 'DP0109');" title="포크 - 페이지 이동">포크</a></li>
		
		<li  ><a href="javascript:melon.link.goGenreSong('DP0100', 'DP0110');" title="인디음악 - 페이지 이동">인디음악</a></li>
		
	</ul>
</div>























<h3 class="s_title01 mt27">추천 앨범</h3>
<div class="recm_album">
	
	

	<!-- 앨범4 -->
	<ul class="list_album12 d_album_list">
		
		<li class="first_child album12_li">
			<div class="wrap_album05">
				<a href="javascript:melon.link.goAlbumDetail('2287913');" title="울면서 달리기 - 페이지 이동" class="thumb">
					<span class="thumb_frame"></span><!-- 이미지 상단 반투명 Border -->
					<img onerror="WEBPOCIMG.defaultAlbumImg(this);" height="170" width="170" src="http://image.melon.co.kr/cm/album/images/022/87/913/2287913_2.jpg" alt=""/>
				</a>
				<a href="javascript:melon.play.playAlbum('25020301','2287913');" class="bg_play big">재생</a>
				<dl>
					<dt>
						<strong class="none">앨범명</strong>
						<span class="ellipsis">
						<a href="javascript:melon.link.goAlbumDetail('2287913');" title="울면서 달리기">울면서 달리기</a>
						</span>
					</dt>
					<dd class="atistname">
						<strong class="none">아티스트명</strong>
						<div class="ellipsis">
							<a href="javascript:melon.link.goArtistDetail('108794');" title="V.O.S - 페이지 이동" class="play_artist"><span>V.O.S</span></a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('108794');" title="V.O.S - 페이지 이동" class="play_artist"><span>V.O.S</span></a></span>
						</div>
						
					</dd>
					<dd class="cnt_click">
						<a href="#" title="좋아요" class="btn_like d_btn" data-album-no="2287913" data-album-menuId="25020301"><!-- class="on" 추가시 활성 -->
							<span class="icon">좋아요</span>
							<strong class="none">총건수</strong>0
						</a>
					</dd>
				</dl>
			</div>
		</li>
		
		<li class="album12_li">
			<div class="wrap_album05">
				<a href="javascript:melon.link.goAlbumDetail('2287857');" title="SDW (Smoke, Drink & Work) - 페이지 이동" class="thumb">
					<span class="thumb_frame"></span><!-- 이미지 상단 반투명 Border -->
					<img onerror="WEBPOCIMG.defaultAlbumImg(this);" height="170" width="170" src="http://image.melon.co.kr/cm/album/images/022/87/857/2287857.jpg" alt=""/>
				</a>
				<a href="javascript:melon.play.playAlbum('25020301','2287857');" class="bg_play big">재생</a>
				<dl>
					<dt>
						<strong class="none">앨범명</strong>
						<span class="ellipsis">
						<a href="javascript:melon.link.goAlbumDetail('2287857');" title="SDW (Smoke, Drink & Work)">SDW (Smoke, Drink & Work)</a>
						</span>
					</dt>
					<dd class="atistname">
						<strong class="none">아티스트명</strong>
						<div class="ellipsis">
							<a href="javascript:melon.link.goArtistDetail('786904');" title="DOWBY - 페이지 이동" class="play_artist"><span>DOWBY</span></a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('786904');" title="DOWBY - 페이지 이동" class="play_artist"><span>DOWBY</span></a></span>
						</div>
						
					</dd>
					<dd class="cnt_click">
						<a href="#" title="좋아요" class="btn_like d_btn" data-album-no="2287857" data-album-menuId="25020301"><!-- class="on" 추가시 활성 -->
							<span class="icon">좋아요</span>
							<strong class="none">총건수</strong>0
						</a>
					</dd>
				</dl>
			</div>
		</li>
		
		<li class="album12_li">
			<div class="wrap_album05">
				<a href="javascript:melon.link.goAlbumDetail('2287927');" title="연애의 시작 - 페이지 이동" class="thumb">
					<span class="thumb_frame"></span><!-- 이미지 상단 반투명 Border -->
					<img onerror="WEBPOCIMG.defaultAlbumImg(this);" height="170" width="170" src="http://image.melon.co.kr/cm/album/images/022/87/927/2287927.jpg" alt=""/>
				</a>
				<a href="javascript:melon.play.playAlbum('25020301','2287927');" class="bg_play big">재생</a>
				<dl>
					<dt>
						<strong class="none">앨범명</strong>
						<span class="ellipsis">
						<a href="javascript:melon.link.goAlbumDetail('2287927');" title="연애의 시작">연애의 시작</a>
						</span>
					</dt>
					<dd class="atistname">
						<strong class="none">아티스트명</strong>
						<div class="ellipsis">
							<a href="javascript:melon.link.goArtistDetail('170042');" title="소울스타 - 페이지 이동" class="play_artist"><span>소울스타</span></a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('170042');" title="소울스타 - 페이지 이동" class="play_artist"><span>소울스타</span></a></span>
						</div>
						
					</dd>
					<dd class="cnt_click">
						<a href="#" title="좋아요" class="btn_like d_btn" data-album-no="2287927" data-album-menuId="25020301"><!-- class="on" 추가시 활성 -->
							<span class="icon">좋아요</span>
							<strong class="none">총건수</strong>0
						</a>
					</dd>
				</dl>
			</div>
		</li>
		
		<li class="album12_li">
			<div class="wrap_album05">
				<a href="javascript:melon.link.goAlbumDetail('2288023');" title="Take A Shot - 페이지 이동" class="thumb">
					<span class="thumb_frame"></span><!-- 이미지 상단 반투명 Border -->
					<img onerror="WEBPOCIMG.defaultAlbumImg(this);" height="170" width="170" src="http://image.melon.co.kr/cm/album/images/022/88/023/2288023.jpg" alt=""/>
				</a>
				<a href="javascript:melon.play.playAlbum('25020301','2288023');" class="bg_play big">재생</a>
				<dl>
					<dt>
						<strong class="none">앨범명</strong>
						<span class="ellipsis">
						<a href="javascript:melon.link.goAlbumDetail('2288023');" title="Take A Shot">Take A Shot</a>
						</span>
					</dt>
					<dd class="atistname">
						<strong class="none">아티스트명</strong>
						<div class="ellipsis">
							<a href="javascript:melon.link.goArtistDetail('787976');" title="HOTSHOT - 페이지 이동" class="play_artist"><span>HOTSHOT</span></a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('787976');" title="HOTSHOT - 페이지 이동" class="play_artist"><span>HOTSHOT</span></a></span>
						</div>
						
					</dd>
					<dd class="cnt_click">
						<a href="#" title="좋아요" class="btn_like d_btn" data-album-no="2288023" data-album-menuId="25020301"><!-- class="on" 추가시 활성 -->
							<span class="icon">좋아요</span>
							<strong class="none">총건수</strong>0
						</a>
					</dd>
				</dl>
			</div>
		</li>
		
		<li class="album12_li">
			<div class="wrap_album05">
				<a href="javascript:melon.link.goAlbumDetail('2288017');" title="쉬어갈래 - 페이지 이동" class="thumb">
					<span class="thumb_frame"></span><!-- 이미지 상단 반투명 Border -->
					<img onerror="WEBPOCIMG.defaultAlbumImg(this);" height="170" width="170" src="http://image.melon.co.kr/cm/album/images/022/88/017/2288017.jpg" alt=""/>
				</a>
				<a href="javascript:melon.play.playAlbum('25020301','2288017');" class="bg_play big">재생</a>
				<dl>
					<dt>
						<strong class="none">앨범명</strong>
						<span class="ellipsis">
						<a href="javascript:melon.link.goAlbumDetail('2288017');" title="쉬어갈래">쉬어갈래</a>
						</span>
					</dt>
					<dd class="atistname">
						<strong class="none">아티스트명</strong>
						<div class="ellipsis">
							<a href="javascript:melon.link.goArtistDetail('280166');" title="뉴올 - 페이지 이동" class="play_artist"><span>뉴올</span></a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('280166');" title="뉴올 - 페이지 이동" class="play_artist"><span>뉴올</span></a></span>
						</div>
						
					</dd>
					<dd class="cnt_click">
						<a href="#" title="좋아요" class="btn_like d_btn" data-album-no="2288017" data-album-menuId="25020301"><!-- class="on" 추가시 활성 -->
							<span class="icon">좋아요</span>
							<strong class="none">총건수</strong>0
						</a>
					</dd>
				</dl>
			</div>
		</li>
		
	</ul>
	<!-- //앨범4 -->
	<script type="text/javascript">
	$(function(){
		/* 좋아요 셋팅부 */
		var LIKE_SET = {
			likeCnt  : "<span class=\"icon\">{TXT}</span>\n<strong class=\"none\">총건수</strong>{CNT}",
			likeObj  : $('ul.d_album_list a.btn_like'),
			likeAttr : 'data-album-no',
			likeUrl  : '/commonlike/getAlbumLike.json'
		};

		/* 좋아요 공통부 */
		var contsIdList = LIKE_SET['likeObj'].map(function() { return $(this).attr(LIKE_SET['likeAttr']); }).get().join(',');
		var tmpl, title;
		if ( contsIdList === '' || contsIdList === null  ) { return; }
		$.get(LIKE_SET['likeUrl'], { contsIds : contsIdList }, function(data) {
			var robj;
			$.each(data.contsLike, function(i, v) {
				var SUMMCNT = MELON.WEBSVC.number.addComma(v.SUMMCNT);
				robj  = LIKE_SET['likeObj'].eq(i);
				tmpl  = LIKE_SET['likeCnt'];
				title = robj.attr('title').split(' 좋아요');
				robj[v.LIKEYN == 'Y' ? 'addClass' : 'removeClass']('on').attr('title', title[0] + (v.LIKEYN == 'Y' ? ' 좋아요 취소' : ' 좋아요'));
				robj.html(
					tmpl.replace(/\{TXT\}/g, (v.LIKEYN == 'Y' ? '좋아요 취소' : '좋아요')).replace(/\{CNT\}/g, SUMMCNT)
				);
			});
		}).done(function(){
			//아티스트 더보기 실행
			WEBELLIPSIS.ellipsis("checkEllipsis","wrap_more",150);
		});
	});
	</script>
</div>

	<h3 class="s_title02 mt27">
	
	
	
	종합
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</h3>
	<div class="wrap_tab05 page_move">
		<ul class="tab_ul05">
			<li class="tab_li05 first_child on"><a href="javascript:;" title="최신 곡" class="link_tab05">최신 곡</a></li>
			
			<li class="tab_li05"><a href="javascript:melon.link.goGenreSongChart('DP0100');" title="가요 종합 TOP 100" class="link_tab05">TOP 100</a></li>
			
			<li class="tab_li05"><a href="javascript:melon.link.goGenreAlbum('DP0100', 'DP0101');" title="가요 종합 최신 앨범" class="link_tab05">최신 앨범</a></li>
		</ul>
	</div>

	<div class="data_sorting1 mb8">
<!-- 131018_추가 -->
		<ul class="list_sort">
			<li class="first_child on" ><a href="javascript:;" title="기본 순으로 정렬" id="ORDER_ISSUE_DATE" class="orderClass" >최신순</a></li> <!--a href="#" title="곡 리스트 기본순으로 정렬">기본</a-->
			<li class=""><a href="javascript:;" title="곡 리스트 인기순으로 정렬" id="LIKE_ORDER" class="orderClass">인기순</a></li>
		</ul>
	</div>

	<!-- 곡리스트 -->
	<div id="pageList" style="display:none;">
			
		
		

	<!-- 곡1 목록 -->
	<form id="frm" name="frm">
	<div class="tb_list d_song_list songTypeOne" style="width:1008px;">
		
		<div class="wrap_btn_tb top">
			<button type="button" title="곡 목록 전체 선택" class="btn_base short check_all d_checkall"><span class="odd_span"><span class="even_span">전체선택</span></span></button>
			<button type="button" title="선택된 곡 재생 - 새 창" class="btn_base short play d_listen" onClick="melon.play.playFormSong('25020301','frm');"><span class="odd_span"><span class="even_span">듣기</span></span></button>
			<button type="button" title="선택된 곡 다운로드 - 새 창" class="btn_base short download d_download" onClick="melon.buy.goBuyProduct('frm','','3C0001','input_check','0','');"><span class="odd_span"><span class="even_span">다운</span></span></button>
			<button type="button" title="선택된 곡 담기 - 새 창" class="btn_base short scrap d_scrap" onClick="melon.play.addFormPlayList('frm');"><span class="odd_span"><span class="even_span">담기</span></span></button>
			<button type="button" title="선택된 곡 선물하기 - 새 창" class="btn_base short gift d_gift" onClick="melon.buy.goPresent('song', 'frm', '25020301');"><span class="odd_span"><span class="even_span">선물</span></span></button>
		</div>
		<table border="1" style="width:100%">
			<caption>곡 목록입니다. 목록에 있는 곡을 선택하여 재생, 다운로드, 플레이리스트 담기, 선물하기가 가능합니다.</caption>
			<colgroup><col style="width:29px" /><col style="width:48px" /><col/><col style="width:152px" /><col style="width:146px" /><col style="width:80px" /><col style="width:43px" /><col style="width:27px" /><col style="width:45px" /></colgroup>
			<thead>
				<tr>
					<th scope="col"><div class="wrap pd_none left">
						<input type="checkbox" title="곡 목록 전체 선택" class="input_check d_checkall" />
					</div></th>
					<th scope="col"><div class="wrap">NO</div></th>
					<th scope="col"><div class="wrap">곡명</div></th>
					<th scope="col" class="t_left"><div class="wrap">아티스트</div></th>
					<th scope="col" class="t_left"><div class="wrap">앨범</div></th>
					<th scope="col" class="t_left"><div class="wrap right_none">좋아요</div></th>
					<th scope="col"><div class="wrap pd_none left">뮤비</div></th>
					<th scope="col"><div class="wrap pd_none">다운</div></th>
					<th scope="col"><div class="wrap pd_none right">링/벨</div></th>
				</tr>
			</thead>
			<tbody>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="쉬어갈래 (Feat. 지조, Kuan) 곡 선택" class="input_check" name="input_check" value="5436127" />
					</div></td>
					<td class="no"><div class="wrap">1</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="쉬어갈래 (Feat. 지조, Kuan) 재생 - 새 창" onClick="melon.play.playSong('25020301',5436127);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="쉬어갈래 (Feat. 지조, Kuan) 곡담기 - 새 창" onClick="melon.play.addPlayList('5436127');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5436127');" title="쉬어갈래 (Feat. 지조, Kuan) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">쉬어갈래 (Feat. 지조, Kuan)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5436127);" class="fc_gray" title="쉬어갈래 (Feat. 지조, Kuan) 재생 - 새 창">쉬어갈래 (Feat. 지조, Kuan)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('280166');" title="뉴올 - 페이지 이동" class="fc_mgray">뉴올</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('280166');" title="뉴올 - 페이지 이동" class="fc_mgray">뉴올</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2288017');" title="쉬어갈래 - 페이지 이동" class="fc_mgray">쉬어갈래</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="쉬어갈래 (Feat. 지조, Kuan)" data-song-no="5436127" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>144</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="쉬어갈래 (Feat. 지조, Kuan) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5436127','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="쉬어갈래 (Feat. 지조, Kuan) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5436127', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="쉬어갈래 (Feat. 지조, Kuan) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5436127')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="울면서 달리기 곡 선택" class="input_check" name="input_check" value="5434937" />
					</div></td>
					<td class="no"><div class="wrap">2</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="울면서 달리기 재생 - 새 창" onClick="melon.play.playSong('25020301',5434937);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="울면서 달리기 곡담기 - 새 창" onClick="melon.play.addPlayList('5434937');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5434937');" title="울면서 달리기 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">울면서 달리기</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5434937);" class="fc_gray" title="울면서 달리기 재생 - 새 창">울면서 달리기</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('108794');" title="V.O.S - 페이지 이동" class="fc_mgray">V.O.S</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('108794');" title="V.O.S - 페이지 이동" class="fc_mgray">V.O.S</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287913');" title="울면서 달리기 - 페이지 이동" class="fc_mgray">울면서 달리기</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="울면서 달리기" data-song-no="5434937" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>411</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="울면서 달리기 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5434937','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="울면서 달리기 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5434937', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="울면서 달리기 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5434937')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="오늘같은 날 (For The Night) 곡 선택" class="input_check" name="input_check" value="5431373" />
					</div></td>
					<td class="no"><div class="wrap">3</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="오늘같은 날 (For The Night) 재생 - 새 창" onClick="melon.play.playSong('25020301',5431373);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="오늘같은 날 (For The Night) 곡담기 - 새 창" onClick="melon.play.addPlayList('5431373');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5431373');" title="오늘같은 날 (For The Night) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">오늘같은 날 (For The Night)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5431373);" class="fc_gray" title="오늘같은 날 (For The Night) 재생 - 새 창">오늘같은 날 (For The Night)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('100093');" title="애즈원 - 페이지 이동" class="fc_mgray">애즈원</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('100093');" title="애즈원 - 페이지 이동" class="fc_mgray">애즈원</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287591');" title="오늘같은 날 (For The Night) - 페이지 이동" class="fc_mgray">오늘같은 날 (For The Night)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="오늘같은 날 (For The Night)" data-song-no="5431373" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>226</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="오늘같은 날 (For The Night) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5431373','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="오늘같은 날 (For The Night) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5431373', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="오늘같은 날 (For The Night) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5431373')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="연애의 시작 곡 선택" class="input_check" name="input_check" value="5435041" />
					</div></td>
					<td class="no"><div class="wrap">4</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="연애의 시작 재생 - 새 창" onClick="melon.play.playSong('25020301',5435041);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="연애의 시작 곡담기 - 새 창" onClick="melon.play.addPlayList('5435041');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5435041');" title="연애의 시작 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">연애의 시작</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5435041);" class="fc_gray" title="연애의 시작 재생 - 새 창">연애의 시작</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('170042');" title="소울스타 - 페이지 이동" class="fc_mgray">소울스타</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('170042');" title="소울스타 - 페이지 이동" class="fc_mgray">소울스타</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287927');" title="연애의 시작 - 페이지 이동" class="fc_mgray">연애의 시작</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="연애의 시작" data-song-no="5435041" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>284</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="연애의 시작 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5435041','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="연애의 시작 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5435041', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="연애의 시작 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5435041')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="Take A Shot 곡 선택" class="input_check" name="input_check" value="5436218" />
					</div></td>
					<td class="no"><div class="wrap">5</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="Take A Shot 재생 - 새 창" onClick="melon.play.playSong('25020301',5436218);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="Take A Shot 곡담기 - 새 창" onClick="melon.play.addPlayList('5436218');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5436218');" title="Take A Shot 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">Take A Shot</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5436218);" class="fc_gray" title="Take A Shot 재생 - 새 창">Take A Shot</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('787976');" title="HOTSHOT - 페이지 이동" class="fc_mgray">HOTSHOT</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('787976');" title="HOTSHOT - 페이지 이동" class="fc_mgray">HOTSHOT</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2288023');" title="Take A Shot - 페이지 이동" class="fc_mgray">Take A Shot</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="Take A Shot" data-song-no="5436218" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>92</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="Take A Shot 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5436218','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="Take A Shot 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5436218', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="Take A Shot 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5436218')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="그래도 사랑해 (Feat. 라엘) 곡 선택" class="input_check" name="input_check" value="5434987" />
					</div></td>
					<td class="no"><div class="wrap">6</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="그래도 사랑해 (Feat. 라엘) 재생 - 새 창" onClick="melon.play.playSong('25020301',5434987);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="그래도 사랑해 (Feat. 라엘) 곡담기 - 새 창" onClick="melon.play.addPlayList('5434987');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5434987');" title="그래도 사랑해 (Feat. 라엘) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">그래도 사랑해 (Feat. 라엘)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5434987);" class="fc_gray" title="그래도 사랑해 (Feat. 라엘) 재생 - 새 창">그래도 사랑해 (Feat. 라엘)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('160123');" title="원써겐 - 페이지 이동" class="fc_mgray">원써겐</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('160123');" title="원써겐 - 페이지 이동" class="fc_mgray">원써겐</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287918');" title="그래도 사랑해 - 페이지 이동" class="fc_mgray">그래도 사랑해</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="그래도 사랑해 (Feat. 라엘)" data-song-no="5434987" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>74</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="그래도 사랑해 (Feat. 라엘) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5434987','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="그래도 사랑해 (Feat. 라엘) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5434987', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="그래도 사랑해 (Feat. 라엘) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5434987')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="November Rain 곡 선택" class="input_check" name="input_check" value="5436000" />
					</div></td>
					<td class="no"><div class="wrap">7</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="November Rain 재생 - 새 창" onClick="melon.play.playSong('25020301',5436000);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="November Rain 곡담기 - 새 창" onClick="melon.play.addPlayList('5436000');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5436000');" title="November Rain 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">November Rain</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5436000);" class="fc_gray" title="November Rain 재생 - 새 창">November Rain</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('772253');" title="잔나비 - 페이지 이동" class="fc_mgray">잔나비</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('772253');" title="잔나비 - 페이지 이동" class="fc_mgray">잔나비</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2288004');" title="November Rain - 페이지 이동" class="fc_mgray">November Rain</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="November Rain" data-song-no="5436000" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>68</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="November Rain 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5436000','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="November Rain 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5436000', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="November Rain 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5436000')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="사랑 내사랑 곡 선택" class="input_check" name="input_check" value="5433812" />
					</div></td>
					<td class="no"><div class="wrap">8</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="사랑 내사랑 재생 - 새 창" onClick="melon.play.playSong('25020301',5433812);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="사랑 내사랑 곡담기 - 새 창" onClick="melon.play.addPlayList('5433812');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5433812');" title="사랑 내사랑 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">사랑 내사랑</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5433812);" class="fc_gray" title="사랑 내사랑 재생 - 새 창">사랑 내사랑</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('499462');" title="김그림 - 페이지 이동" class="fc_mgray">김그림</a>, <a href="javascript:melon.link.goArtistDetail('531823');" title="백청강 - 페이지 이동" class="fc_mgray">백청강</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('499462');" title="김그림 - 페이지 이동" class="fc_mgray">김그림</a>, <a href="javascript:melon.link.goArtistDetail('531823');" title="백청강 - 페이지 이동" class="fc_mgray">백청강</a></span>
						</div>
						
						<div class="wrap_atist" style="display:none;">
							<button type="button" title="아티스트 더보기 - 레이어 팝업" class="btn btn_more" data-control="dropdown"><span class="odd_span">아티스트명 더보기</span></button>
							<!-- [DP] 아티스트 더보기 레이어  -->
							<div class="l_popup small" style="display:none; width:168px;">
								<div class="l_cntt">
									<ul class="list_bullet">
										
										<li><a href="javascript:melon.link.goArtistDetail('499462');" title="김그림 페이지 이동">김그림</a></li>
										
										<li><a href="javascript:melon.link.goArtistDetail('531823');" title="백청강 페이지 이동">백청강</a></li>
										
									</ul>
								</div>
								<button type="button" class="btn_close"><span class="odd_span">닫기</span></button>
								<span class="shadow"></span>
								<span class="bullet_vertical"></span>
							</div>
							<!-- //[DP] 아티스트 더보기 레이어  -->
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287794');" title="사랑 내사랑 - 페이지 이동" class="fc_mgray">사랑 내사랑</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="사랑 내사랑" data-song-no="5433812" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>1392</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="사랑 내사랑 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5433812','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="사랑 내사랑 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5433812', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="사랑 내사랑 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5433812')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="약속했잖아요... 곡 선택" class="input_check" name="input_check" value="5434842" />
					</div></td>
					<td class="no"><div class="wrap">9</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="약속했잖아요... 재생 - 새 창" onClick="melon.play.playSong('25020301',5434842);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="약속했잖아요... 곡담기 - 새 창" onClick="melon.play.addPlayList('5434842');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5434842');" title="약속했잖아요... 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">약속했잖아요...</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5434842);" class="fc_gray" title="약속했잖아요... 재생 - 새 창">약속했잖아요...</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('261715');" title="소울 크라이 - 페이지 이동" class="fc_mgray">소울 크라이</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('261715');" title="소울 크라이 - 페이지 이동" class="fc_mgray">소울 크라이</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287899');" title="Love Is Over #1 - 페이지 이동" class="fc_mgray">Love Is Over #1</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="약속했잖아요..." data-song-no="5434842" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>41</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="약속했잖아요... 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5434842','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="약속했잖아요... 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5434842', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="약속했잖아요... 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5434842')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="My Ballad (Feat. 김예림) 곡 선택" class="input_check" name="input_check" value="5433825" />
					</div></td>
					<td class="no"><div class="wrap">10</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="My Ballad (Feat. 김예림) 재생 - 새 창" onClick="melon.play.playSong('25020301',5433825);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="My Ballad (Feat. 김예림) 곡담기 - 새 창" onClick="melon.play.addPlayList('5433825');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5433825');" title="My Ballad (Feat. 김예림) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">My Ballad (Feat. 김예림)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5433825);" class="fc_gray" title="My Ballad (Feat. 김예림) 재생 - 새 창">My Ballad (Feat. 김예림)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('236970');" title="스윙스 - 페이지 이동" class="fc_mgray">스윙스</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('236970');" title="스윙스 - 페이지 이동" class="fc_mgray">스윙스</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287796');" title="Vintage Swings - 페이지 이동" class="fc_mgray">Vintage Swings</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="My Ballad (Feat. 김예림)" data-song-no="5433825" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>1335</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="My Ballad (Feat. 김예림) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5433825','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="My Ballad (Feat. 김예림) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5433825', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="My Ballad (Feat. 김예림) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5433825')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="왜 (Feat. NY물고기) 곡 선택" class="input_check" name="input_check" value="5434495" />
					</div></td>
					<td class="no"><div class="wrap">11</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="왜 (Feat. NY물고기) 재생 - 새 창" onClick="melon.play.playSong('25020301',5434495);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="왜 (Feat. NY물고기) 곡담기 - 새 창" onClick="melon.play.addPlayList('5434495');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5434495');" title="왜 (Feat. NY물고기) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">왜 (Feat. NY물고기)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5434495);" class="fc_gray" title="왜 (Feat. NY물고기) 재생 - 새 창">왜 (Feat. NY물고기)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('728752');" title="아가싱즈 - 페이지 이동" class="fc_mgray">아가싱즈</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('728752');" title="아가싱즈 - 페이지 이동" class="fc_mgray">아가싱즈</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287862');" title="왜 - 페이지 이동" class="fc_mgray">왜</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="왜 (Feat. NY물고기)" data-song-no="5434495" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>12</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="왜 (Feat. NY물고기) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5434495','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="왜 (Feat. NY물고기) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5434495', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="왜 (Feat. NY물고기) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5434495')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="RAINSTORM BY RAINSTONE (Feat. 브라이언 맥나잇, 산이, 버벌진트) 곡 선택" class="input_check" name="input_check" value="5433791" />
					</div></td>
					<td class="no"><div class="wrap">12</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="RAINSTORM BY RAINSTONE (Feat. 브라이언 맥나잇, 산이, 버벌진트) 재생 - 새 창" onClick="melon.play.playSong('25020301',5433791);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="RAINSTORM BY RAINSTONE (Feat. 브라이언 맥나잇, 산이, 버벌진트) 곡담기 - 새 창" onClick="melon.play.addPlayList('5433791');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5433791');" title="RAINSTORM BY RAINSTONE (Feat. 브라이언 맥나잇, 산이, 버벌진트) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">RAINSTORM BY RAINSTONE (Feat. 브라이언 맥나잇, 산이, 버벌진트)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5433791);" class="fc_gray" title="RAINSTORM BY RAINSTONE (Feat. 브라이언 맥나잇, 산이, 버벌진트) 재생 - 새 창">RAINSTORM BY RAINSTONE (Feat. 브라이언 맥나잇, 산이, 버벌진트)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('609056');" title="RAINSTONE - 페이지 이동" class="fc_mgray">RAINSTONE</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('609056');" title="RAINSTONE - 페이지 이동" class="fc_mgray">RAINSTONE</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287790');" title="RAINSTORM BY RAINSTONE - 페이지 이동" class="fc_mgray">RAINSTORM BY RAINSTONE</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="RAINSTORM BY RAINSTONE (Feat. 브라이언 맥나잇, 산이, 버벌진트)" data-song-no="5433791" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>417</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="RAINSTORM BY RAINSTONE (Feat. 브라이언 맥나잇, 산이, 버벌진트) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5433791','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="RAINSTORM BY RAINSTONE (Feat. 브라이언 맥나잇, 산이, 버벌진트) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5433791', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="RAINSTORM BY RAINSTONE (Feat. 브라이언 맥나잇, 산이, 버벌진트) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5433791')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="다시 위로 곡 선택" class="input_check" name="input_check" value="5433344" />
					</div></td>
					<td class="no"><div class="wrap">13</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="다시 위로 재생 - 새 창" onClick="melon.play.playSong('25020301',5433344);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="다시 위로 곡담기 - 새 창" onClick="melon.play.addPlayList('5433344');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5433344');" title="다시 위로 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">다시 위로</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5433344);" class="fc_gray" title="다시 위로 재생 - 새 창">다시 위로</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('6308');" title="차은주 - 페이지 이동" class="fc_mgray">차은주</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('6308');" title="차은주 - 페이지 이동" class="fc_mgray">차은주</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287735');" title="다시 위로 - 페이지 이동" class="fc_mgray">다시 위로</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="다시 위로" data-song-no="5433344" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>68</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="다시 위로 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5433344','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="다시 위로 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5433344', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="다시 위로 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5433344')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="술이 너보다 낫더라 곡 선택" class="input_check" name="input_check" value="5431090" />
					</div></td>
					<td class="no"><div class="wrap">14</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="술이 너보다 낫더라 재생 - 새 창" onClick="melon.play.playSong('25020301',5431090);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="술이 너보다 낫더라 곡담기 - 새 창" onClick="melon.play.addPlayList('5431090');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5431090');" title="술이 너보다 낫더라 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">술이 너보다 낫더라</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5431090);" class="fc_gray" title="술이 너보다 낫더라 재생 - 새 창">술이 너보다 낫더라</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('495401');" title="포스트맨 - 페이지 이동" class="fc_mgray">포스트맨</a>, <a href="javascript:melon.link.goArtistDetail('773241');" title="6 to 8 - 페이지 이동" class="fc_mgray">6 to 8</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('495401');" title="포스트맨 - 페이지 이동" class="fc_mgray">포스트맨</a>, <a href="javascript:melon.link.goArtistDetail('773241');" title="6 to 8 - 페이지 이동" class="fc_mgray">6 to 8</a></span>
						</div>
						
						<div class="wrap_atist" style="display:none;">
							<button type="button" title="아티스트 더보기 - 레이어 팝업" class="btn btn_more" data-control="dropdown"><span class="odd_span">아티스트명 더보기</span></button>
							<!-- [DP] 아티스트 더보기 레이어  -->
							<div class="l_popup small" style="display:none; width:168px;">
								<div class="l_cntt">
									<ul class="list_bullet">
										
										<li><a href="javascript:melon.link.goArtistDetail('495401');" title="포스트맨 페이지 이동">포스트맨</a></li>
										
										<li><a href="javascript:melon.link.goArtistDetail('773241');" title="6 to 8 페이지 이동">6 to 8</a></li>
										
									</ul>
								</div>
								<button type="button" class="btn_close"><span class="odd_span">닫기</span></button>
								<span class="shadow"></span>
								<span class="bullet_vertical"></span>
							</div>
							<!-- //[DP] 아티스트 더보기 레이어  -->
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287562');" title="술이 너보다 낫더라 - 페이지 이동" class="fc_mgray">술이 너보다 낫더라</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="술이 너보다 낫더라" data-song-no="5431090" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>3369</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="술이 너보다 낫더라 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5431090','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="술이 너보다 낫더라 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5431090', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="술이 너보다 낫더라 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5431090')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="5분 고백송 곡 선택" class="input_check" name="input_check" value="5430341" />
					</div></td>
					<td class="no"><div class="wrap">15</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="5분 고백송 재생 - 새 창" onClick="melon.play.playSong('25020301',5430341);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="5분 고백송 곡담기 - 새 창" onClick="melon.play.addPlayList('5430341');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5430341');" title="5분 고백송 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">5분 고백송</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5430341);" class="fc_gray" title="5분 고백송 재생 - 새 창">5분 고백송</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('14801');" title="윤건 - 페이지 이동" class="fc_mgray">윤건</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('14801');" title="윤건 - 페이지 이동" class="fc_mgray">윤건</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287493');" title="Autumn Play - 페이지 이동" class="fc_mgray">Autumn Play</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="5분 고백송" data-song-no="5430341" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>1281</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="5분 고백송 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5430341','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="5분 고백송 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5430341', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="5분 고백송 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5430341')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="슬픔을 참는 세 가지 방법 (Feat. 딘딘) 곡 선택" class="input_check" name="input_check" value="5431145" />
					</div></td>
					<td class="no"><div class="wrap">16</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="슬픔을 참는 세 가지 방법 (Feat. 딘딘) 재생 - 새 창" onClick="melon.play.playSong('25020301',5431145);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="슬픔을 참는 세 가지 방법 (Feat. 딘딘) 곡담기 - 새 창" onClick="melon.play.addPlayList('5431145');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5431145');" title="슬픔을 참는 세 가지 방법 (Feat. 딘딘) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">슬픔을 참는 세 가지 방법 (Feat. 딘딘)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5431145);" class="fc_gray" title="슬픔을 참는 세 가지 방법 (Feat. 딘딘) 재생 - 새 창">슬픔을 참는 세 가지 방법 (Feat. 딘딘)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('32201');" title="혜령 - 페이지 이동" class="fc_mgray">혜령</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('32201');" title="혜령 - 페이지 이동" class="fc_mgray">혜령</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287570');" title="슬픔을 참는 세 가지 방법 (Feat. 딘딘) - 페이지 이동" class="fc_mgray">슬픔을 참는 세 가지 방법 (Feat. 딘딘)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="슬픔을 참는 세 가지 방법 (Feat. 딘딘)" data-song-no="5431145" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>1632</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="슬픔을 참는 세 가지 방법 (Feat. 딘딘) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5431145','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="슬픔을 참는 세 가지 방법 (Feat. 딘딘) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5431145', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="슬픔을 참는 세 가지 방법 (Feat. 딘딘) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5431145')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="오늘따라 곡 선택" class="input_check" name="input_check" value="5424572" />
					</div></td>
					<td class="no"><div class="wrap">17</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="오늘따라 재생 - 새 창" onClick="melon.play.playSong('25020301',5424572);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="오늘따라 곡담기 - 새 창" onClick="melon.play.addPlayList('5424572');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5424572');" title="오늘따라 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">오늘따라</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5424572);" class="fc_gray" title="오늘따라 재생 - 새 창">오늘따라</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('253866');" title="2AM - 페이지 이동" class="fc_mgray">2AM</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('253866');" title="2AM - 페이지 이동" class="fc_mgray">2AM</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2286911');" title="Let`s Talk - 페이지 이동" class="fc_mgray">Let`s Talk</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="오늘따라" data-song-no="5424572" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>4102</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="오늘따라 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5424572','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="오늘따라 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5424572', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="오늘따라 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5424572')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="Thank You (Remastered) 곡 선택" class="input_check" name="input_check" value="5432350" />
					</div></td>
					<td class="no"><div class="wrap">18</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="Thank You (Remastered) 재생 - 새 창" onClick="melon.play.playSong('25020301',5432350);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="Thank You (Remastered) 곡담기 - 새 창" onClick="melon.play.addPlayList('5432350');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5432350');" title="Thank You (Remastered) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">Thank You (Remastered)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5432350);" class="fc_gray" title="Thank You (Remastered) 재생 - 새 창">Thank You (Remastered)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('709927');" title="브릭 - 페이지 이동" class="fc_mgray">브릭</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('709927');" title="브릭 - 페이지 이동" class="fc_mgray">브릭</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287684');" title="Thank You - 페이지 이동" class="fc_mgray">Thank You</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="Thank You (Remastered)" data-song-no="5432350" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>32</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="Thank You (Remastered) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5432350','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="Thank You (Remastered) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5432350', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="Thank You (Remastered) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5432350')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="너의 두 팔에 안겨 곡 선택" class="input_check" name="input_check" value="5431280" />
					</div></td>
					<td class="no"><div class="wrap">19</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="너의 두 팔에 안겨 재생 - 새 창" onClick="melon.play.playSong('25020301',5431280);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="너의 두 팔에 안겨 곡담기 - 새 창" onClick="melon.play.addPlayList('5431280');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5431280');" title="너의 두 팔에 안겨 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">너의 두 팔에 안겨</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5431280);" class="fc_gray" title="너의 두 팔에 안겨 재생 - 새 창">너의 두 팔에 안겨</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('788425');" title="Asha - 페이지 이동" class="fc_mgray">Asha</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('788425');" title="Asha - 페이지 이동" class="fc_mgray">Asha</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287581');" title="Made In The VIBE - 페이지 이동" class="fc_mgray">Made In The VIBE</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="너의 두 팔에 안겨" data-song-no="5431280" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>306</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="너의 두 팔에 안겨 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5431280','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="너의 두 팔에 안겨 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5431280', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="너의 두 팔에 안겨 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5431280')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="괜찮아요 곡 선택" class="input_check" name="input_check" value="5432401" />
					</div></td>
					<td class="no"><div class="wrap">20</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="괜찮아요 재생 - 새 창" onClick="melon.play.playSong('25020301',5432401);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="괜찮아요 곡담기 - 새 창" onClick="melon.play.addPlayList('5432401');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5432401');" title="괜찮아요 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">괜찮아요</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5432401);" class="fc_gray" title="괜찮아요 재생 - 새 창">괜찮아요</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('254296');" title="우주히피 - 페이지 이동" class="fc_mgray">우주히피</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('254296');" title="우주히피 - 페이지 이동" class="fc_mgray">우주히피</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287692');" title="3 - 페이지 이동" class="fc_mgray">3</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="괜찮아요" data-song-no="5432401" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>103</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="괜찮아요 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5432401','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="괜찮아요 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5432401', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="괜찮아요 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5432401')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="취해 곡 선택" class="input_check" name="input_check" value="5432025" />
					</div></td>
					<td class="no"><div class="wrap">21</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="취해 재생 - 새 창" onClick="melon.play.playSong('25020301',5432025);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="취해 곡담기 - 새 창" onClick="melon.play.addPlayList('5432025');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5432025');" title="취해 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">취해</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5432025);" class="fc_gray" title="취해 재생 - 새 창">취해</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('769271');" title="스윗 (The Suite) - 페이지 이동" class="fc_mgray">스윗 (The Suite)</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('769271');" title="스윗 (The Suite) - 페이지 이동" class="fc_mgray">스윗 (The Suite)</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287653');" title="The Sweetest Thing - 페이지 이동" class="fc_mgray">The Sweetest Thing</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="취해" data-song-no="5432025" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>59</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="취해 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5432025','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="취해 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5432025', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="취해 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5432025')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="야경 곡 선택" class="input_check" name="input_check" value="5431283" />
					</div></td>
					<td class="no"><div class="wrap">22</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="야경 재생 - 새 창" onClick="melon.play.playSong('25020301',5431283);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="야경 곡담기 - 새 창" onClick="melon.play.addPlayList('5431283');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5431283');" title="야경 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">야경</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5431283);" class="fc_gray" title="야경 재생 - 새 창">야경</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('597711');" title="김정균 (a.k.a 김거지) - 페이지 이동" class="fc_mgray">김정균 (a.k.a 김거지)</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('597711');" title="김정균 (a.k.a 김거지) - 페이지 이동" class="fc_mgray">김정균 (a.k.a 김거지)</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287582');" title="달동네 - 페이지 이동" class="fc_mgray">달동네</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="야경" data-song-no="5431283" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>166</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="야경 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5431283','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="야경 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5431283', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="야경 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5431283')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="Deadline (Feat. VEN) 곡 선택" class="input_check" name="input_check" value="5430717" />
					</div></td>
					<td class="no"><div class="wrap">23</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="Deadline (Feat. VEN) 재생 - 새 창" onClick="melon.play.playSong('25020301',5430717);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="Deadline (Feat. VEN) 곡담기 - 새 창" onClick="melon.play.addPlayList('5430717');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5430717');" title="Deadline (Feat. VEN) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">Deadline (Feat. VEN)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5430717);" class="fc_gray" title="Deadline (Feat. VEN) 재생 - 새 창">Deadline (Feat. VEN)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('226587');" title="딥플로우 - 페이지 이동" class="fc_mgray">딥플로우</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('226587');" title="딥플로우 - 페이지 이동" class="fc_mgray">딥플로우</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287526');" title="데드라인 - 페이지 이동" class="fc_mgray">데드라인</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="Deadline (Feat. VEN)" data-song-no="5430717" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>232</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="Deadline (Feat. VEN) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5430717','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="Deadline (Feat. VEN) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5430717', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="Deadline (Feat. VEN) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5430717')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="처음 그날처럼 곡 선택" class="input_check" name="input_check" value="5435972" />
					</div></td>
					<td class="no"><div class="wrap">24</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="처음 그날처럼 재생 - 새 창" onClick="melon.play.playSong('25020301',5435972);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="처음 그날처럼 곡담기 - 새 창" onClick="melon.play.addPlayList('5435972');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5435972');" title="처음 그날처럼 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">처음 그날처럼</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5435972);" class="fc_gray" title="처음 그날처럼 재생 - 새 창">처음 그날처럼</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('1015');" title="심신 - 페이지 이동" class="fc_mgray">심신</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('1015');" title="심신 - 페이지 이동" class="fc_mgray">심신</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2288000');" title="처음 그날처럼 - 페이지 이동" class="fc_mgray">처음 그날처럼</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="처음 그날처럼" data-song-no="5435972" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>1</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="처음 그날처럼 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5435972','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="처음 그날처럼 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5435972', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="처음 그날처럼 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5435972')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="생고생 곡 선택" class="input_check" name="input_check" value="5433458" />
					</div></td>
					<td class="no"><div class="wrap">25</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="생고생 재생 - 새 창" onClick="melon.play.playSong('25020301',5433458);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="생고생 곡담기 - 새 창" onClick="melon.play.addPlayList('5433458');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5433458');" title="생고생 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">생고생</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5433458);" class="fc_gray" title="생고생 재생 - 새 창">생고생</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('741560');" title="벨로체 - 페이지 이동" class="fc_mgray">벨로체</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('741560');" title="벨로체 - 페이지 이동" class="fc_mgray">벨로체</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287748');" title="웃픈이야기 - 페이지 이동" class="fc_mgray">웃픈이야기</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="생고생" data-song-no="5433458" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>1294</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="생고생 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5433458','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="생고생 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5433458', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="생고생 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5433458')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="Diving 곡 선택" class="input_check" name="input_check" value="5433370" />
					</div></td>
					<td class="no"><div class="wrap">26</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="Diving 재생 - 새 창" onClick="melon.play.playSong('25020301',5433370);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="Diving 곡담기 - 새 창" onClick="melon.play.addPlayList('5433370');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5433370');" title="Diving 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">Diving</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5433370);" class="fc_gray" title="Diving 재생 - 새 창">Diving</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('720735');" title="탄젠트 - 페이지 이동" class="fc_mgray">탄젠트</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('720735');" title="탄젠트 - 페이지 이동" class="fc_mgray">탄젠트</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287741');" title="Diving - 페이지 이동" class="fc_mgray">Diving</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="Diving" data-song-no="5433370" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>38</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="Diving 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5433370','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="Diving 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5433370', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="Diving 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5433370')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="우리 조금만 어렸더라면 (Feat. 자람프로젝트 이아람) 곡 선택" class="input_check" name="input_check" value="5430356" />
					</div></td>
					<td class="no"><div class="wrap">27</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="우리 조금만 어렸더라면 (Feat. 자람프로젝트 이아람) 재생 - 새 창" onClick="melon.play.playSong('25020301',5430356);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="우리 조금만 어렸더라면 (Feat. 자람프로젝트 이아람) 곡담기 - 새 창" onClick="melon.play.addPlayList('5430356');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5430356');" title="우리 조금만 어렸더라면 (Feat. 자람프로젝트 이아람) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">우리 조금만 어렸더라면 (Feat. 자람프로젝트 이아람)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5430356);" class="fc_gray" title="우리 조금만 어렸더라면 (Feat. 자람프로젝트 이아람) 재생 - 새 창">우리 조금만 어렸더라면 (Feat. 자람프로젝트 이아람)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('445180');" title="MJ (써니사이드) - 페이지 이동" class="fc_mgray">MJ (써니사이드)</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('445180');" title="MJ (써니사이드) - 페이지 이동" class="fc_mgray">MJ (써니사이드)</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287497');" title="우리 조금만 어렸더라면 - 페이지 이동" class="fc_mgray">우리 조금만 어렸더라면</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="우리 조금만 어렸더라면 (Feat. 자람프로젝트 이아람)" data-song-no="5430356" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>619</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="우리 조금만 어렸더라면 (Feat. 자람프로젝트 이아람) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5430356','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="우리 조금만 어렸더라면 (Feat. 자람프로젝트 이아람) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5430356', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="우리 조금만 어렸더라면 (Feat. 자람프로젝트 이아람) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5430356')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="사랑 곡 선택" class="input_check" name="input_check" value="5430788" />
					</div></td>
					<td class="no"><div class="wrap">28</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="사랑 재생 - 새 창" onClick="melon.play.playSong('25020301',5430788);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="사랑 곡담기 - 새 창" onClick="melon.play.addPlayList('5430788');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5430788');" title="사랑 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">사랑</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5430788);" class="fc_gray" title="사랑 재생 - 새 창">사랑</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('38141');" title="임태경 - 페이지 이동" class="fc_mgray">임태경</a>, <a href="javascript:melon.link.goArtistDetail('228074');" title="Paul Potts - 페이지 이동" class="fc_mgray">Paul Potts</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('38141');" title="임태경 - 페이지 이동" class="fc_mgray">임태경</a>, <a href="javascript:melon.link.goArtistDetail('228074');" title="Paul Potts - 페이지 이동" class="fc_mgray">Paul Potts</a></span>
						</div>
						
						<div class="wrap_atist" style="display:none;">
							<button type="button" title="아티스트 더보기 - 레이어 팝업" class="btn btn_more" data-control="dropdown"><span class="odd_span">아티스트명 더보기</span></button>
							<!-- [DP] 아티스트 더보기 레이어  -->
							<div class="l_popup small" style="display:none; width:168px;">
								<div class="l_cntt">
									<ul class="list_bullet">
										
										<li><a href="javascript:melon.link.goArtistDetail('38141');" title="임태경 페이지 이동">임태경</a></li>
										
										<li><a href="javascript:melon.link.goArtistDetail('228074');" title="Paul Potts 페이지 이동">Paul Potts</a></li>
										
									</ul>
								</div>
								<button type="button" class="btn_close"><span class="odd_span">닫기</span></button>
								<span class="shadow"></span>
								<span class="bullet_vertical"></span>
							</div>
							<!-- //[DP] 아티스트 더보기 레이어  -->
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287534');" title="불후의 명곡 - 전설을 노래하다 (트로트 특집) - 페이지 이동" class="fc_mgray">불후의 명곡 - 전설을 노래하다 (트로트 특집)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="사랑" data-song-no="5430788" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>455</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="사랑 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5430788','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="사랑 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5430788', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="사랑 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5430788')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="소격동 곡 선택" class="input_check" name="input_check" value="5430784" />
					</div></td>
					<td class="no"><div class="wrap">29</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="소격동 재생 - 새 창" onClick="melon.play.playSong('25020301',5430784);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="소격동 곡담기 - 새 창" onClick="melon.play.addPlayList('5430784');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5430784');" title="소격동 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">소격동</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5430784);" class="fc_gray" title="소격동 재생 - 새 창">소격동</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('770167');" title="곽진언 - 페이지 이동" class="fc_mgray">곽진언</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('770167');" title="곽진언 - 페이지 이동" class="fc_mgray">곽진언</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287533');" title="슈퍼스타K6 TOP11 Part 3 - 페이지 이동" class="fc_mgray">슈퍼스타K6 TOP11 Part 3</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="소격동" data-song-no="5430784" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>4832</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="소격동 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5430784','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="소격동 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5430784', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="소격동 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5430784')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="거리에서 (Feat. 문명진) 곡 선택" class="input_check" name="input_check" value="5428782" />
					</div></td>
					<td class="no"><div class="wrap">30</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="거리에서 (Feat. 문명진) 재생 - 새 창" onClick="melon.play.playSong('25020301',5428782);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="거리에서 (Feat. 문명진) 곡담기 - 새 창" onClick="melon.play.addPlayList('5428782');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5428782');" title="거리에서 (Feat. 문명진) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">거리에서 (Feat. 문명진)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5428782);" class="fc_gray" title="거리에서 (Feat. 문명진) 재생 - 새 창">거리에서 (Feat. 문명진)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('524121');" title="2LSON - 페이지 이동" class="fc_mgray">2LSON</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('524121');" title="2LSON - 페이지 이동" class="fc_mgray">2LSON</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287353');" title="거리에서 - 페이지 이동" class="fc_mgray">거리에서</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="거리에서 (Feat. 문명진)" data-song-no="5428782" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>4717</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="거리에서 (Feat. 문명진) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5428782','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="거리에서 (Feat. 문명진) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5428782', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="거리에서 (Feat. 문명진) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5428782')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="애니 (Annie) 곡 선택" class="input_check" name="input_check" value="5428484" />
					</div></td>
					<td class="no"><div class="wrap">31</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="애니 (Annie) 재생 - 새 창" onClick="melon.play.playSong('25020301',5428484);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="애니 (Annie) 곡담기 - 새 창" onClick="melon.play.addPlayList('5428484');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5428484');" title="애니 (Annie) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">애니 (Annie)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5428484);" class="fc_gray" title="애니 (Annie) 재생 - 새 창">애니 (Annie)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('741698');" title="탑독 - 페이지 이동" class="fc_mgray">탑독</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('741698');" title="탑독 - 페이지 이동" class="fc_mgray">탑독</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287322');" title="Anniversary - 페이지 이동" class="fc_mgray">Anniversary</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="애니 (Annie)" data-song-no="5428484" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>444</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="애니 (Annie) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5428484','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="애니 (Annie) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5428484', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="애니 (Annie) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5428484')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="꺼져줄래 (Feat. EB Of Black Swan) 곡 선택" class="input_check" name="input_check" value="5428824" />
					</div></td>
					<td class="no"><div class="wrap">32</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="꺼져줄래 (Feat. EB Of Black Swan) 재생 - 새 창" onClick="melon.play.playSong('25020301',5428824);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="꺼져줄래 (Feat. EB Of Black Swan) 곡담기 - 새 창" onClick="melon.play.addPlayList('5428824');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5428824');" title="꺼져줄래 (Feat. EB Of Black Swan) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">꺼져줄래 (Feat. EB Of Black Swan)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5428824);" class="fc_gray" title="꺼져줄래 (Feat. EB Of Black Swan) 재생 - 새 창">꺼져줄래 (Feat. EB Of Black Swan)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('151636');" title="이보람 - 페이지 이동" class="fc_mgray">이보람</a>, <a href="javascript:melon.link.goArtistDetail('788241');" title="Crovin - 페이지 이동" class="fc_mgray">Crovin</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('151636');" title="이보람 - 페이지 이동" class="fc_mgray">이보람</a>, <a href="javascript:melon.link.goArtistDetail('788241');" title="Crovin - 페이지 이동" class="fc_mgray">Crovin</a></span>
						</div>
						
						<div class="wrap_atist" style="display:none;">
							<button type="button" title="아티스트 더보기 - 레이어 팝업" class="btn btn_more" data-control="dropdown"><span class="odd_span">아티스트명 더보기</span></button>
							<!-- [DP] 아티스트 더보기 레이어  -->
							<div class="l_popup small" style="display:none; width:168px;">
								<div class="l_cntt">
									<ul class="list_bullet">
										
										<li><a href="javascript:melon.link.goArtistDetail('151636');" title="이보람 페이지 이동">이보람</a></li>
										
										<li><a href="javascript:melon.link.goArtistDetail('788241');" title="Crovin 페이지 이동">Crovin</a></li>
										
									</ul>
								</div>
								<button type="button" class="btn_close"><span class="odd_span">닫기</span></button>
								<span class="shadow"></span>
								<span class="bullet_vertical"></span>
							</div>
							<!-- //[DP] 아티스트 더보기 레이어  -->
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287358');" title="꺼져줄래 - 페이지 이동" class="fc_mgray">꺼져줄래</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="꺼져줄래 (Feat. EB Of Black Swan)" data-song-no="5428824" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>668</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="꺼져줄래 (Feat. EB Of Black Swan) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5428824','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="꺼져줄래 (Feat. EB Of Black Swan) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5428824', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="꺼져줄래 (Feat. EB Of Black Swan) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5428824')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="하고 싶은 거 다 (Without You) 곡 선택" class="input_check" name="input_check" value="5428230" />
					</div></td>
					<td class="no"><div class="wrap">33</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="하고 싶은 거 다 (Without You) 재생 - 새 창" onClick="melon.play.playSong('25020301',5428230);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="하고 싶은 거 다 (Without You) 곡담기 - 새 창" onClick="melon.play.addPlayList('5428230');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5428230');" title="하고 싶은 거 다 (Without You) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">하고 싶은 거 다 (Without You)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5428230);" class="fc_gray" title="하고 싶은 거 다 (Without You) 재생 - 새 창">하고 싶은 거 다 (Without You)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('107744');" title="S (강타, 신혜성, 이지훈) - 페이지 이동" class="fc_mgray">S (강타, 신혜성, 이지훈)</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('107744');" title="S (강타, 신혜성, 이지훈) - 페이지 이동" class="fc_mgray">S (강타, 신혜성, 이지훈)</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287300');" title="Autumn Breeze - 페이지 이동" class="fc_mgray">Autumn Breeze</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="하고 싶은 거 다 (Without You)" data-song-no="5428230" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>2919</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="하고 싶은 거 다 (Without You) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5428230','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="하고 싶은 거 다 (Without You) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5428230', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="하고 싶은 거 다 (Without You) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5428230')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="Jump! 곡 선택" class="input_check" name="input_check" value="5432911" />
					</div></td>
					<td class="no"><div class="wrap">34</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="Jump! 재생 - 새 창" onClick="melon.play.playSong('25020301',5432911);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="Jump! 곡담기 - 새 창" onClick="melon.play.addPlayList('5432911');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5432911');" title="Jump! 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">Jump!</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5432911);" class="fc_gray" title="Jump! 재생 - 새 창">Jump!</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('592049');" title="에릭남 - 페이지 이동" class="fc_mgray">에릭남</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('592049');" title="에릭남 - 페이지 이동" class="fc_mgray">에릭남</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287708');" title="유기묘 돕기 프로젝트 앨범 `꽃보다 고양` - 페이지 이동" class="fc_mgray">유기묘 돕기 프로젝트 앨범 `꽃보다 고양`</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="Jump!" data-song-no="5432911" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>34</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="Jump! 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5432911','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="Jump! 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5432911', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="Jump! 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5432911')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="이제 와서 이렇게... 곡 선택" class="input_check" name="input_check" value="5433523" />
					</div></td>
					<td class="no"><div class="wrap">35</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="이제 와서 이렇게... 재생 - 새 창" onClick="melon.play.playSong('25020301',5433523);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="이제 와서 이렇게... 곡담기 - 새 창" onClick="melon.play.addPlayList('5433523');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5433523');" title="이제 와서 이렇게... 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">이제 와서 이렇게...</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5433523);" class="fc_gray" title="이제 와서 이렇게... 재생 - 새 창">이제 와서 이렇게...</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('741147');" title="우연수 - 페이지 이동" class="fc_mgray">우연수</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('741147');" title="우연수 - 페이지 이동" class="fc_mgray">우연수</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287761');" title="이제 와서 이렇게... - 페이지 이동" class="fc_mgray">이제 와서 이렇게...</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="이제 와서 이렇게..." data-song-no="5433523" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>53</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="이제 와서 이렇게... 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5433523','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="이제 와서 이렇게... 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5433523', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="이제 와서 이렇게... 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5433523')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="異緣 (이연) 곡 선택" class="input_check" name="input_check" value="5433508" />
					</div></td>
					<td class="no"><div class="wrap">36</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="異緣 (이연) 재생 - 새 창" onClick="melon.play.playSong('25020301',5433508);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="異緣 (이연) 곡담기 - 새 창" onClick="melon.play.addPlayList('5433508');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5433508');" title="異緣 (이연) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">異緣 (이연)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5433508);" class="fc_gray" title="異緣 (이연) 재생 - 새 창">異緣 (이연)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('524461');" title="전초아 - 페이지 이동" class="fc_mgray">전초아</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('524461');" title="전초아 - 페이지 이동" class="fc_mgray">전초아</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287757');" title="I Am A Singing Bird - 페이지 이동" class="fc_mgray">I Am A Singing Bird</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="異緣 (이연)" data-song-no="5433508" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>35</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="異緣 (이연) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5433508','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="異緣 (이연) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5433508', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="異緣 (이연) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5433508')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="사실 곡 선택" class="input_check" name="input_check" value="5427797" />
					</div></td>
					<td class="no"><div class="wrap">37</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="사실 재생 - 새 창" onClick="melon.play.playSong('25020301',5427797);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="사실 곡담기 - 새 창" onClick="melon.play.addPlayList('5427797');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5427797');" title="사실 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">사실</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5427797);" class="fc_gray" title="사실 재생 - 새 창">사실</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('772043');" title="레터 플로우 - 페이지 이동" class="fc_mgray">레터 플로우</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('772043');" title="레터 플로우 - 페이지 이동" class="fc_mgray">레터 플로우</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287224');" title="누군가로부터 - 페이지 이동" class="fc_mgray">누군가로부터</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="사실" data-song-no="5427797" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>930</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="사실 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5427797','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="사실 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5427797', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="사실 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5427797')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="마지막 페이지 곡 선택" class="input_check" name="input_check" value="5430348" />
					</div></td>
					<td class="no"><div class="wrap">38</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="마지막 페이지 재생 - 새 창" onClick="melon.play.playSong('25020301',5430348);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="마지막 페이지 곡담기 - 새 창" onClick="melon.play.addPlayList('5430348');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5430348');" title="마지막 페이지 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">마지막 페이지</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5430348);" class="fc_gray" title="마지막 페이지 재생 - 새 창">마지막 페이지</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('538464');" title="아메리카노 - 페이지 이동" class="fc_mgray">아메리카노</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('538464');" title="아메리카노 - 페이지 이동" class="fc_mgray">아메리카노</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287494');" title="마지막 페이지 - 페이지 이동" class="fc_mgray">마지막 페이지</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="마지막 페이지" data-song-no="5430348" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>44</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="마지막 페이지 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5430348','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="마지막 페이지 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5430348', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="마지막 페이지 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5430348')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="달 좋은 밤 곡 선택" class="input_check" name="input_check" value="5427855" />
					</div></td>
					<td class="no"><div class="wrap">39</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="달 좋은 밤 재생 - 새 창" onClick="melon.play.playSong('25020301',5427855);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="달 좋은 밤 곡담기 - 새 창" onClick="melon.play.addPlayList('5427855');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5427855');" title="달 좋은 밤 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">달 좋은 밤</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5427855);" class="fc_gray" title="달 좋은 밤 재생 - 새 창">달 좋은 밤</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('788182');" title="달 좋은 밤 - 페이지 이동" class="fc_mgray">달 좋은 밤</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('788182');" title="달 좋은 밤 - 페이지 이동" class="fc_mgray">달 좋은 밤</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287236');" title="달 좋은 밤 - 페이지 이동" class="fc_mgray">달 좋은 밤</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="달 좋은 밤" data-song-no="5427855" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>450</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="달 좋은 밤 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5427855','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="달 좋은 밤 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5427855', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="달 좋은 밤 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5427855')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="Good Night (Feat. 산체스 OF 팬텀) 곡 선택" class="input_check" name="input_check" value="5426590" />
					</div></td>
					<td class="no"><div class="wrap">40</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="Good Night (Feat. 산체스 OF 팬텀) 재생 - 새 창" onClick="melon.play.playSong('25020301',5426590);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="Good Night (Feat. 산체스 OF 팬텀) 곡담기 - 새 창" onClick="melon.play.addPlayList('5426590');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5426590');" title="Good Night (Feat. 산체스 OF 팬텀) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">Good Night (Feat. 산체스 OF 팬텀)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5426590);" class="fc_gray" title="Good Night (Feat. 산체스 OF 팬텀) 재생 - 새 창">Good Night (Feat. 산체스 OF 팬텀)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('602024');" title="New Champ - 페이지 이동" class="fc_mgray">New Champ</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('602024');" title="New Champ - 페이지 이동" class="fc_mgray">New Champ</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287107');" title="뉴챔프 The 2nd Single LP 4 DA LADY - 페이지 이동" class="fc_mgray">뉴챔프 The 2nd Single LP 4 DA LADY</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="Good Night (Feat. 산체스 OF 팬텀)" data-song-no="5426590" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>1460</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="Good Night (Feat. 산체스 OF 팬텀) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5426590','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="Good Night (Feat. 산체스 OF 팬텀) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5426590', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="Good Night (Feat. 산체스 OF 팬텀) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5426590')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="커튼콜 곡 선택" class="input_check" name="input_check" value="5428205" />
					</div></td>
					<td class="no"><div class="wrap">41</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="커튼콜 재생 - 새 창" onClick="melon.play.playSong('25020301',5428205);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="커튼콜 곡담기 - 새 창" onClick="melon.play.addPlayList('5428205');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5428205');" title="커튼콜 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">커튼콜</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5428205);" class="fc_gray" title="커튼콜 재생 - 새 창">커튼콜</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('448440');" title="9와 숫자들 - 페이지 이동" class="fc_mgray">9와 숫자들</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('448440');" title="9와 숫자들 - 페이지 이동" class="fc_mgray">9와 숫자들</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287293');" title="커튼콜 - 페이지 이동" class="fc_mgray">커튼콜</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="커튼콜" data-song-no="5428205" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>247</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="커튼콜 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5428205','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="커튼콜 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5428205', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="커튼콜 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5428205')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="THIS IS LOVE (Stage Ver.) 곡 선택" class="input_check" name="input_check" value="5426287" />
					</div></td>
					<td class="no"><div class="wrap">42</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="THIS IS LOVE (Stage Ver.) 재생 - 새 창" onClick="melon.play.playSong('25020301',5426287);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="THIS IS LOVE (Stage Ver.) 곡담기 - 새 창" onClick="melon.play.addPlayList('5426287');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5426287');" title="THIS IS LOVE (Stage Ver.) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">THIS IS LOVE (Stage Ver.)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5426287);" class="fc_gray" title="THIS IS LOVE (Stage Ver.) 재생 - 새 창">THIS IS LOVE (Stage Ver.)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('175404');" title="슈퍼주니어 - 페이지 이동" class="fc_mgray">슈퍼주니어</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('175404');" title="슈퍼주니어 - 페이지 이동" class="fc_mgray">슈퍼주니어</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287077');" title="The 7th Album Special Edition `THIS IS LOVE` - 페이지 이동" class="fc_mgray">The 7th Album Special Edition `THIS IS LOVE`</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="THIS IS LOVE (Stage Ver.)" data-song-no="5426287" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>5642</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="THIS IS LOVE (Stage Ver.) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5426287','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="THIS IS LOVE (Stage Ver.) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5426287', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="THIS IS LOVE (Stage Ver.) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5426287')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="New 레퀴엠1. 사랑한다 곡 선택" class="input_check" name="input_check" value="5427839" />
					</div></td>
					<td class="no"><div class="wrap">43</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="New 레퀴엠1. 사랑한다 재생 - 새 창" onClick="melon.play.playSong('25020301',5427839);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="New 레퀴엠1. 사랑한다 곡담기 - 새 창" onClick="melon.play.addPlayList('5427839');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5427839');" title="New 레퀴엠1. 사랑한다 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">New 레퀴엠1. 사랑한다</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5427839);" class="fc_gray" title="New 레퀴엠1. 사랑한다 재생 - 새 창">New 레퀴엠1. 사랑한다</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('6533');" title="김재희 - 페이지 이동" class="fc_mgray">김재희</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('6533');" title="김재희 - 페이지 이동" class="fc_mgray">김재희</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287231');" title="New 레퀴엠1. 사랑한다 - 페이지 이동" class="fc_mgray">New 레퀴엠1. 사랑한다</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="New 레퀴엠1. 사랑한다" data-song-no="5427839" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>48</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="New 레퀴엠1. 사랑한다 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5427839','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="New 레퀴엠1. 사랑한다 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5427839', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="New 레퀴엠1. 사랑한다 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5427839')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="1.2.3 곡 선택" class="input_check" name="input_check" value="5424796" />
					</div></td>
					<td class="no"><div class="wrap">44</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="1.2.3 재생 - 새 창" onClick="melon.play.playSong('25020301',5424796);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="1.2.3 곡담기 - 새 창" onClick="melon.play.addPlayList('5424796');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5424796');" title="1.2.3 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">1.2.3</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5424796);" class="fc_gray" title="1.2.3 재생 - 새 창">1.2.3</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('787628');" title="퍼펄즈 - 페이지 이동" class="fc_mgray">퍼펄즈</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('787628');" title="퍼펄즈 - 페이지 이동" class="fc_mgray">퍼펄즈</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2286927');" title="1.2.3 - 페이지 이동" class="fc_mgray">1.2.3</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="1.2.3" data-song-no="5424796" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>1337</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="1.2.3 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5424796','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="1.2.3 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5424796', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="1.2.3 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5424796')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="Yo DJ (Original Mix) 곡 선택" class="input_check" name="input_check" value="5432964" />
					</div></td>
					<td class="no"><div class="wrap">45</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="Yo DJ (Original Mix) 재생 - 새 창" onClick="melon.play.playSong('25020301',5432964);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="Yo DJ (Original Mix) 곡담기 - 새 창" onClick="melon.play.addPlayList('5432964');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5432964');" title="Yo DJ (Original Mix) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">Yo DJ (Original Mix)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5432964);" class="fc_gray" title="Yo DJ (Original Mix) 재생 - 새 창">Yo DJ (Original Mix)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('735186');" title="Myo - 페이지 이동" class="fc_mgray">Myo</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('735186');" title="Myo - 페이지 이동" class="fc_mgray">Myo</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287711');" title="Yo DJ - 페이지 이동" class="fc_mgray">Yo DJ</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="Yo DJ (Original Mix)" data-song-no="5432964" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>87</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="Yo DJ (Original Mix) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5432964','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="Yo DJ (Original Mix) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5432964', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="Yo DJ (Original Mix) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5432964')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="니가있다 곡 선택" class="input_check" name="input_check" value="5428072" />
					</div></td>
					<td class="no"><div class="wrap">46</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="니가있다 재생 - 새 창" onClick="melon.play.playSong('25020301',5428072);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="니가있다 곡담기 - 새 창" onClick="melon.play.addPlayList('5428072');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5428072');" title="니가있다 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">니가있다</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5428072);" class="fc_gray" title="니가있다 재생 - 새 창">니가있다</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('782756');" title="핑크토끼 - 페이지 이동" class="fc_mgray">핑크토끼</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('782756');" title="핑크토끼 - 페이지 이동" class="fc_mgray">핑크토끼</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287270');" title="니가있다 - 페이지 이동" class="fc_mgray">니가있다</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="니가있다" data-song-no="5428072" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>3334</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="니가있다 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5428072','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="니가있다 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5428072', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="니가있다 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5428072')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="말하지 않아도 알아요 곡 선택" class="input_check" name="input_check" value="5427983" />
					</div></td>
					<td class="no"><div class="wrap">47</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="말하지 않아도 알아요 재생 - 새 창" onClick="melon.play.playSong('25020301',5427983);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="말하지 않아도 알아요 곡담기 - 새 창" onClick="melon.play.addPlayList('5427983');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5427983');" title="말하지 않아도 알아요 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">말하지 않아도 알아요</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5427983);" class="fc_gray" title="말하지 않아도 알아요 재생 - 새 창">말하지 않아도 알아요</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('424945');" title="에스프레소 - 페이지 이동" class="fc_mgray">에스프레소</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('424945');" title="에스프레소 - 페이지 이동" class="fc_mgray">에스프레소</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287253');" title="말하지 않아도 알아요 - 페이지 이동" class="fc_mgray">말하지 않아도 알아요</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="말하지 않아도 알아요" data-song-no="5427983" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>98</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="말하지 않아도 알아요 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5427983','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="말하지 않아도 알아요 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5427983', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="말하지 않아도 알아요 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5427983')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="10월 18일 곡 선택" class="input_check" name="input_check" value="5427556" />
					</div></td>
					<td class="no"><div class="wrap">48</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="10월 18일 재생 - 새 창" onClick="melon.play.playSong('25020301',5427556);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="10월 18일 곡담기 - 새 창" onClick="melon.play.addPlayList('5427556');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5427556');" title="10월 18일 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">10월 18일</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5427556);" class="fc_gray" title="10월 18일 재생 - 새 창">10월 18일</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('449360');" title="우일 - 페이지 이동" class="fc_mgray">우일</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('449360');" title="우일 - 페이지 이동" class="fc_mgray">우일</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287195');" title="우일; 여섯번째 이야기 - 페이지 이동" class="fc_mgray">우일; 여섯번째 이야기</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="10월 18일" data-song-no="5427556" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>86</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="10월 18일 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5427556','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="10월 18일 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5427556', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="10월 18일 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('0010000000000000','5427556')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="클러치백 (Feat. 양동근) 곡 선택" class="input_check" name="input_check" value="5426593" />
					</div></td>
					<td class="no"><div class="wrap">49</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="클러치백 (Feat. 양동근) 재생 - 새 창" onClick="melon.play.playSong('25020301',5426593);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="클러치백 (Feat. 양동근) 곡담기 - 새 창" onClick="melon.play.addPlayList('5426593');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5426593');" title="클러치백 (Feat. 양동근) 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">클러치백 (Feat. 양동근)</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5426593);" class="fc_gray" title="클러치백 (Feat. 양동근) 재생 - 새 창">클러치백 (Feat. 양동근)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('697113');" title="하이니 - 페이지 이동" class="fc_mgray">하이니</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('697113');" title="하이니 - 페이지 이동" class="fc_mgray">하이니</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287108');" title="클러치백 (Clutch Bag) - 페이지 이동" class="fc_mgray">클러치백 (Clutch Bag)</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="클러치백 (Feat. 양동근)" data-song-no="5426593" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>570</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button"  class="btn_icon mv" title="클러치백 (Feat. 양동근) 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5426593','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="클러치백 (Feat. 양동근) 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5426593', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="클러치백 (Feat. 양동근) 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5426593')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				<tr >
					<td><div class="wrap pd_none left">
						<input type="checkbox" title="달린다 곡 선택" class="input_check" name="input_check" value="5426511" />
					</div></td>
					<td class="no"><div class="wrap">50</div></td>
					<td class="t_left"><div class="wrap pd_none">
						<div class="ellipsis" style="max-width:100%">
							<button type="button"  class="btn_icon play" title="달린다 재생 - 새 창" onClick="melon.play.playSong('25020301',5426511);"><span class="odd_span">재생</span></button>
							<button type="button" class="btn_icon add" title="달린다 곡담기 - 새 창" onClick="melon.play.addPlayList('5426511');"><span class="odd_span">담기</span></button>
							<a href="javascript:melon.link.goSongDetail('5426511');" title="달린다 곡정보 - 페이지 이동" class="btn btn_icon_detail"><span class="odd_span">달린다</span></a>
							
							
							
							
							
							
							<a href="javascript:melon.play.playSong('25020301',5426511);" class="fc_gray" title="달린다 재생 - 새 창">달린다</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap wrapArtistName">
						<div id="artistName" class="ellipsis" style="max-width:122px">
							<a href="javascript:melon.link.goArtistDetail('198209');" title="옥수사진관 - 페이지 이동" class="fc_mgray">옥수사진관</a><span class="checkEllipsis" style="display:none"><a href="javascript:melon.link.goArtistDetail('198209');" title="옥수사진관 - 페이지 이동" class="fc_mgray">옥수사진관</a></span>
						</div>
						
					</div></td>
					<td class="t_left"><div class="wrap">
						<div class="ellipsis" style="max-width:90%">
							<a href="javascript:melon.link.goAlbumDetail('2287102');" title="달린다 - 페이지 이동" class="fc_mgray">달린다</a>
						</div>
					</div></td>
					<td class="t_left"><div class="wrap right_none">
						<button type="button" class="btn_icon like" title="달린다" data-song-no="5426511" data-song-menuId="25020301">
							<span class="odd_span">좋아요</span>
							<span class="cnt"><span class="none">총건수</span>86</span>
						</button>
					</div></td>
					<td><div class="wrap pd_none left">
						<button type="button" disabled="disabled" class="btn_icon mv disabled" title="달린다 뮤직비디오 - 새 창" onClick="melon.link.goMvDetail('25020301', '5426511','song');"><span class="odd_span">뮤직비디오</span></button>
					</div></td>
					<td><div class="wrap pd_none">
						<button type="button"  class="btn_icon dl" title="달린다 다운로드 - 새 창" onClick="melon.buy.goBuyProduct('frm', '5426511', '3C0001', '','0', '25020301');"><span class="odd_span">다운</span></button>
					</div></td>
					<td><div class="wrap pd_none right">
						<button type="button"  class="btn_icon sendlk1" title="달린다 폰 다운 - 새 창" onClick="melon.buy.popPhoneDecorate('1110000000000000','5426511')"><span class="odd_span">폰 다운</span></button>
					</div></td>
				</tr>
				
				
			</tbody>
		</table>
		<div class="wrap_btn_tb bottom">
			<button type="button" title="곡 목록 전체 선택" class="btn_base short check_all d_checkall"><span class="odd_span"><span class="even_span">전체선택</span></span></button>
			<button type="button" title="선택된 곡 재생 - 새 창" class="btn_base short play d_listen" onClick="melon.play.playFormSong('25020301','frm');"><span class="odd_span"><span class="even_span">듣기</span></span></button>
			<button type="button" title="선택된 곡 다운로드 - 새 창" class="btn_base short download d_download" onClick="melon.buy.goBuyProduct('frm','','3C0001','input_check','0','25020301');"><span class="odd_span"><span class="even_span">다운</span></span></button>
			<button type="button" title="선택된 곡 담기 - 새 창" class="btn_base short scrap d_scrap" onClick="melon.play.addFormPlayList('frm');"><span class="odd_span"><span class="even_span">담기</span></span></button>
			<button type="button" title="선택된 곡 선물하기 - 새 창" class="btn_base short gift d_gift" onClick="melon.buy.goPresent('song', 'frm', '25020301');"><span class="odd_span"><span class="even_span">선물</span></span></button>
		</div>
	</div>
	</form>
	<!-- //곡1 목록 -->
	<script type="text/javascript">
	$(function(){
		/* 좋아요 셋팅부 */
		var LIKE_SET = {
			likeCnt  : "<span class=\"odd_span\">{TXT}</span>\n<span class=\"cnt\">\n<span class=\"none\">총건수</span>\n{CNT}</span>",
			likeObj  : $('div.d_song_list button.like'),
			likeAttr : 'data-song-no',
			likeUrl  : '/commonlike/getSongLike.json'
		};

		/* 좋아요 공통부 */
		var contsIdList = LIKE_SET['likeObj'].map(function() { return $(this).attr(LIKE_SET['likeAttr']); }).get().join(',');
		var tmpl, title;
		if ( contsIdList === '' || contsIdList === null  ) { return; }
		$.get(LIKE_SET['likeUrl'], { contsIds : contsIdList }, function(data) {
			var robj;
			$.each(data.contsLike, function(i, v) {
				var SUMMCNT = MELON.WEBSVC.number.addComma(v.SUMMCNT);
				robj  = LIKE_SET['likeObj'].eq(i);
				tmpl  = LIKE_SET['likeCnt'];
				title = robj.attr('title').split(' 좋아요');
				robj[v.LIKEYN == 'Y' ? 'addClass' : 'removeClass']('on').attr('title', title[0] + (v.LIKEYN == 'Y' ? ' 좋아요 취소' : ' 좋아요'));
				robj.html(
					tmpl.replace(/\{TXT\}/g, (v.LIKEYN == 'Y' ? '좋아요 취소' : '좋아요')).replace(/\{CNT\}/g, SUMMCNT)
				);
			});
		}).done(function(){
			//아티스트 더보기 처리
			WEBELLIPSIS.ellipsis("checkEllipsis","wrap_atist",122);
		});
	});
	</script>
	
	<!-- 페이지 -->
	<script type="text/javascript">
$(document).ready(function(){
$('#pageObjNavgation').html("\u003Cdiv class=\"paginate\"\u003E\u003Ca href=\"javascript:;\" class=\"btn_first disabled\"\u003E\u003Cspan\u003E맨처음\u003C\/span\u003E\u003C\/a\u003E \u003Ca href=\"javascript:;\" class=\"btn_pre disabled\"\u003E\u003Cspan\u003E이전\u003C\/span\u003E\u003C\/a\u003E \u003Cspan class=\"page_num\"\u003E\u003Cstrong\u003E\u003Cspan class=\"none\"\u003E현재페이지\u003C\/span\u003E1\u003C\/strong\u003E\u003Ca href=\"javascript:pageObj.sendPage(\'51\');\"\u003E2\u003C\/a\u003E\u003Ca href=\"javascript:pageObj.sendPage(\'101\');\"\u003E3\u003C\/a\u003E\u003Ca href=\"javascript:pageObj.sendPage(\'151\');\"\u003E4\u003C\/a\u003E\u003Ca href=\"javascript:pageObj.sendPage(\'201\');\"\u003E5\u003C\/a\u003E\u003Ca href=\"javascript:pageObj.sendPage(\'251\');\"\u003E6\u003C\/a\u003E\u003Ca href=\"javascript:pageObj.sendPage(\'301\');\"\u003E7\u003C\/a\u003E\u003Ca href=\"javascript:pageObj.sendPage(\'351\');\"\u003E8\u003C\/a\u003E\u003Ca href=\"javascript:pageObj.sendPage(\'401\');\"\u003E9\u003C\/a\u003E\u003Ca href=\"javascript:pageObj.sendPage(\'451\');\"\u003E10\u003C\/a\u003E\u003C\/span\u003E \u003Ca href=\"javascript:pageObj.sendPage(\'501\');\" class=\"btn_next\"\u003E\u003Cspan\u003E다음\u003C\/span\u003E\u003C\/a\u003E \u003Ca href=\"javascript:pageObj.sendPage(\'62851\');\" class=\"btn_last\"\u003E\u003Cspan\u003E맨끝\u003C\/span\u003E\u003C\/a\u003E\u003C\/div\u003E")
});
</script>

	<!-- 페이지 -->
	</div>
	<!-- 게시물 페이지 추가 -->
	<!--
		targetId = 페이지가 들어가는 상위 div id 입력
		url = 리스트 재 검색을 위한 requestMapping 입력 (해당 페이지의 requestMapping뒤에 Paging을 붙인다)
		pageList = 곡 리스트 입력
		pageObj = pageObj 고정
	 -->
	<div id='pageObjNavgation' style='display: none;'></div>
<script src='/resource/script/common/jquery.ba-bbq.min.js' type='text/javascript'></script>
<script src='/resource/script/common/historypager.js' type='text/javascript'></script>
<script type="text/javascript">
var pageObj = new Pagination('song_listPaging.htm', 'pageList', 'pageObjNavgation', '50', 'pageObj', false);
</script>

	<script type="text/javascript">
		pageObj.addParam("classicMenuId", "DP0100");
		pageObj.addParam("subMenuId", "DP0101");
		pageObj.addParam("orderBy", "ORDER_ISSUE_DATE");
	</script>

</div>
<!-- //contents -->
<!-- C. 전체 공통 스크립트 -->

	<script type="text/javascript">
		var httpWww = "http://www.melon.com";
		var httpsWww = "https://www.melon.com";
		var POC_ID = "XXXX";
	</script>

	<script type="text/javascript" src="/resource/script/web/common/melonweb_openlib.js"></script>
	<script type="text/javascript" src="/resource/script/web/common/melonweb_comm.js"></script>
	<script type="text/javascript" src="/resource/script/web/common/melonweb_comm_ajax.js"></script>
	<script type="text/javascript" src="/resource/script/web/common/melonweb_svc.js"></script>
	<script type="text/javascript" src="/resource/script/web/cm/common/melonweb_cm.js"></script>
	<script type="text/javascript" src="http://log.melon.com/mlog.js"></script>

	<script type="text/javascript">
		var melon = MELON.WEBSVC.POC;

		document.domain="melon.com";
		//pocId 쿠키설정 실행
		melon.setPocId();
	</script>
<!-- D. 해당 메뉴 관련 공통 스크립트 -->
<script type="text/javascript" src="/resource/script/web/genre/melonweb_genre.js"></script>
<!-- D. 화면 내부 전용 스크립트 -->
<script type="text/javascript">
/* ********************************************************************************
* HistoryBack 값 설정
******************************************************************************** */
if(typeof pageObj != "undefined") {
	var _oldShow = pageObj.show;
	pageObj.show = function() {
		var jsonParam = eval(pageObj.params);
		//orderBy 설정
		$("ul.list_sort>li").removeClass('on');
		if(jsonParam.orderBy == 'ORDER_ISSUE_DATE') {
			$("ul.list_sort>li").eq(0).addClass('on');
		} else {
			$("ul.list_sort>li").eq(1).addClass('on');
		}
		return _oldShow.apply(this, arguments);
	}
}
</script>
<script type="text/javascript">
$(function() {
	var classicMenuId = 'DP0100';
	var subMenuId = 'DP0101';
	var PBPGN = MELON.PBPGN;

	// 정렬기준
	$(document).on('click', 'a.orderClass',function(e){
		// 정렬 기준 CLASS 적용
		$('.list_sort').find(">li").each(function() {
			$(this).removeClass("on");
		})
		$(this).parent().addClass("on");

		pageObj.addParam("orderBy",this.id);
		pageObj.sendFirstPage();
	});
	// Banner Info
	var serverTime = "2014:10:29 03:46:26"; 	// 시간은 서버에서 찍어주세요.(yyyy:MM:dd hh:mm:ss)
	$(document).on('limitpopup', function( e, cookieId ) {
		if ( cookieId === 'linebanner01' ) {
			$('div.line_ban').show();
			$('div.line_ban').timeLimitSet({cookieType:'array',timeLocation:'local',timeType:'dayafter',selectors:{closebtn:'>button.d_fadeout', checkbox:''}});
		}
	});
 	// 바인드 후에 호출 해야함
	PBPGN.TimeLimitPopup.init({ cookieType:'array', cookieId:'linebanner01', limitType:'day', serverTime:serverTime });
});

</script>
			<!-- //contents -->
		</div>
	</div>
	<!-- footer -->
	<div id="footer" class="my_fold">
		<div class="btn_top_wrap">
			<a href="#skip_nav" class="btn_top" title="맨 위로 가기" style=""><span>맨 위로 가기</span></a>
		</div>

		
		<ul class="clfix">
			<li class="first_child"><a href="http://www.iloen.com/" title="회사소개" target="_blank">회사소개</a></li>
			<li><a href="javascript:MELON.WEBSVC.POC.link.goTerms('use', 'use');" title="이용약관">이용약관</a></li>
			<li><a href="javascript:MELON.WEBSVC.POC.link.goTerms('privateinfo', 'privateinfo');" title="개인정보취급방침"><strong>개인정보취급방침</strong></a></li>
			<li><a href="javascript:MELON.WEBSVC.POC.link.goTerms('youth', 'youth');" title="청소년보호정책">청소년보호정책</a></li>
			<li><a href="http://faqs2.melon.com/customer/faq/informFaq.htm?no=1&faqId=QUES20140616000001&SEARCH_KEY=&SEARCH_PAR_CATEGORY=CATE20130909000006&SEARCH_CATEGORY=CATE20130909000021" title="제휴/프로모션문의">제휴/프로모션문의</a></li>
			<li><a href="javascript:var p=MELON.WEBSVC.openPopup('http://www.melon.com/emailCollectionReject.html', 384, 331);" title="이메일주소무단수집거부">이메일주소무단수집거부</a></li>
			<li><a href="http://faqs2.melon.com/customer/index.htm" title="고객센터">고객센터</a></li>
			<!--140425 삭제 lyr-->
			<!--삭제<li><a href="" title="윈도우XP 팝업 문제해결">윈도우XP 팝업 문제해결</a></li>-->
			<!--//140425 삭제 lyr-->
			<li><a href="http://partner.melon.com" title="파트너센터" target="_blank">파트너센터</a></li><!-- 131217_추가_miok -->
		</ul>
		<p>
			<span class="first">서울시 강남구 테헤란로 103길 17 정석빌딩</span><span>대표이사 : 신원수</span><span>사업자등록번호 : 138-81-05876</span><span>통신판매업 신고번호 : 제2011-서울강남-02008호</span>
			<span class="first">문의전화(평일 09:00~18:00) : 1566-7727 (유료)</span><span>© LOEN Entertainment, Inc. All rights reserved.</span>
		</p>
		<div class="ban">
			<a href="/footer/awrad.htm?pageType=02"><img height="32" width="110" src="http://image.melon.co.kr/resource/image/web/common/ban_footer01.png" alt="2014 대한민국 퍼스트브랜드 대상"/></a><a href="/footer/awrad.htm?pageType=03"><img height="32" width="122" src="http://image.melon.co.kr/resource/image/web/common/ban_footer02.png" alt="한국능률협회컨설팅 2014 브랜드 파워 1위"/></a><a href="/footer/awrad.htm?pageType=04"><img height="32" width="112" src="http://image.melon.co.kr/resource/image/web/common/ban_footer04.png" alt="2014 가장 신뢰하는 브랜드 대상"/></a><a href="/footer/awrad.htm?pageType=01"><img height="32" width="116" src="http://image.melon.co.kr/resource/image/web/common/ban_footer08.png" alt="2014 국가 브랜드 대상"/></a><a href="http://www.clms.or.kr/user/ctf/clmsCtfTransList.do?NmberBusiRegNo=1388105876&websiteName=www.melon.com&SUB=FB" target="_blank"><img height="32" width="91" src="http://image.melon.co.kr/resource/image/web/common/ban_footer06.png" alt="음악저작권 이용허락 인증"/></a><a href="http://www.cleansite.org/" target="_blank"><img height="32" width="79" src="http://image.melon.co.kr/resource/image/web/common/ban_footer07.png" alt="클린사이트"/></a>
		</div>
		<!-- 두 줄일때 add 클래스 추가 -->
		<!-- <div class="ban add">
			<a href="http://www.melon.com/cds/event/web/event_first.htm?SUB=FB" title="2012 대한민국 퍼스트브랜드 대상
"><img height="32" width="110" src="http://image.melon.co.kr/resource/image/web/common/ban_footer01.png" alt="2012 대한민국 퍼스트브랜드 대상"/></a><a href="http://www.melon.com/cds/event/web/event_kbpi.htm?SUB=FB" title="한국능률협회컨설팅 2012 브랜드 파워 1위
"><img height="32" width="122" src="http://image.melon.co.kr/resource/image/web/common/ban_footer02.png" alt="한국능률협회컨설팅 2012 브랜드 파워 1위"/></a>
		</div> -->
		<a href="#" class="btn_top" title="맨 위로 가기" style="display: none;">맨 위로 가기</a>
		<!--140602 추가 lyr-->
		<div id="btnMobileWeb" class="mobile_btn_wrap" style="display:none;">
			<p>접속하신 단말/브라우저에서는 멜론 서비스의 사용이 일부 제한될 수 있습니다. 양해부탁드립니다.</p>
			<a href="javascript:;" onclick="goMelonTPage();" class="btn btn_big" title="모바일 웹 버전">
				<span class="odd_span">
					<span class="even_span">모바일 웹 버전</span>
				</span>
			</a>
		</div>
		<script type="text/javascript">
		(function() {
			var fromMobileWeb = getCookie("D");
			if(fromMobileWeb != null && fromMobileWeb.indexOf('T') > -1){
				$("#btnMobileWeb").css("display", "block");
			}
		})();

		function goMelonTPage(){
			// 쿠키 삭제 후 t.com으로 페이지 이동
			var expireDate = new Date();
			expireDate.setDate(expireDate.getDate()-1);
			document.cookie = "D=;path=/;expires="+expireDate.toGMTString()+";domain=.melon.com";

			location.href= 'http://t.melon.com';
		}
		</script>
		<!--//140602 추가 lyr-->
	</div>
	<!-- //footer -->
</div>
</body>
</html>