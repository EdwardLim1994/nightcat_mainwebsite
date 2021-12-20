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
import ScrollToTopBtn from './components/scripts/blocks/ScrollToTopBtn.coffee';

import ScrollToPosition from './components/scripts/functions/ScrollToPosition.coffee';
import ShowMenu from './components/scripts/functions/ShowMenu.coffee';
import ShowServiceDetail from './components/scripts/functions/ShowServiceDetail.coffee';
import ShowProductDetail from './components/scripts/functions/ShowProductDetail.coffee';

// IMport custom style
import 'aos/dist/aos.css';
import './plugins/Smooth-Card-Carousel-jQuery-CSS3/styles.css';
import './style.styl';

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

$('#whatsapp-link').on('click', function () {
	//If current device is on mobile, redirect to mobile based url, otherwise redirect to desktop based url
	if (/iPhone|iPad|iPod|Android/i.test(navigator.userAgent)) {
		window.open(
			'https://wa.me/+60126113810?text=I want to know more about Attendance System.',
			'_blank'
		);
	} else {
		window.open(
			'https://web.whatsapp.com/send?phone=%2B60126113810&text=I want to know more about Attendance System.&app_absent=0',
			'_blank'
		);
	}
});

if (window.innerWidth > 720) {
	$('#home').css('margin-top', '10rem');
	$('#header').html(header.render());
	$('#products').html(products.render());
	$('#ourTeam').html(ourTeam.render());
	$('#testimonials').html(testimonials.render());
} else {
	$('#home').css('margin-top', '7.7rem');
	$('#header').html(header.renderMobile());
	$(header.renderMenu()).insertBefore('header');
	$('#products').html(products.renderMobile());
	$('#ourTeam').html(ourTeam.renderMobile());
	$('#testimonials').html(testimonials.renderMobile());
}

$('#home').html(carousel.render());
$('#services').html(services.render());
$('#aboutUs').html(aboutUs.render());
$('#partners').html(partners.render());
$('#contactUs').html(contactUs.render());
$('#footer').html(footer.render());

$(ScrollToTopBtn.generateScrollToTopBtn()).insertAfter('footer');

const scrollToPosition = new ScrollToPosition();
const showMenu = new ShowMenu();
const showServiceDetail = new ShowServiceDetail();
const showProductDetail = new ShowProductDetail();
