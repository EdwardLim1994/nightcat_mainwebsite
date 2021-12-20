import $ from "jquery"
import SectionHeader from "../blocks/SectionHeader.coffee"
import ScrollToContactUsBtn from "../blocks/ScrollToContactUsBtn.coffee"

export default class Testimonial
    constructor: ->
        @sectionTitleComponent = {
            title: "Testimonials",
            subtitle: "What our customers say"
            background: "light"
        }
        @testimonials = [
            {
                img: "/images/testimonial/portfolio-1.jpg"
                alt: ""
                company: "PAKAR MATA EVER EYES",
                howToFind: "Call Us",
                problem: "Using punch card to record all employee in/out time and manually calculate by clerks.",
                solution: "Provides Attedance System to customer , to auto calculate work time , ot time and others."
            },
            {
                img: "/images/testimonial/portfolio-2.jpg"
                alt: ""
                company: "GOODLY ENTERPRISE",
                howToFind: "Facebook",
                problem: "Clients have increasing business volume , the increase of volume makes it very hard to keep track of orders coming in , and when uploading to lorry , face overweight problem.",
                solution: "Allow customer to key in order for future , print out list of products needed in upcoming days , and create delivery orders with total weights for each delivery order ( To prevent overweight )."
            },
            # {
            #     img: ""
            #     alt: ""
            #     company: "ZSON TRADING",
            #     howToFind: "Contacted them for collaboration",
            #     problem: "Client interested to expand busines in ecommerce area , to sell various grocery product",
            #     solution: "Help client set up and mantain shop in <a href='https://shopee.com.my/zsontrading'>Shopee</a> and <a href='https://www.lazada.com.my/shop/zsontrading/'>Lazada</a> , allowing customer to focus on selling products"
            # },
            {
                img: "/images/testimonial/portfolio-3.jpg"
                alt: ""
                company: "XIM SDN BHD",
                howToFind: "Whatsapp Us",
                problem: "Manager need to order stock from Oversea , with many quotation from oversea customer (20+ Excel Files each time).",
                solution: "Helps them to combine all the quotation into database , allow them to search by key word together with pictures and unit cost."
            },
            {
                img: "/images/testimonial/portfolio-4.jpg"
                alt: ""
                company: "RIQQA ENTERPRISE",
                howToFind: "Website",
                problem: "Customer are having trouble to know which invoice are outstanding , and lack a mechanism to generate annual reports for all yearly sales.",
                solution: "Allow customer to create invoice , record payment , substract the balance and show the outstanding , and allow annual sales."
            },
            {
                img: "/images/testimonial/portfolio-5.jpg"
                alt: ""
                company: "TANG MART",
                howToFind: "Referred by Friends",
                problem: "Current POS system report not comprehensive , need to open many reports just to get the information for stock ordering.",
                solution: "Consolidates all important data into a single Report for easier time during stock ordering."
            }
        ]
        return

    render: ->
        return "
            #{SectionHeader.renderSectionTitle(@sectionTitleComponent)}
            <div class='container-fluid'>
                <div class='pb-5 d-flex align-items-center justify-content-center w-100'>
                    <div class='d-flex align-items-center justify-content-center flex-column w-100 overflow-hidden position-relative '>
                        <div class='card-carousel'>
                            #{@testimonials.map((testimonial) => @generateTestimonialBody(testimonial)).join("")}
                        </div>
                    </div>
                </div>
            </div>
            #{ScrollToContactUsBtn.render({
                title: "Need consultants?"
            })}
        "

    renderMobile: ->
        return "
            #{SectionHeader.renderSectionTitle(@sectionTitleComponent)}
            <div id='testimonial-carousel' class='carousel slide h-100' data-ride='carousel'>
                <ol class='carousel-indicators'>
                    #{@testimonials.map((testimonial, key) => 
                        return "
                            <li data-target='#testimonial-carousel' data-slide-to='#{key}' class='grey #{if key is 0 then "active" else ""}'></li>
                        "
                    ).join("")}
                </ol>

                <div class='carousel-inner' role='listbox'>
                    #{@testimonials.map((testimonial, key) => 
                        return "
                        <div class='carousel-item #{if key is 0 then "active"}'>
                            #{@generateTestimonialBody(testimonial)}
                        </div>
                        "
                    ).join("")}
                </div>
                <a class='carousel-control-prev' href='#testimonial-carousel' role='button' data-slide='prev'>
                    <span class='carousel-control-prev-icon black py-2 px-1 rounded' aria-hidden='true'></span>
                    <span class='sr-only'>Previous</span>
                </a>
                <a class='carousel-control-next' href='#testimonial-carousel' role='button' data-slide='next'>
                    <span class='carousel-control-next-icon black py-2 px-1 rounded' aria-hidden='true'></span>
                    <span class='sr-only'>Next</span>
                </a>
            </div>
            #{ScrollToContactUsBtn.render({
                title: "Need consultants?"
            })}
        "

    generateTestimonialBody: (testimonial) ->
        return "
            #{if window.innerWidth <= 720 then "<div class='col-12 pb-5 pb-md-0'>" else "<div class='my-card py-2'>"}
                <div class='card'>
                    <img class='card-img-top w-100 h-100 p-0 m-0' src='#{testimonial.img}' alt='Card image cap'>
                    <div class='card-body p-0 m-0'>
                        <h4 class='card-title pt-3 text-center'>#{testimonial.company}</h4>
                        <div class='card-text'>
                            <ul class='list-group w-100'>
                                <li class='list-group-item'>
                                    <p class='p-0 m-0 font-weight-bold'>How they found us :</p>
                                    #{testimonial.howToFind}
                                </li>
                                <li class='list-group-item'>
                                    <p class='p-0 m-0 font-weight-bold'>Their Problems :</p>
                                    #{testimonial.problem}
                                </li>
                                <li class='list-group-item'>
                                    <p class='p-0 m-0 font-weight-bold'>Our Solutions :</p>
                                    #{testimonial.solution}
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        "