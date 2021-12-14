// import plugin
import $ from 'jquery';
import AOS from 'aos';

// import custom components

// IMport custom style
import './style.styl';
import 'aos/dist/aos.css';

AOS.init();

// Set latest year on copyright notice
$('#latestYear').text(new Date().getFullYear());
