//https://drcode-devblog.tistory.com/m/215
//HashMap 객체 생성
let JqMap = function() {
    this.map = new Object();
}

JqMap.prototype = {
    //key와 value로 구성된 데이터를 추가
    put: function(key, value) {
        this.map[key] = value;
    },
    //지정한 key의 value 반환
    get: function(key) {
        return this.map[key]
    },
    //구성된 key 존재 여부 반환
    containsKey: function(key) {
        return key in this.map;
    },
    //구성된 value 값 존재여부 반환
    containsValue: function(value) {
        for(let prop in this.map) {
            if(this.map[prop] == value) {
                return true;
            }
        }
    },
    //구성된 데이터 초기화
    clear: function() {
        for (let prop in this.map) {
            delete this.map[prop]
        }
    },
    //key에 해당하는 데이터 삭제
    remove: function(key) {
        delete this.map[key];
    },
    //배열로 key 반환
    keys: function() {
        let arKey = new Array();
        for(let prop in this.map) {
            arKey.push(map);
        }
        return arKey;
    },
    //배열로 value 반환
    values: function() {
        let arVal = new Array();
        for(let prop in this.map) {
            arVal.push(this.map[prop]);
        }
        return arVal;
    },
    //Map에 구성된 개수 반환
    size: function() {
        let count = 0;
        for(let prop in this.map) {
            count++;
        }
        return count;
    }
}

/* 변수 선언 존 */
//1. 눌렀는지 여부
let clicked = new Array();
//2. 찾았는지 true, false
let found = new Array();
//3. 카드 카운트
let cnt = 10;
//turn 차례는 필요없어서 선언X
//추가된 참가자 지우는 것도 필요없어서 선언X
//4. 위에서 선언한 JqMap
let orderMap = new JqMap();
//5. 점수 배열. 참가자들의 인덱스에 따라 점수가 올라감 (나는 배열 할 필요 없는데..)
let scoreArr = new Array();
//참가자들을 일괄적으로 저장할 배열 필요없음
//참가자들의 순서도 필요 없음

/* 화면 로드시 처음 실행 */
window.onload = function() {
    //시작버튼 클릭시
    document.getElementById("btn_start").onclick = function() {
        //재시작 버튼 보이게 css변경
        $("btn_restart").css("visibility", "visible");
        start();
    }
    //재시작 버튼 클릭 시
    document.getElementById("btn_restart").onclick = function() {
        let choice = true;

        //카드를 다 찾은 것이 아닐 때
        if(cnt > 0) {
            choice = confirm("아직 게임이 진행중입니다. \n 처음부터 다시 시작하시겠습니까?");
        }
        //승자 띄워진 내용 지우기
        if(choice) {
            scoreArr = [];
            for(let i = 0; i < players.length; i++) {
                scoreArr.push(0);
            }
            orderMap.clear();
            start();
        }
    }
}
//참가자 이름 비어있는지 체크
function checkNameNull() {
    let tbl = $("#tbl_addPlayer tr").length;
    for(let i=0; i<tbl; i++) {
        let ibx = $("input[name=name]").eq(i).val();
        //이름 공백 검사
        if(ibx == "") {
            ibx.text("player01");
            return false;
        }
        players.push(ibx);
        scoreArr.push(0);
    }
    return true;
}

/* 게임판 영역 */
//2차원 배열 생성
function makeGameBoard(h, w) {
    let gameBoard = new Array(h);
    for(let i=0; i<gameBoard.length; i++) {
        gameBoard[i] = new Array();
    }
    return gameBoard;
}
//랜덤 값을 발생시켜 게임판 카드에 숫자를 부여
function makeRandomNum(paramNum) {
    let arr = new Array();
    while(true) {
        let num = Math.floor(Math.random() * paramNum) + 1;
        let chk = false;
        for(let i=0; i<arr.length; i++) {
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
//논리적인 카드 보드판에 값을 넣는 메서드
function insertValue(gameBoard, randomArr) {
    let num = 0;
    for(let i=0; i<gameBoard.length; i++) {
        for(let j=0; j<gameBoard[i]; j++) {
            gameBoard[i][j] = randomArr[num++];
        }
    }
    return gameBoard;
}
//물리적인 카드를 생성하는 메서드
function makeCard(gameBoard) {
    let board = document.getElementById("div_gameBoard");
    board.innerHTML = "";
    
    let boardDiv = "";
    for(let i=0; i<gameBoard.length; i++) {
        let rowDiv = "<div class=row>\n";
        rowDiv += "<div class=rowNum><br><br><br>" + parseInt(i+1) + "</div>";
        for(let j=0; j<gameBoard[i].length; j++){
            let num = gameBoard[i][j] % 10 == 0 ? 10 : gameBoard[i][j];
            let cardDiv = "<div name=card class=card id=" + gameBoard[i][j] + " ";
            cardDiv += "style = background-color:" + clickCard(num) + ">";
            cardDiv += "<input type=hidden value=" + gameBoard[i][j] + "/>";
            cardDiv += "</div>\n";
            rowDiv += cardDiv;
        }
        rowDiv += "</div>\n";
        boardDiv += rowDiv;
    }
    board.innerHTML = boardDiv;
}

//카드 클릭시 이미지 로드
//일단 색깔로 했는데 추후 이미지로 변경
function clickCard(num) {
    num %= 10;
    let color="";

    switch(num) {
        case 0: color="black"; break;
        case 1: color="red"; break;
        case 2: color="blue"; break;
        case 3: color="brown"; break;
        case 4: color="green"; break;
        case 5: color="slateblue"; break;
        case 6: color="lightpink"; break;
        case 7: color="lightyellow"; break;
        case 8: color="oragne"; break;
        case 9: color="lightred"; break;
    }
    return color;
}

// 카운트 다운 프로그래스 바
function countDown() {

    //화면의 높이와 너비를 구한다.
    var maskHeight = $(document).height();  
    var maskWidth = $(window).width();  

    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    $('#mask').css({'width':maskWidth,'height':maskHeight});  

    //애니메이션 효과
    $('#mask').css("display", "block");      

    var timeleft = 10;
    var downloadTimer = setInterval(function(){
        if(timeleft <= 0){
        clearInterval(downloadTimer);
        $(".card").css("background", "white");
        $("#mask").css("display", "none");
        }
        document.getElementById("progressBar").value = 10 - timeleft;
        timeleft -= 1;
    }, 1000);
}

//게임 시작
function start() {
    cnt = 10;
    turn = 0;
    // $("#turn").text(orderMap.get(orders[turn]));
    // $("#arrow" + parseInt(orders[turn]+1)).css("visibility","visible");
    $("input[name=player]").val(0);

    //2차원 배열 생성
    let board = makeGameBoard(4,5);

    //난수 발생시켜 넣을 배열값
    let arrRandom = makeRandomNum(4*5);

    //2차원 배열에 값 넣기
    board = insertValue(board, arrRandom);

    //카드 생성
    makeCard(board);

    //카운트 다운
    countDown();

    $(".card").mouseover(function(e) {
        if(e.target.firstChild.value != clicked[0]) e.target.style.background = "skyblue";
    });

    $(".card").mouseout(function(e) {
        if(e.clicked.length == 0) e.target.style.background = "";
        else{
            if(e.target.firstChild.value != clicked[0]) e.target.style.background = "";
        }
    });

    $(".card").click(function() {
        let number = $(this).children().eq(0).val();
        let choice;

        if(number != "") {
            if(clicked.length == 0) {
                clicked.push(number);
                e.target.style.backgroundColor = clickCard(number);
            }else {
                let chk = false;
                for(let i=0; i<clicked.length; i++) {
                    if(parseInt(clicked[i]) == parseInt(number)) {
                        chk = true;
                        break;
                    }
                }
                if(!chk) {
                    e.target.style.backgroundColor = clickCard(number);
                    clicked.push(number);
                    setInterval(function() {
                        if(clicked.length == 2) {
                            if(parseInt(clicked[0]) % 10 == parseInt(clicked[1]) % 10){
                                // let score = $("#p" + parseInt(orders[turn]+1)).val();
                                // $("#p" + parseInt(orders[turn]+1)).val(++score);
                                // scoreArr[orders[turn]]++;
                                // cnt--;

                                $("#" + clicked[0]).addClass("found");
                                $("#" + clicked[1]).addClass("found");

                                document.getElementById(clicked[0]).firstChild.value = "";
                                document.getElementById(clicked[1]).firstChild.value = "";

                                $(".found").removeClass("card");
                                $(".found").css("background", "");
                                $(".found").css("border", "");
                            }else {
                                $("#" + clicked[0]).css("background", "");
                                $("#" + clicked[1]).css("background", "");
                            }
                            while(clicked.length > 0) clicked.pop();
                            $(".card").css("background", "");
                        }
                        if(cnt == 0) {
									

                            var max = 0;
                            var maxArr = new Array();

                            for (var i = 0; i < scoreArr.length; i++) {
                                max = Math.max(scoreArr[i], max);
                            }

                            for (var i = 0; i < scoreArr.length; i++) {
                                if(scoreArr[i] == max) {
                                    maxArr.push(i);
                                }
                            }

                            if(maxArr.length == 1) {
                                $("#winner").text(orderMap.get(maxArr[0]) +" 가(이) 이겼습니다");
                            } else {
                                var msg = "";
                                for (var i = 0; i < maxArr.length; i++) {
                                    msg += orderMap.get(maxArr[i]);
                                    if(i < maxArr.length-1) msg += " 과(와) ";
                                    else msg += " 가(이) 동점으로 무승부입니다.";
                                }

                                $("#winner").text(msg);
                            }
                        }
                    }, 600);
                }
            }
        }
    });
}