// import plugin
import $ from 'jquery';
import AOS from 'aos';

// import custom components
import Header from './components/scripts/renders/Header.coffee';
import Carousel from './components/scripts/renders/Carousel.coffee';
import Services from './components/scripts/renders/Services.coffee';
import Products from './components/scripts/renders/Products.coffee';
import AboutUs from './components/scripts/renders/AboutUs.coffee';
import OurTeam from './components/scripts/renders/OurTeam.coffee';
import Testimonial from './components/scripts/renders/Testimonial.coffee';
import Partner from './components/scripts/renders/Partner.coffee';
import ContactUs from './components/scripts/renders/ContactUs.coffee';
import Footer from './components/scripts/renders/Footer.coffee';

import ScrollToPosition from './components/scripts/functions/ScrollToPosition.coffee';

// IMport custom style
import './style.styl';
import 'aos/dist/aos.css';
import './plugins/Smooth-Card-Carousel-jQuery-CSS3/styles.css';

AOS.init();

const header = new Header();
const carousel = new Carousel();
const services = new Services();
const products = new Products();
const aboutUs = new AboutUs();
const ourTeam = new OurTeam();
const testimonials = new Testimonial();
const partners = new Partner();
const contactUs = new ContactUs();
const footer = new Footer();

// Set latest year on copyright notice
$('#latestYear').text(new Date().getFullYear());

$('#header').html(header.render());
$('#home').html(carousel.render());
$('#services').html(services.render());
$('#products').html(products.render());
$('#aboutUs').html(aboutUs.render());
$('#ourTeam').html(ourTeam.render());
$('#testimonials').html(testimonials.render());
$('#partners').html(partners.render());
$('#contactUs').html(contactUs.render());
$('#footer').html(footer.render());

const scrollToPosition = new ScrollToPosition();
