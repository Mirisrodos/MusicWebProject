<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./css/styles.css" />
    <link rel="stylesheet" href="./css/singerpage.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" />
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"
      integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
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
        <c:if test="${!empty sessionScope.userid }">
                     <ul class="menu_song">
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
          </ul>
            </c:if>

            <c:if test="${empty sessionScope.userid }">
              <div style="margin-top: 100px; margin-left: 20px; color:#4c5262;" class="need-to-login">
              You need to 
              <a style="color: #36e2ec ; text-decoration: none;" href="login">Login</a> 
              or 
              <a style="color: #36e2ec ; text-decoration: none; opacity: 0.7" href="registered">Register</a> 
              first
              </div>
            </c:if>
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
          <div class="singer-content">
            <img src="img/22.jpg">
            <div class="info">
              <div>
                <i class="bi bi-check-circle-fill"></i>
                <span>Nghá» sÄ© ÄÆ°á»£c xÃ¡c minh</span>
              </div>
              <h1>HÃ  Anh Tuáº¥n</h1>
              <div>256.687 ngÆ°á»i nghe háº±ng thÃ¡ng</div>
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

            <!-- Check theo dÃµi -->
            <input class="checkfollow--checked" type="checkbox" name="checkfollow" id="checkfollow" hidden>

            <label class="follow follow--check" for="checkfollow">
              <div>Äang theo dÃµi</div>
            </label>
            <label class="follow" for="checkfollow">
              <div>Theo dÃµi</div>
            </label>

            <button class="three-btn">
              <svg role="img" height="32" width="32" viewBox="0 0 24 24" class="Svg-ytk21e-0 jAKAlG">
                <path
                  d="M4.5 13.5a1.5 1.5 0 100-3 1.5 1.5 0 000 3zm15 0a1.5 1.5 0 100-3 1.5 1.5 0 000 3zm-7.5 0a1.5 1.5 0 100-3 1.5 1.5 0 000 3z">
                </path>
              </svg>
            </button>
          </div>

          <div class="music-list">
            <div class="label-list">Phá» biáº¿n</div>
            <table>
              <tr>
                <td class="numbers">1</td>
                <td class="headersong">
                  <img src="img/2.jpg" alt="">
                  <div>
                    <p>ThÃ¡ng Máº¥y Em Nhá» Anh?</p>
                  </div>
                </td>
                <td>7.637.690</td>
                <td class="favorite"><i class="bi bi-heart"></i></td>
                <td>3:32</td>
                <td class="menu"><i class="bi bi-three-dots"></i></td>
              </tr>

              <tr>
                <td class="numbers">2</td>
                <td class="headersong">
                  <img src="img/2.jpg" alt="">
                  <div>
                    <p>ThÃ¡ng TÆ° Lá»i NÃ³i Dá»i Cá»§a Em</p>
                  </div>
                </td>
                <td>7.637.690</td>
                <td class="favorite"><i class="bi bi-heart"></i></td>
                <td>3:32</td>
                <td class="menu"><i class="bi bi-three-dots"></i></td>
              </tr>

              <tr>
                <td class="numbers">3</td>
                <td class="headersong">
                  <img src="img/2.jpg" alt="">
                  <div>
                    <p>NgÆ°á»i TÃ¬nh MÃ¹a ÄÃ´ng</p>
                  </div>
                </td>
                <td>7.637.690</td>
                <td class="favorite"><i class="bi bi-heart"></i></td>
                <td>3:32</td>
                <td class="menu"><i class="bi bi-three-dots"></i></td>
              </tr>
            </table>
          </div>

          <!-- <div class="music-search">
          <h1>HÃ£y tÃ¬m ná»i dung cho danh sÃ¡ch phÃ¡t cá»§a báº¡n!</h1>
          <div class="search">
            <i class="bi bi-search"></i>
            <input type="text" placeholder="TÃ¬m bÃ i hÃ¡t hoáº·c ALBUM" />
          </div>
        </div> -->

          <!-- <div class="rec-pl">
          <h1>Äá» XUáº¤T</h1>
          <P>Dá»±a trÃªn ná»i dung cÃ³ trong danh sÃ¡ch phÃ¡t nÃ y</P>
          <table>
            <tr>
              <td class="headersong">
                <img src="img/3.jpg" alt="">
                <div>
                  <p>On&On</p>
                  <p>Cartoon</p>
                </div>
              </td>
              <td>Animu</td>
              <td>
                <input type="button" value="ThÃªm">
              </td>
            </tr>
            <tr>
              <td class="headersong">
                <img src="img/4.jpg" alt="">
                <div>
                  <p>Mortals</p>
                  <p>Warriyo</p>
                </div>
              </td>
              <td>Darkness</td>
              <td>
                <input type="button" value="ThÃªm">
              </td>
            </tr>

            <tr>
              <td class="headersong">
                <img src="img/6.jpg" alt="">
                <div>
                  <p>Electronic Music</p>
                  <p>Electro</p>
                </div>
              </td>
              <td>Atomic</td>
              <td>
                <input type="button" value="ThÃªm">
              </td>
            </tr>
          </table>
        </div> -->

          <!-- Sá»­ láº¡i tá»« popular song -->
          <div class="album_singer singerpage--album">
            <div class="h4">
              <h4 class="label-list label-album">Album</h4>
              <div class="btn_s">
                <i class="bi bi-arrow-left-short" id="pop_song_left"></i>
                <i class="bi bi-arrow-right-short" id="pop_song_right"></i>
              </div>
            </div>
            <div class="pop_song">
              <li class="songItem albumIteam">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="9"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem albumIteam">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="10"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem albumIteam">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="11"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem albumIteam">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="12"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem albumIteam">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="13"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem albumIteam">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="14"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem albumIteam">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="15"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem albumIteam">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="16"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem albumIteam">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="17"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem albumIteam">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="18"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem albumIteam">
                <div class="img_play">
                  <img src="img/2.jpg" alt="" />
                  <i class="bi playListPlay bi-play-circle-fill" id="19"></i>
                </div>
                <h5>
                  On My Way<br />
                  <div class="subtitle">Alen Walker</div>
                </h5>
              </li>
              <li class="songItem albumIteam">
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