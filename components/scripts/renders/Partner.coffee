import $ from "jquery"
import SectionHeader from "../blocks/SectionHeader.coffee"

export default class Partner
    constructor: ->
        @sectionTitleComponent = {
            title: "Partners",
            subtitle: "Our reliable Partners"
            background: "dark"
        }
        @partners = [
            {
                img: "/images/partner/autocount.png"
                alt: "Autocount Soft"
                link: "https://www.autocountsoft.com/",
            },
            {
                img: "/images/partner/mypoint_marketing.png"
                alt: "My Point Marketing - IRS POS System Software"
                link: "https://www.irspossystem.com/?gclid=EAIaIQobChMIj9-61__L9AIVQUUrCh2szAB2EAAYASAAEgIQCvD_BwE",
            }
        ]
        return

    render: ->
        return "
            #{SectionHeader.renderSectionTitle(@sectionTitleComponent)}
            <div class='container pb-5'>
                <div class='d-flex #{if window.innerWidth > 720 then "flex-row" else "flex-column"} justify-content-around align-items-center'>
                    #{@partners.map((partner) ->
                        return "
                            <a class='rounded w-100 my-2 my-md-0' href='#{partner.link}'>
                                <img class='img-fluid w-100 p-3' src='#{partner.img}' alt='#{partner.alt}'/>
                            </a>
                        "
                    ).join("")}
                </div>
            </div>
        "