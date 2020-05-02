function wrapArray(index, startDay) {
  //Wrap back to beginning of array
  if (index < startDay) index = (7 - startDay) + index;
  else if (index > startDay) index = (index - startDay);
  else index = 0;

  return index;
}

function getTeenth(today, index, weekdays) {
  today.setDate(13);
  let startDay = today.getDay();

  index = wrapArray(index, startDay);

  today.setDate(today.getDate() + index);
  return today;
}

function getNthDay(today, index, number) {
  index = wrapArray(index, today.getDay());
  return today.setDate((number-1) * 7 + index + today.getDate());
}

function getLastDay(today, index) {
  today.setMonth(today.getMonth() + 1);
  today.setDate(0);
  let startDay = today.getDay();

  if (index < startDay) return today.setDate(today.getDate() - (startDay - index));
  if (index > startDay) return today.setDate(today.getDate() - ((7-index) + startDay));
  else return today;

}

export const meetupDay = (year, month, day, descriptor) =>  {
  let weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
  let today = new Date(year, month);
  let index = weekdays.indexOf(day);

  if (descriptor == "teenth") getTeenth(today, index, weekdays);

  if (descriptor == "1st" || descriptor == "2nd" || descriptor == "3rd" || descriptor == "4th" ||
      descriptor == "5th") {
        getNthDay(today, index, descriptor.replace(/\D/g, ""));

        //Throw error if gone into new month
        if (today.getMonth() != month) throw new Error("This day does not exist!");
      }

  if (descriptor == "last") getLastDay(today, index);

  return today;
}
