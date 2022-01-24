
const init_w = {
    monList: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'], //월이름을 가져옴
    dayList: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'], //일 이름을 가져옴
    today: new Date(), // today 로 날 객체 생성 
    monForChange: new Date().getMonth(), // 달만 가져옴
    activeDate: new Date(),
    getFirstDay: (yy, mm) => new Date(yy, mm, 1), //날 포멧 설정 
    getLastDay: (yy, mm) => new Date(yy, mm + 1, 0),
    //다음달 만드는 함수
    nextMonth: function () {
        let d = new Date();
        d.setDate(1); // 다음달 1일로 설정 
        d.setMonth(++this.monForChange); //다음달로 설정
        this.activeDate = d; 
        return d; //다음달 달력을 출력함
    },
    //이전달 만드는 함수 
    prevMonth: function () {
        let d = new Date();
        d.setDate(1);
        d.setMonth(--this.monForChange);
        this.activeDate = d;
        return d;
    },
    addZero: (num) => (num < 10) ? '0' + num : num,
    activeDTag: null,
    getIndex: function (node) {
        let index = 0;
        while (node = node.previousElementSibling) {
            index++;
        }
        return index;
    }
};

const $calBody_w = document.querySelector('.cal-body_w');
const $btnNext_w = document.querySelector('.btn-cal_w.next_w');
const $btnPrev_w = document.querySelector('.btn-cal_w.prev_w');

/**
 * @param {number} date
 * @param {number} dayIn
*/
//좌측에 값을 넣기위한 준비 함수  
function loadDate_w(date, dayIn) {
    document.querySelector('.cal-date_w').textContent = date;
    document.querySelector('.cal-day_w').textContent = init_w.dayList[dayIn];
}

/**
 * @param {date} fullDate
 */
function loadYYMM_w(fullDate) {
    let yy = fullDate.getFullYear(); //년도
    let mm = fullDate.getMonth(); //월 
    let firstDay = init_w.getFirstDay(yy, mm);
    let lastDay = init_w.getLastDay(yy, mm);
    let markToday;  // for marking today date

    if (mm === init_w.today.getMonth() && yy === init_w.today.getFullYear()) {
        markToday = init_w.today.getDate(); //오늘 날짜 출력 하기위함이다
    }

    document.querySelector('.cal-month_w').textContent = init_w.monList[mm];
    document.querySelector('.cal-year_w').textContent = yy;

    let trtd = '';
    let startCount;
    let countDay = 0;
    for (let i = 0; i < 6; i++) {
        trtd += '<tr>';
        for (let j = 0; j < 7; j++) {
            if (i === 0 && !startCount && j === firstDay.getDay()) {
                startCount = 1;
            }
            if (!startCount) {
                trtd += '<td>'
            } else {
                let fullDate = yy + '.' + init_w.addZero(mm + 1) + '.' + init_w.addZero(countDay + 1);
                trtd += '<td class="day';
                trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
                trtd += ` data-date="${countDay + 1}" data-fdate="${fullDate}">`;
            }
            trtd += (startCount) ? ++countDay : '';
            if (countDay === lastDay.getDate()) {
                startCount = 0;
            }
            trtd += '</td>';
        }
        trtd += '</tr>';
    }
    $calBody_w.innerHTML = trtd;
}

/**
 * @param {string} val
 */
function createNewList_w(val) {
    let id = new Date().getTime() + '';
    let yy = init_w.activeDate.getFullYear();
    let mm = init_w.activeDate.getMonth() + 1;
    let dd = init_w.activeDate.getDate();
    const $target = $calBody_w.querySelector(`.day[data-date="${dd}"]`);

    let date = yy + '.' + init_w.addZero(mm) + '.' + init_w.addZero(dd);

    let eventData = {};
    eventData['date'] = date;
    eventData['memo'] = val;
    eventData['complete'] = false;
    eventData['id'] = id;
    init_w.event.push(eventData);
    $todoList.appendChild(createLi(id, val, date));
}

loadYYMM_w(init_w.today);
loadDate_w(init_w.today.getDate(), init_w.today.getDay());

$btnNext_w.addEventListener('click', () => loadYYMM_w(init_w.nextMonth()));
$btnPrev_w.addEventListener('click', () => loadYYMM_w(init_w.prevMonth()));

$calBody_w.addEventListener('click', (e) => {
    if (e.target.classList.contains('day')) {
        if (init_w.activeDTag) {
            init_w.activeDTag.classList.remove('day-active');
        }
        let day = Number(e.target.textContent);
        // loadDate(day, e.target.cellIndex);
        e.target.classList.add('day-active');
        init_w.activeDTag = e.target;
        init_w.activeDate.setDate(day);

		document.weight.cal_W_in.value=init_w.activeDate;
		console.log(init_w.activeDate);
    }
});
