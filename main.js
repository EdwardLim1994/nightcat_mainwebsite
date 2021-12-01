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

document.querySelector('#app').innerHTML = `
  <h1>Hello Vite!</h1>
  <a href="https://vitejs.dev/guide/features.html" target="_blank">Documentation</a>
`;
