import $ from "jquery"
import SectionHeader from "../blocks/SectionHeader.coffee"

export default class ContactUs
    constructor: ->
        @sectionTitleComponent = {
            title: "Contact Us",
            subtitle: "We Provide Best Assistant"
            background: "dark"
        }
        return

    render: ->
        return "
            
            <div class='container-fluid px-3 py-2'>
                <div class='py-2 pl-3'>
                    <h2 class='text-center h2 h2-responsive text-uppercase'>#{@sectionTitleComponent.title}</h2>
                    <p class='text-center'>#{@sectionTitleComponent.subtitle}</p>
                </div>
                <div class='row d-flex'>
                    <div class='order-2 order-md-1 col-12 col-md-6 border-right'>
                        <a class='' href='tel:+6 0126113810'>
                            <div class='row'>
                                <div class='col-2 text-right'>
                                    <i class='fas fa-phone'></i>
                                </div>
                                <div class='col-10 '>
                                    <p>+6 012-611 3810</p>
                                </div>
                                
                            </div>
                        </a>
                        <a class='' href='mailto:nightcatdigitalsolutions@gmail.com'>
                            <div class='row'>
                                <div class='col-2 text-right'>
                                    <i class='fas fa-envelope'></i>
                                </div>
                                <div class='col-10 '>
                                    <p>nightcatdigitalsolutions@gmail.com</p>
                                </div>
                                
                            </div>
                        </a>
                        <a class='' href='https://goo.gl/maps/xZYSd7R3XFdonxJ17'>
                            <div class='row'>
                                <div class='col-2 text-right'>
                                    <i class='fas fa-map-marker-alt'></i>
                                </div>
                                <div class='col-10'>
                                    <p>46 BAWAH, Jalan Anggerik 2, Taman Kulai Utama, 81000 Kulai, Johor</p>
                                </div>
                                
                            </div>
                        </a>
                        <div class='row mb-4'>
                            <div class='col-12 d-flex justify-content-around'>
                                <a id='whatsapp-link'>
                                    <i class='fab fa-whatsapp fa-2x'></i>
                                </a>
                                <a id='facebook-link'>
                                    <i class='fab fa-facebook fa-2x'></i>
                                </a>
                                <a id='instagram-link'>
                                    <i class='fab fa-instagram fa-2x'></i>
                                </a>
                                <a id='twitter-link'>
                                    <i class='fab fa-twitter fa-2x'></i>
                                </a>
                            </div>
                        </div>
                        <div class='row mt-4'>
                            <div class='col-12'>
                                <div class='map-area'>
                                    <iframe src='https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d127625.27308781949!2d103.5508803!3d1.5860352!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da79211974f56d%3A0x968d7368f2c8e8e3!2sNightcat%20Cyber%20Cafe!5e0!3m2!1sms!2smy!4v1603337046319!5m2!1sms!2smy' width='100%' height='270' frameborder='0' style='border:0;' allowfullscreen='' aria-hidden='false' tabindex='0'></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='order-1 order-md-2 col-12 col-md-6 mb-4 mb-md-0'>
                        <div class='row p-0 m-0 w-100'>
                            <div class='p-0 m-0 col-12 col-md-6'>
                                <input id='name' type='text' class=' w-100  p-1 pl-md-2 mb-3 rounded-lg border' placeholder='Name' />
                            </div>
                            <div class='p-0 m-0 col-12 col-md-6'>
                                <input id='name' type='mail' class=' w-100  p-1 pl-md-2 mb-3 rounded-lg border' placeholder='Email' />
                            </div>
                            <div class='p-0 m-0 col-12'>
                                <input id='name' type='text' class=' w-100  p-1 pl-md-2 mb-3 rounded-lg border' placeholder='Subject' />
                            </div>
                            <div class='p-0 m-0 col-12'>
                                <textarea class=' w-100  p-1 pl-2 mb-3 rounded-lg border' rows='10' placeholder='Message'></textarea>
                            </div>
                            <div class='p-0 m-0 col-12'>
                                <button class='btn btn-info m-0 w-100' id='contact-form-submit'>Send</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        "