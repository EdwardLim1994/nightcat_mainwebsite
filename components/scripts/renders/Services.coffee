import $ from "jquery"
import SectionHeader from "../blocks/SectionHeader.coffee"

export default class Services

    constructor: ->
        @sectionTitleComponent = {
            title: "Services",
            subtitle: "What we offer for our special customers"
            background: "light"
        }
        @services = [
            {
                img: "/images/services/report.jpg",
                title: "Reporting",
                description: "Helps employers consolidate report form various branch",
            },
            {
                img: "/images/services/attendance.jpg",
                title: "Attendance",
                description: "Helps employers to track employee working time and perform automated, salary calculation",
            },
            {
                img: "/images/services/ecommerce.jpg",
                title: "Ecommerce",
                description: "Allow customer to see order products, able to show picture / cost, add into cart, and integrate with payment gateway",
            },
            {
                img: "/images/services/website.jpg",
                title: "Website",
                description: "Build customised website for customer, depending on their sector and needs",
            },
            {
                img: "/images/services/bot.jpg",
                title: "Chat AutoReply BOT",
                description: "Create bot (facebook, whatsapp and others) to auto reply customer various enquiries",
            },
            {
                img: "/images/services/pos.jpg",
                title: "Point Of Sales",
                description: "Aid employers in selling products, inventory control, record customer payment and allow them to have a more firm grasp on their business profits",
            },
            {
                img: "/images/services/payment.jpg",
                title: "Payment Gateway",
                description: "Allow integration with various payment gateway, eg ipay88, fpx, etc",
            },
            {
                img: "/images/services/seo.jpg",
                title: "Search Engine Optimzation",
                description: "Allow search engine to crawl websites more effectively, resulting in better ranking in searches",
            }
        ]
        return

    render: ->

        return "
            #{SectionHeader.renderSectionTitle(@sectionTitleComponent)}
            <div class='blue'>
                <div class='row p-0 m-0'>
                    #{@services.map(((service) => @generateServiceBlock(service)).bind(@)).join("")}
                </div>
            </div>
        "

    generateServiceBlock: (service) ->

        return "
            <div class='view zoom position-relative col-12 col-md-3 p-0 m-0'>
                <div class='position-absolute w-100 h-100 d-flex flex-column align-items-center justify-content-end' style='z-index:50;'>
                    <div class='w-100 h-100 px-3' style='background-color:rgba(0, 145, 255, 0.8);'>
                        <h4 class='w-100 h-20 white-text text-center p-0 m-0 my-4 h4 h4-responsive'>#{service.title}</h4>
                        <p class='text-white text-center d-block' style='text-shadow:1px 1px rgba(0, 0, 0, 0.6);'>#{service.description}</p>
                    </div>
                </div>   
                <img class='img-fluid #{if window.innerWidth > 720 then "w-100 h-100" else "vw-100"}' style='z-index:10;height: 20rem;' src='#{service.img}' />
                <div class='mask flex-center waves-effect waves-light' style='z-index:30; background-color: rgba(0, 0, 0, 0.5);'>
                </div>
            </div>
        "