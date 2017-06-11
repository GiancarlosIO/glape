// Landing code
import Rx from 'rxjs';
import scrollTo from './utils/scrollTo';

// scroll to second section
document.addEventListener('DOMContentLoaded', () => {
  const btnArrow = document.querySelector('#btnArrow');
  const btnArrowObs = Rx.Observable.fromEvent(btnArrow, 'click');
  btnArrowObs.subscribe((e) => {
    console.log('clicked arrow');
    scrollTo('#introSection', 1000, -100);
  });
});