import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


const initFlatpickr = () => {
  const disabledRangeDate = []
  const calendarForm = document.getElementById('calendar-form')
  if(calendarForm) {
    const bookings = calendarForm.dataset.bookings;
    JSON.parse(bookings).forEach((element) => {
      const obj = {};
      obj.from = element.start_date;
      obj.to = element.end_date;
      disabledRangeDate.push(obj);
      });
      const flatpickrInstance = flatpickr("#start-date", {
        altInput: true,
        inline: true,
        mode: "range",
        minDate: new Date().fp_incr(1),
        showMonths: 2,
        "plugins": [new rangePlugin( { input: "#end-date"})],
        disable: disabledRangeDate
      });
      const button = document.getElementById('cancel-dates-btn')
      button.addEventListener('click', () => {
        flatpickrInstance.clear()
      })
    }
  }

export { initFlatpickr };
