
const init_f = {
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

const $calBody_f = document.querySelector('.cal-body_f');
const $btnNext_f = document.querySelector('.btn-cal_f.next_f');
const $btnPrev_f = document.querySelector('.btn-cal_f.prev_f');

/**
 * @param {number} date
 * @param {number} dayIn
*/
//좌측에 값을 넣기위한 준비 함수  
function loadDate_f(date, dayIn) {
    document.querySelector('.cal-date_f').textContent = date;
    document.querySelector('.cal-day_f').textContent = init_f.dayList[dayIn];
}

/**
 * @param {date} fullDate
 */
function loadYYMM_f(fullDate) {
    let yy = fullDate.getFullYear(); //년도
    let mm = fullDate.getMonth(); //월 
    let firstDay = init_f.getFirstDay(yy, mm);
    let lastDay = init_f.getLastDay(yy, mm);
    let markToday;  // for marking today date

    if (mm === init_f.today.getMonth() && yy === init_f.today.getFullYear()) {
        markToday = init_f.today.getDate(); //오늘 날짜 출력 하기위함이다
    }

    document.querySelector('.cal-month_f').textContent = init_f.monList[mm];
    document.querySelector('.cal-year_f').textContent = yy;

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
                let fullDate = yy + '.' + init_f.addZero(mm + 1) + '.' + init_f.addZero(countDay + 1);
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
    $calBody_f.innerHTML = trtd;
}

/**
 * @param {string} val
 */
function createNewList_f(val) {
    let id = new Date().getTime() + '';
    let yy = init_f.activeDate.getFullYear();
    let mm = init_f.activeDate.getMonth() + 1;
    let dd = init_f.activeDate.getDate();
    const $target = $calBody_f.querySelector(`.day[data-date="${dd}"]`);

    let date = yy + '.' + init_f.addZero(mm) + '.' + init_f.addZero(dd);

    let eventData = {};
    eventData['date'] = date;
    eventData['memo'] = val;
    eventData['complete'] = false;
    eventData['id'] = id;
    init_f.event.push(eventData);
    $todoList.appendChild(createLi(id, val, date));
}

loadYYMM_f(init_f.today);
loadDate_f(init_f.today.getDate(), init_f.today.getDay());

$btnNext_f.addEventListener('click', () => loadYYMM_f(init_f.nextMonth()));
$btnPrev_f.addEventListener('click', () => loadYYMM_f(init_f.prevMonth()));

$calBody_f.addEventListener('click', (e) => {
    if (e.target.classList.contains('day')) {
        if (init_f.activeDTag) {
            init_f.activeDTag.classList.remove('day-active');
        }
        let day = Number(e.target.textContent);
        // loadDate(day, e.target.cellIndex);
        e.target.classList.add('day-active');
        init_f.activeDTag = e.target;
        init_f.activeDate.setDate(day);
		document.FAT.cal_F_in.value=init_f.activeDate;
		console.log(init_f.activeDate);
    }
});
