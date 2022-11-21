<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./css/styles.css" />
    <link rel="stylesheet" href="./css/songdetailcss.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" />
    <link />

    <script src="https://code.jquery.com/jquery-3.6.1.min.js"
      integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <title>Music Website</title>
  </head>

  <body>
    <header>
      <div class="menu_side">
        <h1>
          <a href="home">My <span>Music</span></a>
        </h1>

        <div class="playlist">
          <h4 class="menu_link">
            <span></span><i class="bi bi-music-note-beamed"></i><a href="home">Home</a>
          </h4>
          <h4 class="menu_link">
            <span></span><i class="bi bi-music-note-beamed"></i><a href="playlist">Playlist</a>
          </h4>
          <h4 class="menu_link">
            <span></span><i class="bi bi-music-note-beamed"></i><a href="">Library</a>
          </h4>
        </div>
        <div class="menu_song">
          <li class="songItem">
            <a href="songdetail">
              <span>01</span>
              <img src="img/1.jpg" alt="" />
              <h5>
                On My Way <br />
                <div class="subtitle">Alen Walker</div>
              </h5>
            </a>
            <i class="bi playListPlay bi-play-circle-fill" id="1"></i>
          </li>
          <li class="songItem">
            <a href="songdetail">
              <span>02</span>
              <img src="img/2.jpg" alt="" />
              <h5>
                On My Way <br />
                <div class="subtitle">Alen Walker</div>
              </h5>
            </a>
            <i class="bi playListPlay bi-play-circle-fill" id="2"></i>
          </li>
          <li class="songItem">
            <a href="songdetail">
              <span>03</span>
              <img src="img/2.jpg" alt="" />
              <h5>
                On My Way <br />
                <div class="subtitle">Alen Walker</div>
              </h5>
            </a>
            <i class="bi playListPlay bi-play-circle-fill" id="3"></i>
          </li>
          <li class="songItem">
            <a href="songdetail">
              <span>04</span>
              <img src="img/2.jpg" alt="" />
              <h5>
                On My Way <br />
                <div class="subtitle">Alen Walker</div>
              </h5>
            </a>
            <i class="bi playListPlay bi-play-circle-fill" id="4"></i>
          </li>
          <li class="songItem">
            <a href="songdetail">
              <span>05</span>
              <img src="img/2.jpg" alt="" />
              <h5>
                On My Way <br />
                <div class="subtitle">Alen Walker</div>
              </h5>
            </a>
            <i class="bi playListPlay bi-play-circle-fill" id="5"></i>
          </li>
          <li class="songItem">
            <a href="songdetail">
              <span>06</span>
              <img src="img/2.jpg" alt="" />
              <h5>
                On My Way <br />
                <div class="subtitle">Alen Walker</div>
              </h5>
            </a>
            <i class="bi playListPlay bi-play-circle-fill" id="6"></i>
          </li>
          <li class="songItem">
            <a href="songdetail">
              <span>07</span>
              <img src="img/2.jpg" alt="" />
              <h5>
                On My Way <br />
                <div class="subtitle">Alen Walker</div>
              </h5>
            </a>
            <i class="bi playListPlay bi-play-circle-fill" id="7"></i>
          </li>
          <li class="songItem">
            <a href="songdetail">
              <span>08</span>
              <img src="img/2.jpg" alt="" />
              <h5>
                On My Way <br />
                <div class="subtitle">Alen Walker</div>
              </h5>
            </a>
            <i class="bi playListPlay bi-play-circle-fill" id="8"></i>
          </li>
        </div>
      </div>
      <div class="song_side">
        <nav>
          <form method="get" class="search" action="searchpage">
            <i class="bi bi-search"></i>
            <input name="input" type="text" placeholder="Search Music..." />
            <button style="display:none" type="submit">Search</button>
          </form>

          <c:if test="${!empty sessionScope.userid }">
            <div class="user">
              <span>
                <a class="register logged" href="#">${sessionScope.username}</a> 
                <a class="login" href="logout">Logout</a>
              </span>
            </div>
          </c:if>

          <c:if test="${empty sessionScope.userid }">
            <div class="user">
              <span>
                <a class="login" href="login">Login</a> 
                <a class="register" href="registered">Register</a>
              </span>
            </div>
          </c:if>

        </nav>
        <div class="main-scroll">
          <div class="music_info">
            <img src="./img/karik-image.jfif" />
            <div class="info">
              <p>ÄiÌa ÄÆ¡n</p>
              <h1>CÃ³ ChÆ¡i CÃ³ Chá»u</h1>
              <div class="Fb61sprjhh75aOITDnsJ">
                <span class="Type__TypeElement-goli3j-0 hWmToD">
                  <a draggable="false" data-testid="creator-link" href="/artist/2Bwp23pD4UVsSkchHDZw4F">Karik,</a>
                </span>
                <span class="n4hTP7ZeAOT_UQEkRUR7"> </span>
                <span class="Type__TypeElement-goli3j-0 hWmToD">
                  <a draggable="false" data-testid="creator-link" href="/artist/5GBXwBVQufRCmwI1bNRIUo">Only C,</a>
                </span>
                <span class="Type__TypeElement-goli3j-0 cPwEdQ RANLXG3qKB61Bh33I0r2"
                  aria-expanded="false">2022,</span><span
                  class="Type__TypeElement-goli3j-0 cPwEdQ RANLXG3qKB61Bh33I0r2">
                  1 bÃ i hÃ¡t,
                  <span class="UyzJidwrGk3awngSGIwv">3 phÃºt 43 giÃ¢y</span></span>
              </div>
            </div>
          </div>
          <div class="option-buttons">
            <button class="play-btn">
              <svg role="img" height="28" width="28" viewBox="0 0 24 24" class="Svg-ytk21e-0 jAKAlG">
                <path
                  d="M7.05 3.606l13.49 7.788a.7.7 0 010 1.212L7.05 20.394A.7.7 0 016 19.788V4.212a.7.7 0 011.05-.606z">
                </path>
              </svg>
            </button>
            <button class="heart-btn">
              <svg role="img" height="32" width="32" viewBox="0 0 24 24" class="Svg-ytk21e-0 jAKAlG">
                <path
                  d="M5.21 1.57a6.757 6.757 0 016.708 1.545.124.124 0 00.165 0 6.741 6.741 0 015.715-1.78l.004.001a6.802 6.802 0 015.571 5.376v.003a6.689 6.689 0 01-1.49 5.655l-7.954 9.48a2.518 2.518 0 01-3.857 0L2.12 12.37A6.683 6.683 0 01.627 6.714 6.757 6.757 0 015.21 1.57zm3.12 1.803a4.757 4.757 0 00-5.74 3.725l-.001.002a4.684 4.684 0 001.049 3.969l.009.01 7.958 9.485a.518.518 0 00.79 0l7.968-9.495a4.688 4.688 0 001.049-3.965 4.803 4.803 0 00-3.931-3.794 4.74 4.74 0 00-4.023 1.256l-.008.008a2.123 2.123 0 01-2.9 0l-.007-.007a4.757 4.757 0 00-2.214-1.194z">
                </path>
              </svg>
            </button>
            <button class="three-btn">
              <svg role="img" height="32" width="32" viewBox="0 0 24 24" class="Svg-ytk21e-0 jAKAlG">
                <path
                  d="M4.5 13.5a1.5 1.5 0 100-3 1.5 1.5 0 000 3zm15 0a1.5 1.5 0 100-3 1.5 1.5 0 000 3zm-7.5 0a1.5 1.5 0 100-3 1.5 1.5 0 000 3z">
                </path>
              </svg>
            </button>
          </div>

          <div class="popular_song">
            <div class="h4">
              <h4>POPULAR SONG</h4>
              <div class="btn_s">
                <i class="bi bi-arrow-left-short" id="pop_song_left"></i>
                <i class="bi bi-arrow-right-short" id="pop_song_right"></i>
              </div>
            </div>
            <div class="pop_song">
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="9"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="10"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="11"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="12"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="13"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="14"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="15"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="16"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="17"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="18"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="19"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="20"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
            </div>
          </div>
        </div>
      </div>

      <div class="master_play">
        <div class="song_detail">
          <div class="wave" id="wave">
            <div class="wave1"></div>
            <div class="wave1"></div>
            <div class="wave1"></div>
          </div>
          <!-- Icon káº¿ bÃªn wave nhÆ°ng khÃ´ng cÃ³ áº£nh ÄÆ°á»£c thay báº±ng border tráº¯ng -->
          <img src="#" alt="" id="poster_master_play" />
          <h5 id="title">
            Vande mataram
            <div class="subtitle">Bankim Chandra</div>
          </h5>
        </div>
        <div class="player">
          <div class="icon">
            <i class="bi Shuffle bi-music-note-beamed">next</i>
            <i class="bi bi-skip-start-fill" id="back"></i>
            <i class="bi bi-play-fill" id="masterPlay"></i>
            <i class="bi bi-skip-end-fill" id="next"></i>
            <i class="bi bi-cloud-arrow-down-fill" id="download_music"></i>
          </div>
          <div class="player-bar">
            <span id="currentStart">0:00</span>
            <div class="bar">
              <input type="range" id="seek" min="0" max="100" />
              <div class="bar2" id="bar2"></div>
              <div class="dot"></div>
            </div>
            <span id="currentEnd">0:30</span>
          </div>
        </div>
        <div class="vol">
          <i class="bi bi-volume-up-fill" id="vol_icon"></i>
          <input type="range" min="0" max="100" id="vol" />
          <div class="vol_bar"></div>
          <div class="dot" id="vol_dot"></div>
        </div>
      </div>
    </header>

    <script src="app.js"></script>
  </body>

  </html>