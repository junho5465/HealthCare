
const init2 = {
    monList2: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
    dayList2: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
    today: new Date(),
    monForChange: new Date().getMonth(),
    activeDate: new Date(),
    getFirstDay: (yy, mm) => new Date(yy, mm, 1),
    getLastDay: (yy, mm) => new Date(yy, mm + 1, 0),
    nextMonth: function () {
        let d = new Date();
        d.setDate(1);
        d.setMonth(++this.monForChange);
        this.activeDate = d;
        return d;
    },
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

const $calBody2 = document.querySelector('.cal-body2');
const $btnNext2 = document.querySelector('.btn-cal2.next2');
const $btnPrev2 = document.querySelector('.btn-cal2.prev2');

// /**
//  * @param {number} date
//  * @param {number} dayIn
// */
function loadDate2(date2, dayIn2) {
    document.querySelector('.cal-date2').textContent = date2;
    document.querySelector('.cal-day2').textContent = init2.dayList2[dayIn2];
}

/**
 * @param {date} fullDate
 */
function loadYYMM2(fullDate) {
    let yy = fullDate.getFullYear();
    let mm = fullDate.getMonth();
    let firstDay = init2.getFirstDay(yy, mm);
    let lastDay = init2.getLastDay(yy, mm);
    let markToday;  // for marking today date

    if (mm === init2.today.getMonth() && yy === init2.today.getFullYear()) {
        markToday = init2.today.getDate();
    }

    document.querySelector('.cal-month2').textContent = init2.monList2[mm];
    document.querySelector('.cal-year2').textContent = yy;

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
                let fullDate = yy + '.' + init2.addZero(mm + 1) + '.' + init2.addZero(countDay + 1);
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
    $calBody2.innerHTML = trtd;
}

/**
 * @param {string} val
 */
function createNewList2(val) {
    let id = new Date().getTime() + '';
    let yy = init2.activeDate.getFullYear();
    let mm = init2.activeDate.getMonth() + 1;
    let dd = init2.activeDate.getDate();
    const $target2 = $calBody2.querySelector(`.day[data-date="${dd}"]`);

    let date = yy + '.' + init2.addZero(mm) + '.' + init2.addZero(dd);

    let eventData = {};
    eventData['date'] = date;
    eventData['memo'] = val;
    eventData['complete'] = false;
    eventData['id'] = id;
    init2.event.push(eventData);
    $todoList2.appendChild(createLi(id, val, date));
}

loadYYMM2(init2.today);
loadDate2(init2.today.getDate(), init2.today.getDay());

$btnNext2.addEventListener('click', () => loadYYMM2(init2.nextMonth()));
$btnPrev2.addEventListener('click', () => loadYYMM2(init2.prevMonth()));

$calBody2.addEventListener('click', (e) => {
    if (e.target.classList.contains('day')) {
        if (init2.activeDTag) {
            init2.activeDTag.classList.remove('day-active');
        }
        let day = Number(e.target.textContent);
        loadDate2(day, e.target.cellIndex);
        e.target.classList.add('day-active');
        init2.activeDTag = e.target;
        init2.activeDate.setDate(day);
		//document.food_info.food_in.value=init2.activeDate;
		//console.log(init2.activeDate);
    }
});
