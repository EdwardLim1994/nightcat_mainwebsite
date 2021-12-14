// import plugin
import $ from 'jquery';
import AOS from 'aos';

// import custom components
import Header from './components/scripts/Header.coffee';

// IMport custom style
import './style.styl';
import 'aos/dist/aos.css';

AOS.init();

const header = new Header();

// Set latest year on copyright notice
$('#latestYear').text(new Date().getFullYear());

$('#header').html(header.render());
