<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
      <section id="sub">
        <div>
          <img src="../img/sub_top_tit1.png" alt="INTRODUCTION"/>
        </div>
        <div class="introduction">
          <aside>
            <img src="../img/sub_aside_cate1_tit.png" alt="팜스토리소개"/>
            <ul>
              <li> <a href="/farmstory/introduction/hello.do">인사말</a> </li>
              <li class="on"> <a href="/farmstory/introduction/direction.do">찾아오시는길</a> </li>

            </ul>
          </aside>
          <article>
            <nav>
              <img src="../img/sub_nav_tit_cate1_tit2.png" alt="찾아오시는길/">
              <p>
                Home > 팜스토리소개 > <strong>찾아오시는길</strong>
              </p>
            </nav>
            <!-- 내용 시작 -->
            <!-- * Daum 지도 - 지도퍼가기 -->
            <!-- 1. 지도 노드 -->
            <div id="daumRoughmapContainer1550110123038" class="root_daum_roughmap root_daum_roughmap_landing"></div>

            <!--
              2. 설치 스크립트
              * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
            -->
            <script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>

            <!-- 3. 실행 스크립트 -->
            <script charset="UTF-8">
              new daum.roughmap.Lander({
                "timestamp" : "1550110123038",
                "key" : "s7ma",
                "mapWidth" : "800",
                "mapHeight" : "500"
              }).render();
            </script>
            <!-- 내용 끝 -->

          </article>
        </div>
      </section>
      <%@ include file="../_footer.jsp" %>
