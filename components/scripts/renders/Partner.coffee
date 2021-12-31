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
                img: "/images/partner/irs.png"
                alt: "My Point Marketing - IRS POS System Software"
                link: "https://www.irspossystem.com/?gclid=EAIaIQobChMIj9-61__L9AIVQUUrCh2szAB2EAAYASAAEgIQCvD_BwE",
            }
        ]
        return

    render: ->
        return "
            #{SectionHeader.renderSectionTitle(@sectionTitleComponent)}
            <div class='container pb-5'>
                <div class='d-flex #{if window.innerWidth > 900 then "flex-row" else "flex-column"} justify-content-around align-items-center'>
                    #{@partners.map((partner, key) ->
                        return "
                            <a class='rounded w-100 my-0 d-flex justify-content-center align-items-center' data-aos='fade-up' data-aos-delay='#{key * 100}'>
                                <img class='img-fluid w-75 p-3 partner__service' src='#{partner.img}' alt='#{partner.alt}'/>
                            </a>
                        "
                    ).join("")}
                </div>
            </div>
        "