# import plugin
import $ from 'jquery'
import 'jquery.cookie'
import AOS from 'aos'
import './plugins/Smooth-Card-Carousel-jQuery-CSS3/scripts.js'

# import custom components
import Header from './components/scripts/renders/Header.coffee'
import Home from './components/scripts/renders/Home.coffee'
import Services from './components/scripts/renders/Services.coffee'
import Ecommerce from "./components/scripts/renders/Ecommerce.coffee"
#import Products from './components/scripts/renders/Products.coffee'
import AboutUs from './components/scripts/renders/AboutUs.coffee'
import OurTeam from './components/scripts/renders/OurTeam.coffee'
import Testimonial from './components/scripts/renders/Testimonial.coffee'
import Partner from './components/scripts/renders/Partner.coffee'
import ContactUs from './components/scripts/renders/ContactUs.coffee'
import Footer from './components/scripts/renders/Footer.coffee'
import Policy from './components/scripts/renders/Policy.coffee'
import BottomUtilities from './components/scripts/renders/BottomUtilities.coffee'

import ShowHeaderContact from './components/scripts/functions/ShowHeaderContact.coffee'
import SocialMediaLink from './components/scripts/functions/SocialMediaLink.coffee'
import ScrollToPosition from './components/scripts/functions/ScrollToPosition.coffee'
import ShowMenu from './components/scripts/functions/ShowMenu.coffee'
import ShowServiceDetail from './components/scripts/functions/ShowServiceDetail.coffee'
import ShowProductDetail from './components/scripts/functions/ShowProductDetail.coffee'
import SendMessage from './components/scripts/functions/SendMessage.coffee'
import SwitchPage from './components/scripts/functions/SwitchPage.coffee'
import SwitchLanguage from './components/scripts/functions/SwitchLanguage.coffee'


# Import custom style
import 'aos/dist/aos.css'
import './plugins/Smooth-Card-Carousel-jQuery-CSS3/styles.css'
import './style.styl'

# import images
import "./images/aboutus/about-1.jpg"
import "./images/aboutus/about-2.jpg"
import "./images/home/home-desktop.jpg"
import "./images/home/home-mobile.jpg"
import "./images/ourteam/hock_chai.jpg"
import "./images/ourteam/jean_mean.jpg"
import "./images/ourteam/kim_yok.jpg"
import "./images/ourteam/edward_lim.jpg"
import "./images/ourteam/t3.jpg"
import "./images/ourteam/t4.jpg"
import "./images/partner/autocount.png"
import "./images/partner/irs.png"
import "./images/ecommerce/ecommerce-bg.jpg"
# import "./images/products/celcom.jpg"
# import "./images/products/hotlink.jpg"
# import "./images/products/umobile.jpg"
# import "./images/products/autocount.jpg"
# import "./images/products/irs.jpg"
# import "./images/products/branch_report_1.jpg"
# import "./images/products/branch_report_2.jpg"
import "./images/services/attendance.jpg"
# import "./images/services/bot.jpg"
import "./images/services/ecommerce.jpg"
import "./images/services/payment.jpg"
import "./images/services/pos.jpg"
import "./images/services/report.jpg"
import "./images/services/seo.jpg"
import "./images/services/website.jpg"
import "./images/services/ordering.jpg"
import "./images/testimonial/portfolio-1.jpg"
import "./images/testimonial/portfolio-2.jpg"
import "./images/testimonial/portfolio-3.jpg"
import "./images/testimonial/portfolio-4.jpg"
import "./images/testimonial/portfolio-5.jpg"
import "./images/testimonial/portfolio-6.jpg"
import "./images/testimonial/portfolio-7.jpg"
import "./images/testimonial/portfolio-9.jpg"
import "./images/testimonial/portfolio-10.jpg"
import "./images/titleImage.jpeg"
import "./images/favicon/android-chrome-192x192.png"
import "./images/favicon/android-chrome-512x512.png"
import "./images/favicon/apple-touch-icon.png"
import "./images/favicon/favicon-16x16.png"
import "./images/favicon/favicon-32x32.png"
import "./images/favicon/favicon.ico"

header = new Header()
home = new Home()
services = new Services()
ecommerce = new Ecommerce()
#products = new Products()
aboutUs = new AboutUs()
ourTeam = new OurTeam()
testimonials = new Testimonial()
partners = new Partner()
contactUs = new ContactUs()
footer = new Footer()
policy = new Policy()
bottomUtilities = new BottomUtilities()

# Set latest year on copyright notice
$('#latestYear').text(new Date().getFullYear())

# Set Initial html language
if $.cookie('lang')
	switch $.cookie('lang')
		when 'CN'
			$('html').attr('lang', 'zh')
			break

		when 'BM'
			$('html').attr('lang', 'ms')
			break

if (window.innerWidth > 900) 
	$('#home').css('margin-top', '10rem')
	$('#policyContainer').html(policy.render()).css('margin-top', '15rem')
	$('#header').html(header.render())
	#$('#products').html(products.render())
	$('#ourTeam').html(ourTeam.render())
	$('#testimonials').html(testimonials.render())
else 
	$('#home').css('margin-top', '7.7rem')
	$('#policyContainer').html(policy.render()).css('margin-top', '7.5rem')
	$('#header').html(header.renderMobile())
	$(header.renderMenu()).insertBefore('header')
	#$('#products').html(products.renderMobile())
	$('#ourTeam').html(ourTeam.renderMobile())
	$('#testimonials').html(testimonials.renderMobile())

$('#home').html(home.render())
$('#ecommerce').html(ecommerce.render())
$('#services').html(services.render())
$('#aboutUs').html(aboutUs.render())
$('#partners').html(partners.render())
$('#contactUs').html(contactUs.render())
$('#footer').html(footer.render())

$(bottomUtilities.render()).insertAfter('footer')

showMenu = new ShowMenu()
showServiceDetail = new ShowServiceDetail()
showProductDetail = new ShowProductDetail()
sendMessage = new SendMessage()
switchPage = new SwitchPage()
scrollToPosition = new ScrollToPosition()
showHeaderContact = new ShowHeaderContact()
socialMediaLink = new SocialMediaLink()
switchLanguage = new SwitchLanguage()

$(document).ready(() ->
	AOS.init()
)