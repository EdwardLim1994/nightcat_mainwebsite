// import plugin
import $ from 'jquery';
import 'jquery.cookie';
import AOS from 'aos';

// import custom components
import Header from './components/scripts/renders/Header.coffee';
import Home from './components/scripts/renders/Home.coffee';
import Services from './components/scripts/renders/Services.coffee';
import Products from './components/scripts/renders/Products.coffee';
import AboutUs from './components/scripts/renders/AboutUs.coffee';
import OurTeam from './components/scripts/renders/OurTeam.coffee';
import Testimonial from './components/scripts/renders/Testimonial.coffee';
import Partner from './components/scripts/renders/Partner.coffee';
import ContactUs from './components/scripts/renders/ContactUs.coffee';
import Footer from './components/scripts/renders/Footer.coffee';
import Policy from './components/scripts/renders/Policy.coffee';
import BottomUtilities from './components/scripts/renders/BottomUtilities.coffee';

import ScrollToPosition from './components/scripts/functions/ScrollToPosition.coffee';
import ShowMenu from './components/scripts/functions/ShowMenu.coffee';
import ShowServiceDetail from './components/scripts/functions/ShowServiceDetail.coffee';
import ShowProductDetail from './components/scripts/functions/ShowProductDetail.coffee';
import SendMessage from './components/scripts/functions/SendMessage.coffee';
import SwitchPage from './components/scripts/functions/SwitchPage.coffee';
import ShowHeaderContact from './components/scripts/functions/ShowHeaderContact.coffee';
import SocialMediaLink from './components/scripts/functions/SocialMediaLink.coffee';
import SwitchLanguage from './components/scripts/functions/SwitchLanguage.coffee';

// IMport custom style
import 'aos/dist/aos.css';
import './plugins/Smooth-Card-Carousel-jQuery-CSS3/styles.css';
import './style.styl';

const header = new Header();
const home = new Home();
const services = new Services();
const products = new Products();
const aboutUs = new AboutUs();
const ourTeam = new OurTeam();
const testimonials = new Testimonial();
const partners = new Partner();
const contactUs = new ContactUs();
const footer = new Footer();
const policy = new Policy();
const bottomUtilities = new BottomUtilities();

// Set Initial html language
if ($.cookie('lang')) {
	switch ($.cookie('lang')) {
		case 'CN':
			$('html').attr('lang', 'zh');
			break;

		case 'BM':
			$('html').attr('lang', 'ms');
			break;
	}
}

// Set latest year on copyright notice
$('#latestYear').text(new Date().getFullYear());

if (window.innerWidth > 900) {
	$('#home').css('margin-top', '10rem');
	$('#policyContainer').html(policy.render()).css('margin-top', '15rem');
	$('#header').html(header.render());
	$('#products').html(products.render());
	$('#ourTeam').html(ourTeam.render());
	$('#testimonials').html(testimonials.render());
} else {
	$('#home').css('margin-top', '7.7rem');
	$('#policyContainer').html(policy.render()).css('margin-top', '8rem');
	$('#header').html(header.renderMobile());
	$(header.renderMenu()).insertBefore('header');
	$('#products').html(products.renderMobile());
	$('#ourTeam').html(ourTeam.renderMobile());
	$('#testimonials').html(testimonials.renderMobile());
}

$('#home').html(home.render());
$('#services').html(services.render());
$('#aboutUs').html(aboutUs.render());
$('#partners').html(partners.render());
$('#contactUs').html(contactUs.render());
$('#footer').html(footer.render());

$(bottomUtilities.render()).insertAfter('footer');

const showMenu = new ShowMenu();
const showServiceDetail = new ShowServiceDetail();
const showProductDetail = new ShowProductDetail();
const sendMessage = new SendMessage();
const switchPage = new SwitchPage();
const scrollToPosition = new ScrollToPosition();
const showHeaderContact = new ShowHeaderContact();
const socialMediaLink = new SocialMediaLink();
const switchLanguage = new SwitchLanguage();

$(document).ready(function () {
	AOS.init();
});
