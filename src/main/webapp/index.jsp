<%@include file="jstlImport.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link rel="stylesheet" href="./css/styles.css" />
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" />
      <script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
      <title>Music Website</title>
    </head>

    <body>
      <header>
        <div class="menu_side">
          <h1>
            <a href="index">My <span>Music</span></a>
          </h1>

          <div class="playlist">
            <h4 class="active menu_link">
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
            <c:forEach items="${userListSong}" var="song" varStatus="loop"> 
            <li class="songItem">
              <a href="songdetail?songid=${song.getSongId()}">
                <span>${loop.index }</span>
                <img src="img/songImg/${song.getSongId()}.jpg" alt="" />
                <h5>
                  ${song.getName()} <br />
                  <div class="subtitle">${song.getSingers().getName() }</div>
                </h5>
              </a>
              <i class="bi playListPlay bi-play-circle-fill" id="${song.getSongId()}"></i>
            </li>
            </c:forEach>
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
          <!--  -->
          <nav>

            <form method="post" class="search" action="search">
              <i class="bi bi-search"></i>
              <input name="searchword" type="text" placeholder="Search Music..." />

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

          <!--  -->
          <div class="main-scroll">
            <div class="content">
              <h1>Alan Walker-Faded</h1>
              <p>
                You were the shadow to my light. Did you feel us? Another star,
                you fade away... <br />
                Afraid our aim is out of sight, wanna see us?
              </p>
              <div class="buttons">
                <button>PLAY</button>
                <button>FOLLOW</button>
              </div>
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
              	<c:forEach items="${listSong}" var="song"> 
				 <li class="songItem">
			
                  <div class="img_play">
                    <img src="img/2.jpg" alt="" />
                    <i class="bi playListPlay bi-play-circle-fill" id="9"></i>
                  </div>
                  <a style="text-decoration:none; color:white" href="songdetail?songid=${song.getSongId()}">
                  <h5 style="overflow:unset">
                    On My Way<br />
                    <div class="subtitle">Alen Walker</div>
                  </h5>
                  </a>
                </li>
				</c:forEach>
               </div>
            </div>
            <div class="popular_artists">
              <div class="h4">
                <h4>SINGER</h4>
                <div class="btn_s">
                  <i class="bi bi-arrow-left-short" id="pop_art_left"></i>
                  <i class="bi bi-arrow-right-short" id="pop_art_right"></i>
                </div>
              </div>
              <ul style="height:250px" class="item">
	              <c:forEach items="${listSinger}" var="singer"> 
					 <li>
	                  <a style="text-decoration:none" href="singerdetail?singerid=${singer.getSingerId()}">
	                    <img src="img/singerImg/${singer.getSingerId()}.jpg" alt="" />
	                    <h5 style="padding: 5px 0px 0px 5px;line-height: 15px;font-size: 14px;width: 100px;margin-top: 8px; color: white">${singer.getName()}</h5>
	                  </a>
                	</li>
				  </c:forEach>
                
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

      <script type="text/javascript">
            const songListJSON = JSON.parse(`${listSongResultJSON}`);
           	
           	$(document).ready(function () {
           	  let songs = []
           	  const music = new Audio("audio/1.mp3");
           	  //music.play();
				
           	  

           	  let masterPlay = document.getElementById("masterPlay");
           	  let wave = document.getElementById("wave");

           	  let index = 0;
           	  let poster_master_play = document.getElementById("poster_master_play");
           	  let title = document.getElementById("title");

           	  let currentStart = document.getElementById("currentStart");
           	  let currentEnd = document.getElementById("currentEnd");
           	  let bar2 = document.getElementById("bar2");
           	  let seek = document.getElementById("seek");
           	  let dot = document.querySelector(".dot");

           	  let vol_icon = document.getElementById("vol_icon");
           	  let vol = document.getElementById("vol");
           	  let vol_bar = document.getElementsByClassName("vol_bar")[0];
           	  let vol_dot = document.getElementById("vol_dot");

           	  let back = document.getElementById("back");
           	  let next = document.getElementById("next");

           	  let pop_song_left = document.getElementById("pop_song_left");
           	  let pop_song_right = document.getElementById("pop_song_right");
           	  let pop_song = document.getElementsByClassName("pop_song")[0];

           	  let pop_art_left = document.getElementById("pop_art_left");
           	  let pop_art_right = document.getElementById("pop_art_right");
           	  let item = document.getElementsByClassName("item")[0];

           	  let menuLinkList = $(".menu_link")
           	  
           	  let activeLink = menuLinkList[0]

           	  let menuSong = $(".menu_song")
           	  // Function to use
           	  const makeAllPlay = () => {
           	    Array.from(document.getElementsByClassName("playListPlay")).forEach(
           	      (el) => {
           	        el.classList.remove("bi-pause-circle-fill");
           	        el.classList.add("bi-play-circle-fill");
           	      }
           	    );
           	  };

           	  const makeAllBackground = () => {
           	    Array.from(document.getElementsByClassName("songItem")).forEach((el) => {
           	      el.style.background = "rgb(105, 105, 105, .0)";
           	    });
           	  };
           	  //-----------------------------------------------------------------

           	  // Function to call
           	  const generateSongList = () => {
                songListJSON.forEach((song) => {
                  const songInfo = {
                    id: song.song_id,
                    songName: song.name + "<br>",
                    poster:  "img/songImg/" + song.song_id +".jpg",
           	      }
                  songs.push(songInfo)
                })
           	  }
      
           	  
           	  const renderSongInfo = () => {
           	    Array.from(document.querySelectorAll(".pop_song .songItem")).forEach((e, i) => {
           	      e.getElementsByTagName("img")[0].src = songs[i].poster;
           	      e.getElementsByTagName("h5")[0].innerHTML = songs[i].songName;
                  e.querySelector(".playListPlay").id = songs[i].id;
           	    });
           	  };

           	  const masterPlayEvent = () => {
      
           	    masterPlay.addEventListener("click", () => {
           	      if (music.paused || music.currentTime <= 0) {
                   
           	        music.play();
           	        wave.classList.add("active1");
           	        masterPlay.classList.remove("bi-play-fill");
           	        masterPlay.classList.add("bi-pause-fill");
           	      } else {
           	        music.pause();
           	        wave.classList.remove("active1");
           	        masterPlay.classList.add("bi-play-fill");
           	        masterPlay.classList.remove("bi-pause-fill");
           	      }
           	    });
           	  };

           	  const songPlayButtonChange = () => {
           	    Array.from(document.getElementsByClassName("playListPlay")).forEach((e) => {
           	      e.addEventListener("click", (el) => {
           	        index = el.target.id;
           	        console.log(el.target);
           	        music.src = "audio/" + index +".mp3";
           	        music.play();
           	        masterPlay.classList.remove("bi-play-fill");
           	        masterPlay.classList.add("bi-pause-fill");

           	        let songTitles = songs.filter((els) => {
           	          return els.id == index;
           	        });

           	        songTitles.forEach((elss) => {
           	          let { songName, poster } = elss;
           	          title.innerHTML = songName;
           	          poster_master_play.src = poster;
           	        });

           	        makeAllBackground();
           	        Array.from(document.getElementsByClassName("songItem"))[
           	          index - 1
           	        ].style.background = "rgb(105, 105, 105, .1)";
           	        makeAllPlay();
           	        el.target.classList.remove("bi-play-circle-fill");
           	        el.target.classList.add("bi-pause-circle-fill");
           	        wave.classList.add("active1");
           	      });
           	    });
           	  };

           	  const addEventForPlayBar = () => {
           	    music.addEventListener("timeupdate", () => {
           	      let music_curr = music.currentTime;
           	      let music_dur = music.duration;

           	      let min1 = Math.floor(music_dur / 60);
           	      let sec1 = Math.floor(music_dur % 60);

           	      if (sec1 < 10) {
           	        sec1 = "0" + sec1;
           	      }

           	      currentEnd.innerText = min1+ ":" + sec1;

           	      let min2 = Math.floor(music_curr / 60);
           	      let sec2 = Math.floor(music_curr % 60);

           	      if (sec2 < 10) {
           	        sec2 = "0" + sec2;
           	      }

           	      currentStart.innerText = min2+ ":" + sec2;

           	      let progressBar = parseInt((music_curr / music_dur) * 100);
           	      seek.value = progressBar;
           	      let seekbar = seek.value;
           	      bar2.style.width = seekbar + `%`;
           	      dot.style.left = seekbar + `%`;
           	    });

           	    seek.addEventListener("change", () => {
           	      music.currentTime = (seek.value * music.duration) / 100;
           	    });
           	  };

           	  const addEventForVolume = () => {
           	    vol.addEventListener("change", () => {
           	      if (vol.value == 0) {
           	        vol_icon.classList.remove("bi-volume-up-fill");
           	        vol_icon.classList.remove("bi-volume-down-fill");
           	        vol_icon.classList.add("bi-volume-off-fill");
           	      }
           	      if (vol.value > 0) {
           	        vol_icon.classList.remove("bi-volume-up-fill");
           	        vol_icon.classList.add("bi-volume-down-fill");
           	        vol_icon.classList.remove("bi-volume-off-fill");
           	      }
           	      if (vol.value > 50) {
           	        vol_icon.classList.add("bi-volume-up-fill");
           	        vol_icon.classList.remove("bi-volume-down-fill");
           	        vol_icon.classList.remove("bi-volume-off-fill");
           	      }
           	      let vol_a = vol.value;
           	      vol_bar.style.width = vol_a + `%`;
           	      vol_dot.style.left = vol_a + `%`;
           	      music.volume = vol_a / 100;
           	    });
           	  };

           	  const backAndNextButtonEvent = () => {
           	    back.addEventListener("click", () => {
           	      index -= 1;
           	      if (index < 1) {
           	        index = Array.from(document.getElementsByClassName("songItem")).length;
           	      }
           	      music.src = `audio/` + index + ".mp3";
           	      music.play();
           	      masterPlay.classList.remove("bi-play-fill");
           	      masterPlay.classList.add("bi-pause-fill");

           	      let songTitles = songs.filter((els) => {
           	        return els.id == index;
           	      });

           	      songTitles.forEach((elss) => {
           	        let { songName, poster } = elss;
           	        title.innerHTML = songName;
           	        poster_master_play.src = poster;
           	      });

           	      makeAllBackground();
           	      Array.from(document.getElementsByClassName("songItem"))[
           	        index - 1
           	      ].style.background = "rgb(105, 105, 105, .1)";
           	      makeAllPlay();
           	      el.target.classList.remove("bi-play-circle-fill");
           	      el.target.classList.add("bi-pause-circle-fill");
           	      wave.classList.add("active1");
           	    });

           	    next.addEventListener("click", () => {
           	      index++;
           	      if (
           	        index > Array.from(document.getElementsByClassName("songItem")).length
           	      ) {
           	        index = 1;
           	      }
           	      music.src = `audio/` + index + ".mp3"
           	      music.play();
           	      masterPlay.classList.remove("bi-play-fill");
           	      masterPlay.classList.add("bi-pause-fill");

           	      let songTitles = songs.filter((els) => {
           	        return els.id == index;
           	      });

           	      songTitles.forEach((elss) => {
           	        let { songName, poster } = elss;
           	        title.innerHTML = songName;
           	        poster_master_play.src = poster;
           	      });

           	      makeAllBackground();
           	      Array.from(document.getElementsByClassName("songItem"))[
           	        index - 1
           	      ].style.background = "rgb(105, 105, 105, .1)";
           	      makeAllPlay();
           	      el.target.classList.remove("bi-play-circle-fill");
           	      el.target.classList.add("bi-pause-circle-fill");
           	      wave.classList.add("active1");
           	    });
           	  };

           	  const songCarouselEvent = () => {
           	    pop_song_right.addEventListener("click", () => {
           	      pop_song.scrollLeft += 330;
           	    });
           	    pop_song_left.addEventListener("click", () => {
           	      pop_song.scrollLeft += -330;
           	    });
           	  };

           	  const artCarouselEvent = () => {
           	    pop_art_right.addEventListener("click", () => {
           	      item.scrollLeft += 330;
           	    });
           	    pop_art_left.addEventListener("click", () => {
           	      item.scrollLeft += -330;
           	    });
           	  };

           	  const menuLinkListEvent = () => {
           	    menuLinkList.each((index,item) => {
           	        item.addEventListener("click", () => {
           	            if(item !== activeLink){
           	                item.classList.add("active")
           	                activeLink.classList.remove("active")
           	                activeLink = item
           	                
           	            }
           	        })
           	      })
           	    
           	  }
           	 
           	  


           	  //-----------------------------------------------------------

           	  const main = () => {
                generateSongList();
           	    renderSongInfo();
           	    masterPlayEvent();
           	    songPlayButtonChange();
           	    addEventForPlayBar();
           	    addEventForVolume();
           	    backAndNextButtonEvent();
           	    menuLinkListEvent();
           	    songCarouselEvent();
           	    artCarouselEvent();
             
           	  };

           	  main();
           	});

    </script>
    </body>

  
</html>
