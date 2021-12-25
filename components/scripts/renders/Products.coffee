import $ from "jquery"
import SectionHeader from "../blocks/SectionHeader.coffee"

export default class Products
    constructor: ->
        @sectionTitleComponent = {
            title: "Products",
            subtitle: "Choose variety of our products"
            background: "dark"
        }

        @products = [
            {
                id: "contact-hotlink45"
                name: "hotlink",
                price: "RM45.00",
                sold: "25"
                img: "./images/hotlink.jpg"
                message: {
                    mobile: "https://wa.me/+60126113810?text=I am interested in HOTLINK with price RM 45.00",
                    desktop: "https://web.whatsapp.com/send?phone=%2B60126113810&text=I+am+interested+in+Hotlink+with+price+RM+45.00&app_absent=0"
                }
                description: "
                    <ul class='card-text'>
                        <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
                        <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
                        <li class='card_body--lighterText'>Bulanan / Monthly RM35</li>
                        <li class='card_body--lighterText'>Sim Card RM10</li>
                    </ul>
                ",
            },
            {
                id: "contact-celcom45"
                name: "celcom",
                price: "RM45.00",
                sold: "25"
                img: "./images/celcom.jpg"
                message: {
                    mobile: "https://wa.me/+60126113810?text=I am interested in CELCOM with price RM 45.00",
                    desktop: "https://web.whatsapp.com/send?phone=%2B60126113810&text=I+am+interested+in+Celcom+with+price+RM+45.00&app_absent=0"
                }
                description: "
                    <ul class='card-text'>
                        <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
                        <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
                        <li class='card_body--lighterText'>Bulanan / Monthly RM35</li>
                        <li class='card_body--lighterText'>Sim Card RM10</li>
                    </ul>
                ",
            },
            {
                id: "contact-umobile68"
                name: "u mobile",
                price: "RM68.00",
                sold: "25"
                img: "./images/umobile.jpg"
                message: {
                    mobile: "",
                    desktop: ""
                }
                description: "
                    <ul class='card-text'>
                        <li class='card_body--lighterText'>GX68</li>
                        <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
                        <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
                        <li class='card_body--lighterText'>Kepantasan Tanpa Had / Speed Without Capping</li>
                        <li class='card_body--lighterText'>Bulanan / Monthly RM68</li>
                        <li class='card_body--lighterText'>Pascabayar / Postpaid</li>
                    </ul>
                ",
            },
            {
                id: "contact-umobile40"
                name: "u mobile",
                price: "RM40.00",
                sold: "25"
                img: "./images/umobile.jpg"
                message: {
                    mobile: "https://wa.me/+60126113810?text=I am interested in UMOBILE with price RM 40.00",
                    desktop: "https://web.whatsapp.com/send?phone=%2B60126113810&text=I+am+interested+in+Umobile+with+price+RM+40.00&app_absent=0"
                }
                description: "
                    <ul class='card-text'>
                        <li class='card_body--lighterText'>GX30</li>
                        <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
                        <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
                        <li class='card_body--lighterText'>Bulanan / Monthly RM30</li>
                        <li class='card_body--lighterText'>Sim Card RM10</li>
                    </ul>
                ",
            },
        ]
        return

    render: ->
        return "
            #{SectionHeader.renderSectionTitle(@sectionTitleComponent)}
            <div class='container pb-5'>
                <div class='row'>
                    #{@products.map((product, key) => @renderCardsContainer(product, key) ).join("")}
                </div>
            </div>
        "

    renderMobile: ->
        return "
            #{SectionHeader.renderSectionTitle(@sectionTitleComponent)}
            <div id='product-carousel' class='carousel slide' data-ride='carousel'>
                <ol class='carousel-indicators'>
                    #{@products.map((product, key) => 
                        return "
                            <li data-target='#product-carousel' data-slide-to='#{key}' #{if key is 0 then "class='active'" else ""}></li>
                        "
                    ).join("")}
                </ol>

                <div class='carousel-inner' role='listbox'>
                    #{@products.map((product, key) => 
                        return "
                        <div class='carousel-item #{if key is 0 then "active"}'>
                            #{@renderCardsContainer(product, key)}
                        </div>
                        "
                    ).join("")}
                </div>
                <a class='carousel-control-prev' href='#product-carousel' role='button' data-slide='prev'>
                    <span class='carousel-control-prev-icon black py-2 px-1 rounded' aria-hidden='true'></span>
                    <span class='sr-only'>Previous</span>
                </a>
                <a class='carousel-control-next' href='#product-carousel' role='button' data-slide='next'>
                    <span class='carousel-control-next-icon black py-2 px-1 rounded' aria-hidden='true'></span>
                    <span class='sr-only'>Next</span>
                </a>
            </div>
        "

    renderCardsContainer: (product, offset) ->
        return "
        <div class='col-12 col-md-3 pb-5 pb-md-0'>
            <div class='product card hoverable' data-aos='flip-right' data-aos-delay='#{offset * 100}'>
                <div class='blue card-header text-uppercase text-center text-white'>#{product.name}</div>
                <img class='product__img card-img-top mx-auto p-3' src='#{product.img}' alt='#{product.name} image'>
                <a class='product__detailBtn blue lighten-2 hoverable w-100 text-center text-white d-flex flex-column py-2'>
                    <i class='fas fa-angle-up'></i>
                    View Detail
                </a> 
                <div class='product__detailBody card-body' data-is-active='false'>
                    #{product.description}
                </div>
                <div class='card-footer text-center'>
                    <div class='d-flex flex-column justify-content-center align-items-center'>
                        <h4 class='h4 h4-responsive font-weight-bold p-0 m-0 pt-3'>#{product.price}</h4>
                        <p class='small text-muted pl-5'>#{product.sold} sold</p>
                    </div>
                    <button id='#{product.id}' class='btn btn-primary rounded'>Buy Now</button>
                </div>
            </div>
        </div>
        "