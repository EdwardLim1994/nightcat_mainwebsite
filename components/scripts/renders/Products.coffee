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
                        <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
                        <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
                        <li class='card_body--lighterText'>Bulanan / Monthly RM35</li>
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

    renderCardsContainer: (product) ->
        return "
        <div class='col-3'>
            <div class='card hoverable'>
                <div class='blue card-header text-uppercase text-center text-white'>#{product.name}</div>
                <img class='card-img-top p-3' src='#{product.img}' alt='Card image cap' style='max-width:250px!important;max-height:320px!important;'>
                <a class='blue lighten-2 hoverable w-100 text-center text-white d-flex flex-column py-2'>
                    <i class='fas fa-angle-up'></i>
                    View Detail
                </a>  
                <div class='card-body d-block'>
                    #{product.description}
                </div>
                <div class='card-footer text-center'>
                    <div class='d-flex flex-column justify-content-center align-items-center'>
                        <h5 class='font-weight-bold p-0 m-0 pt-3'>#{product.price}</h5>
                        <p class='small pl-5'>#{product.sold} sold</p>
                    </div>
                    <button class='btn btn-primary rounded'>Buy Now</button>
                </div>
            </div>
        </div>
        "