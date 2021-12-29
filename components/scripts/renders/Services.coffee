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
            # {
            #     img: "/images/services/bot.jpg",
            #     title: "Chat AutoReply BOT",
            #     description: "Create bot (facebook, whatsapp and others) to auto reply customer various enquiries",
            # },
            {
                img: "/images/services/ordering.jpg",
                title: "Customer Ordering System",
                description: "Allow to combine all customer order to allow production have easier grasp on orders to be prepared",
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
                    #{@services.map(((service, key) => @generateServiceBlock(service, key)).bind(@)).join("")}
                </div>
            </div>
        "

    generateServiceBlock: (service, offset) ->

        return "
            <div class='services view zoom position-relative col-12 col-md-3 p-0 m-0' data-aos='flip-left' data-aos-delay='#{offset * 100}'>
                <div class='services__body position-absolute w-100 d-flex flex-column align-items-center justify-content-end'>
                    <div class='services__textContainer w-100 h-100 px-3'>
                        <h5 class='w-100 h-20 white-text text-center p-0 m-0 my-4 h4 h4-responsive'>#{service.title}</h5>
                        <p class='text-white text-center services__description'>#{service.description}</p>
                    </div>
                </div>   
                <img class='services__img img-fluid #{if window.innerWidth > 900 then "w-100 h-100" else "vw-100"}' src='#{service.img}' />
                <div class='services__mask mask flex-center waves-effect waves-light'>
                </div>
            </div>
        "