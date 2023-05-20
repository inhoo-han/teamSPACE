/* HashMap 객체 생성 */
var JqMap = function(){
    this.map = new Object();
}
    
JqMap.prototype = {
    /* key, value 값으로 구성된 데이터를 추가 */
    put: function (key, value) {
        this.map[key] = value;
    },
    /* 지정한 key값의 value값 반환 */
    get: function (key) {
        return this.map[key];
    },
    /* 구성된 key 값 존재여부 반환 */
    containsKey: function (key) {
        return key in this.map;
    },
    /* 구성된 value 값 존재여부 반환 */
    containsValue: function (value) {
        for (var prop in this.map) {
            if (this.map[prop] == value) {
                return true;
            }
        }
        return false;
    },
    /* 구성된 데이터 초기화 */
    clear: function () {
        for (var prop in this.map) {
            delete this.map[prop];
        }
    },
    /*  key에 해당하는 데이터 삭제 */
    remove: function (key) {
        delete this.map[key];
    },
    /* 배열로 key 반환 */
    keys: function () {
        var arKey = new Array();
        for (var prop in this.map) {
            arKey.push(prop);
        }
        return arKey;
    },
    /* 배열로 value 반환 */
    values: function () {
        var arVal = new Array();
        for (var prop in this.map) {
            arVal.push(this.map[prop]);
        }
        return arVal;
    },
    /* Map에 구성된 개수 반환 */
    size: function () {
        var count = 0;
        for (var prop in this.map) {
            count++;
        }
        return count;
    }
}

var clicked = new Array();  // 눌렀는지 여부
var found = new Array();	// 찾았는지 true false
var cnt = 10;				// 카드 카운트
var turn = 0;				// turn 차례
var trIdx = 0;
var orderMap = new JqMap();
var scoreArr = new Array();	
var players = new Array();
var orders = new Array();
let setCount = 0;

window.onload = function() {
    document.getElementById("click_count").innerHTML=setCount;

    document.getElementById("btn_start").onclick = function() {
        // if(checkNameNull()) {
            $("#btn_restart").css("visibility", "visible");
            start();
        // }
    }

    document.getElementById("btn_restart").onclick = function() {
        $("#game_over").css("z-index", -1);
        var choice = true;

        if(cnt > 0) {
            choice = confirm("아직 게임이 진행 중입니다.\n처음부터 다시 시작하시겠습니까?");
        }

        if(choice) {
            $("#winner").text("");
            orders = [];
            scoreArr = [];
            for (var i = 0; i < players.length; i++) {
                scoreArr.push(0);
            }
            orderMap.clear();
            start();	
        }
    }
}

// 참가자 이름 비어있는지 체크
// function checkNameNull() {

//     return true;
// }

// 시작
function start() {

    cnt = 10;
    turn = 0;

    // 2차원 배열 생성
    var board = makeGameBoard(4,5);

    // 난수 발생시켜 넣을 배열값
    var arrRandom = makeRandomNum(4*5);

    // 2차원 배열에 값 넣기 
    board = insertValue(board, arrRandom);

    // 카드 생성 
    makeCard(board);

    // 카운트 다운
    countDown();
    
    //카드 mouseover시 배경 skyblue
    $(".card").mouseover(function(e) {
        if(e.target.firstChild.value != clicked[0]) e.target.style.backgroundColor = "skyblue";
    });

    //카드에서 mouseout했을 때 배경색 없어짐
    $(".card").mouseout(function(e) {
        if(clicked.length == 0) e.target.style.backgroundColor = "";	
        else {
            if(e.target.firstChild.value != clicked[0]) e.target.style.backgroundColor = "";
        }
    });	

    //카드 클릭
    $(".card").click(function(e) {	
        var number = $(this).children().eq(0).val();
        var choice;

        if(number != "") {
            if(clicked.length == 0) {
                clicked.push(number);
                e.target.style.backgroundImage = clickCard(number);
            } else {
                var chk = false;
                for (var i = 0; i < clicked.length; i++) {
                    if(parseInt(clicked[i]) == parseInt(number)) {
                        chk = true;
                        break;
                    }
                //카드 두 개 선택하면 count 올라감
                setCount++;
                document.getElementById("click_count").innerHTML=setCount;
                }
                if(!chk) {	

                    e.target.style.backgroundImage = clickCard(number);
                    clicked.push(number);

                    setInterval(function(){
                        if(clicked.length == 2) {
                            if(parseInt(clicked[0]) % 10 == parseInt(clicked[1]) % 10) {
                                var score = $("#p" + parseInt(orders[turn]+1)).val();
                                $("#p" + parseInt(orders[turn]+1)).val(++score);
                                scoreArr[orders[turn]]++;
                                cnt--;


                                $("#" + clicked[0]).addClass("found");
                                $("#" + clicked[1]).addClass("found");

                                document.getElementById(clicked[0]).firstChild.value = "";
                                document.getElementById(clicked[1]).firstChild.value = "";

                                $(".found").removeClass("card");
                                $(".found").css("background", "");
                                $(".found").css("border", "");
                                $(".found").hover(function() {
                                    $(this).css("backgroundColor", "");
                                });

                            } else {
                                alert("두 카드가 다릅니다");

                                // setTimeout(() => {
                                    $("#" + clicked[0]).css("background", "");
                                    $("#" + clicked[1]).css("background", "");
                                // }, 500);
                            }	

                            while(clicked.length > 0) clicked.pop();
                            $(".card").css("background", "");
                        }

                        // 게임 종료
                        if(cnt == 0) {
                            var max = 0;
                            var maxArr = new Array();
                            $("#game_over").css("z-index", 20);
                            for (var i = 0; i < scoreArr.length; i++) {
                                max = Math.max(scoreArr[i], max);
                            }
                            for (var i = 0; i < scoreArr.length; i++) {
                                if(scoreArr[i] == max) {
                                    maxArr.push(i);
                                }
                            }
                        }
                    },650);
                            
                    $("#game_score_count").text(setCount);
                    // document.getElementById("game_score_count").innerHTML=setCount;
                    console.log("횟수 : " + setCount);
                }
            }
        }
    });
}

// 2차원 배열 생성
function makeGameBoard(h, w) {
    var gameBoard = new Array(h);

    for (var i = 0; i < gameBoard.length; i++) {
        gameBoard[i] = new Array(w);
    }

    return gameBoard;
}

// 난수 발생시켜 넣을 배열값
function makeRandomNum(paramNum) {
    var arr = new Array();
    while(true) {
        var num = Math.floor(Math.random() * paramNum) + 1;

        var chk = false;
        for (var i = 0; i < arr.length; i++) { 
            if(num == arr[i]) {
                chk = true;
                break;
            }
        }

        if(!chk) arr.push(num);

        if(arr.length == paramNum) break;
    }

    return arr;
}

// 보드판 값 넣기
function insertValue(gameBoard, randomArr) {
    var num = 0;
    for (var i = 0; i < gameBoard.length; i++) {
        for (var j = 0; j < gameBoard[i].length; j++) {
            gameBoard[i][j] = randomArr[num++];
        }
    }

    return gameBoard;
}

// 카드 생성
function makeCard(gameBoard) {
    var board = document.getElementById("div_gameBoard");
    board.innerHTML = "";

    var boardDiv = "";
    for (var i = 0; i < gameBoard.length; i++) {
        var rowDiv = "<div class=row>\n";
        rowDiv += "<div class=rowNum><br/><br/><br/>" + parseInt(i+1) + "</div>";
        for (var j = 0; j < gameBoard[i].length; j++) {
            var num = gameBoard[i][j] % 10 == 0 ? 10 : gameBoard[i][j];
            var cardDiv = "<div name=card class=card id=" + gameBoard[i][j] + " ";
            cardDiv += 'style="background-image:' + clickCard(num) + '; background-repeat: no-repeat; background-size: cover;" >';
            cardDiv += "<input type=hidden value=" + gameBoard[i][j] + " />";
            //cardDiv += gameBoard[i][j];
            cardDiv += "</div>\n";
            rowDiv += cardDiv;
        }

        rowDiv += "</div>\n";
        boardDiv += rowDiv;
    }

    board.innerHTML = boardDiv;
}

// 카드 클릭 시 이미지 로드
function clickCard(num) {
    num %= 10;
    var image="";

    switch(num) {
        case 0 : image = "url(images/cards/card0.png)"; break;
        case 1 : image = "url(images/cards/card1.png)"; break;
        case 2 : image = "url(images/cards/card2.png)"; break;
        case 3 : image = "url(images/cards/card3.png)"; break;
        case 4 : image = "url(images/cards/card4.png)"; break;
        case 5 : image = "url(images/cards/card5.png)"; break;
        case 6 : image = "url(images/cards/card6.png)"; break;
        case 7 : image = "url(images/cards/card7.png)"; break;
        case 8 : image = "url(images/cards/card8.png)"; break;
        case 9 : image = "url(images/cards/card9.png)"; break;

    }

    return image;
}

// 카운트 다운 프로그래스 바
function countDown() {

    var downloadTimer = setInterval(function(){
        // if(timeleft <= 0){
        clearInterval(downloadTimer);
        $(".card").css("background", "white");
        // }
    }, 2000);
}