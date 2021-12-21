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
                name: "hotlink",
                price: "RM40.00",
                sold: "25"
                img: "/images/products/hotlink.jpg"
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
                name: "celcom",
                price: "RM40.00",
                sold: "25"
                img: "/images/products/celcom.jpg"
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
                name: "u mobile",
                price: "RM40.00",
                sold: "25"
                img: "/images/products/umobile.jpg"
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
                name: "u mobile",
                price: "RM40.00",
                sold: "25"
                img: "/images/products/umobile.jpg"
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
                    #{@products.map((product) => @renderCardsContainer(product) ).join("")}
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
                            #{@renderCardsContainer(product)}
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

    renderCardsContainer: (product) ->
        return "
        <div class='col-12 col-md-3 pb-5 pb-md-0'>
            <div class='product card hoverable'>
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
                    <button class='btn btn-primary rounded'>Buy Now</button>
                </div>
            </div>
        </div>
        "