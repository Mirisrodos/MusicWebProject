<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./css/styles.css" />
        <link rel="stylesheet" href="./css/playlist.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" />
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
                    <h4 class="active menu_link">
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
                                <a class="register logged" href="#">${sessionScope.username}</a> |
                                <a class="login" href="logout">Logout</a>
                            </span>
                        </div>
                    </c:if>

                    <c:if test="${empty sessionScope.userid }">
                        <div class="user">
                            <span>
                                <a class="login" href="login">Login</a> |
                                <a class="register" href="registered">Register</a>
                            </span>
                        </div>
                    </c:if>

                </nav>
                <div class="main-scroll">
                    <div class="playlist-content">
                        <img src="img/3.jpg">
                        <div class="info">
                            <p>PLAYLIST</p>
                            <h1>DANH SÁCH PHÁT CỦA TÔI #1</h1>

                            <div class="Fb61sprjhh75aOITDnsJ">
                                <span class="Type__TypeElement-goli3j-0 hWmToD">
                                    <a draggable="false" data-testid="creator-link" href="">Thọ Tỷ</a>
                                </span>
                                <span class="n4hTP7ZeAOT_UQEkRUR7">-</span>
                                <span class="Type__TypeElement-goli3j-0 cPwEdQ RANLXG3qKB61Bh33I0r2">
                                    2 bài hát,
                                    <span class="UyzJidwrGk3awngSGIwv">7 phút 12 giây</span>
                                </span>
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
                        <button class="three-btn">
                            <svg role="img" height="32" width="32" viewBox="0 0 24 24" class="Svg-ytk21e-0 jAKAlG">
                                <path
                                    d="M4.5 13.5a1.5 1.5 0 100-3 1.5 1.5 0 000 3zm15 0a1.5 1.5 0 100-3 1.5 1.5 0 000 3zm-7.5 0a1.5 1.5 0 100-3 1.5 1.5 0 000 3z">
                                </path>
                            </svg>
                        </button>
                    </div>

                    <div class="music-list">
                        <table>
                            <tr>
                                <th>#</th>
                                <th>TIÊU ĐỀ</th>
                                <th>ALBUM</th>
                                <th>NGÀY THÊM</th>
                                <th><i class="bi bi-clock"></i></th>
                            </tr>
                            <tr>
                                <td class="numbers">1</td>
                                <td class="headersong">
                                    <img src="img/2.jpg" alt="">
                                    <div>
                                        <p>Faded</p>
                                        <a href="singerpage">Alan Walker</a>
                                    </div>
                                </td>
                                <td><a href="">Different World</a></td>
                                <td>10/10/2022</td>
                                <td>3:32</td>
                            </tr>
                            <tr>
                                <td class="numbers">2</td>
                                <td class="headersong">
                                    <img src="img/1.jpg" alt="">
                                    <div>
                                        <p>On My Way</p>
                                        <a href="singerpage">Alan Walker</a>
                                    </div>
                                </td>
                                <td><a href="">Different World</a></td>
                                <td>10/10/2022</td>
                                <td>3:40</td>
                            </tr>
                        </table>
                    </div>

                    <div class="music-search">
                        <h1>Hãy tìm nội dung cho danh sách phát của bạn!</h1>
                        <div class="search">
                            <i class="bi bi-search"></i>
                            <input type="text" placeholder="Tìm bài hát hoặc ALBUM" />
                        </div>
                    </div>

                    <div class="rec-pl">
                        <h1>ĐỀ XUẤT</h1>
                        <P class="rec-text">Dựa trên nội dung có trong danh sách phát này</P>
                        <table>
                            <tr>
                                <td class="headersong">
                                    <img src="img/3.jpg" alt="">
                                    <div>
                                        <p>On&On</p>
                                        <a href="singerpage">Cartoon</a>
                                    </div>
                                </td>
                                <td style="width: 41%;"><a href="">Animu</a></td>
                                <td style="width: 16%;">
                                    <input type="button" value="Thêm">
                                </td>
                            </tr>

                            <tr>
                                <td class="headersong">
                                    <img src="img/4.jpg" alt="">
                                    <div>
                                        <p>Mortals</p>
                                        <a href="singerpage">Warriyo</a>
                                    </div>
                                </td>
                                <td><a href="">Darkness</a></td>
                                <td>
                                    <input type="button" value="Thêm">
                                </td>
                            </tr>

                            <tr>
                                <td class="headersong">
                                    <img src="img/6.jpg" alt="">
                                    <div>
                                        <p>Electronic Music</p>
                                        <a href="singerpage">Electro</a>
                                    </div>
                                </td>
                                <td><a href="">Atomic</a></td>
                                <td>
                                    <input type="button" value="Thêm">
                                </td>
                            </tr>
                        </table>
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
                    <!-- Icon kế bên wave nhưng không có ảnh được thay bằng border trắng -->
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