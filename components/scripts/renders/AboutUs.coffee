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
            <div class='row p-0 m-0 blue-grey lighten-5'>
                <div class='col-12 col-md-6 p-0 m-0'>
                    <img class='img-fluid w-100' src='/images/aboutus/about-2.jpg' />
                </div>
                <div class='col-12 col-md-6 p-0 m-0 '>
                    <p class='p-5'>With widespread adoption of computer and mobile devices , we believe that the future is in seamless integration between clients and technology. Hence we strive to provide technology solutions that increase sales , enchance productivity and reduce redundancy so that clients are able to focus on expanding their business.</p>
                </div>
                <div class='col-12 col-md-6 p-0 m-0'>
                <p class='p-5'>With widespread adoption of computer and mobile devices , we believe that the future is in seamless integration between clients and technology. Hence we strive to provide technology solutions that increase sales , enchance productivity and reduce redundancy so that clients are able to focus on expanding their business.</p>
                </div>
                <div class='col-12 col-md-6 p-0 m-0'>
                    <img class='img-fluid' src='/images/aboutus/about-1.jpg' />
                </div>
            </div>
            
        "