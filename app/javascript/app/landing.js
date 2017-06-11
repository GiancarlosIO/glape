// Landing code
import Rx from 'rxjs';
import scrollTo from './utils/scrollTo';

// scroll to second section
document.addEventListener('DOMContentLoaded', () => {
  const btnArrow = document.querySelector('#btnArrow');
  const headerLogo = document.querySelector('#headerLogo');
  const headerLogoOBs = Rx.Observable.fromEvent(headerLogo, 'click');
  const btnArrowObs = Rx.Observable.fromEvent(btnArrow, 'click');
  // scroll to intro section
  btnArrowObs.subscribe((e) => scrollTo('#introSection', 1000, -100));
  // scroll top
  headerLogoOBs.subscribe((e) => scrollTo('body', 1000));
});