import $ from "jquery"
import SectionHeader from "../blocks/SectionHeader.coffee"

export default class AboutUs
    constructor: ->
        @sectionTitleComponent = {
            title: "About us",
            subtitle: "Who are we actually?"
            background: "light"
        }
        return

    render: ->
        return "
            #{SectionHeader.renderSectionTitle(@sectionTitleComponent)}
            <div class='row p-0 m-0 blue-grey lighten-5 d-flex'>
                <div class='order-1 order-md-1 col-12 col-md-6 p-0 m-0'>
                    <div class='view zoom'>
                        <img class='img-fluid w-100' src='/images/aboutus/about-2.jpg' />
                    </div>
                </div>
                <div class='order-2 order-md-2 col-12 col-md-6 p-0 m-0' data-aos='zoom-in'>
                    <p class='p-5'>With widespread adoption of computer and mobile devices , we believe that the future is in seamless integration between clients and technology. Hence we strive to provide technology solutions that increase sales , enchance productivity and reduce redundancy so that clients are able to focus on expanding their business.</p>
                </div>
                <div class='order-4 order-md-3 col-12 col-md-6 p-0 m-0' data-aos='zoom-in'>
                    <p class='pt-5 pb-2 px-5'>Since the year of 2013, we have help numerous companies on improving and enhancing their business by understanding their problems and provide strategies and services based on their needs.</p>
                    <p class='pt-2 pb-2 px-5'>Want to know more on how we help our clients? <a class='scroll-to-testimonial-link text-primary'><u>Click here</u></a> to look more.</p>
                </div>
                <div class='order-3 order-md-4 col-12 col-md-6 p-0 m-0'>
                    <div class='view zoom'>
                        <img class='img-fluid w-100' src='/images/aboutus/about-1.jpg' />
                    </div>
                </div>
            </div>
            
        "