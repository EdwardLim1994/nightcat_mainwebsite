import $ from "jquery"
import "jquery.cookie"
import SectionHeader from "../blocks/SectionHeader.coffee"

export default class Products
    constructor: ->
        @currentLang = if $.cookie("lang") then $.cookie("lang") else "EN"
        @sectionTitleComponent = {
            title: {
                EN: "Products",
                BM: "Produk",
                CN: "产品"
            }
            subtitle: {
                EN: "Choose variety of our products",
                BM: "Pilihlah Produk Kami yang pelbagai-bagai"
                CN: "选择我们的各种产品"
            }
            background: "dark"
        }
        @button = {
            EN: "Buy Now",
            BM: "Beli",
            CN: "购买"
        }
        # @products = [
        #     {
        #         id: "contact-hotlink45"
        #         name: "hotlink",
        #         price: "RM45.00",
        #         sold: "25"
        #         img: "/images/products/hotlink.jpg"
        #         message: {
        #             mobile: "https://wa.me/+60126113810?text=I am interested in HOTLINK with price RM 45.00",
        #             desktop: "https://web.whatsapp.com/send?phone=%2B60126113810&text=I+am+interested+in+Hotlink+with+price+RM+45.00&app_absent=0"
        #         }
        #         description: "
        #             <ul class='card-text'>
        #                 <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
        #                 <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
        #                 <li class='card_body--lighterText'>Bulanan / Monthly RM35</li>
        #                 <li class='card_body--lighterText'>Sim Card RM10</li>
        #             </ul>
        #         ",
        #     },
        #     {
        #         id: "contact-celcom45"
        #         name: "celcom",
        #         price: "RM45.00",
        #         sold: "25"
        #         img: "/images/products/celcom.jpg"
        #         message: {
        #             mobile: "https://wa.me/+60126113810?text=I am interested in CELCOM with price RM 45.00",
        #             desktop: "https://web.whatsapp.com/send?phone=%2B60126113810&text=I+am+interested+in+Celcom+with+price+RM+45.00&app_absent=0"
        #         }
        #         description: "
        #             <ul class='card-text'>
        #                 <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
        #                 <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
        #                 <li class='card_body--lighterText'>Bulanan / Monthly RM35</li>
        #                 <li class='card_body--lighterText'>Sim Card RM10</li>
        #             </ul>
        #         ",
        #     },
        #     {
        #         id: "contact-umobile68"
        #         name: "u mobile",
        #         price: "RM68.00",
        #         sold: "25"
        #         img: "/images/products/umobile.jpg"
        #         message: {
        #             mobile: "",
        #             desktop: ""
        #         }
        #         description: "
        #             <ul class='card-text'>
        #                 <li class='card_body--lighterText'>GX68</li>
        #                 <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
        #                 <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
        #                 <li class='card_body--lighterText'>Kepantasan Tanpa Had / Speed Without Capping</li>
        #                 <li class='card_body--lighterText'>Bulanan / Monthly RM68</li>
        #                 <li class='card_body--lighterText'>Pascabayar / Postpaid</li>
        #             </ul>
        #         ",
        #     },
        #     {
        #         id: "contact-umobile40"
        #         name: "u mobile",
        #         price: "RM40.00",
        #         sold: "25"
        #         img: "/images/products/umobile.jpg"
        #         message: {
        #             mobile: "https://wa.me/+60126113810?text=I am interested in UMOBILE with price RM 40.00",
        #             desktop: "https://web.whatsapp.com/send?phone=%2B60126113810&text=I+am+interested+in+Umobile+with+price+RM+40.00&app_absent=0"
        #         }
        #         description: "
        #             <ul class='card-text'>
        #                 <li class='card_body--lighterText'>GX30</li>
        #                 <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
        #                 <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
        #                 <li class='card_body--lighterText'>Bulanan / Monthly RM30</li>
        #                 <li class='card_body--lighterText'>Sim Card RM10</li>
        #             </ul>
        #         ",
        #     },
        # ]
        @products = [
            {
                id: "contact-irssoft"
                name: "IRS Soft",
                price: "RM1800.00",
                img: "/images/products/irs.jpg"
                message: {
                    mobile: "https://wa.me/+60126113810?text=#{
                        switch @currentLang
                            when "BM" then "Saya berminat untuk membeli IRS Soft dengan harga RM 1800.00"
                            when "CN" then "我有兴趣想以RM1800.00的价格购买IRS Soft"
                            else "I am interested in IRS Soft with price RM 1800.00"
                    }",
                    desktop: "https://web.whatsapp.com/send?phone=%2B60126113810&text=#{
                        switch @currentLang
                            when "BM" then "Saya berminat untuk IRS Soft membeli dengan harga RM 1800.00"
                            when "CN" then "我有兴趣想以RM1800.00的价格购买IRS Soft"
                            else "I am interested in IRS Soft with price RM 1800.00"
                    }&app_absent=0"
                }
                description: {
                    EN: "
                        <ul class='card-text'>
                            <li class='card_body--lighterText'>GX30</li>
                            <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
                            <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
                            <li class='card_body--lighterText'>Bulanan / Monthly RM30</li>
                            <li class='card_body--lighterText'>Sim Card RM10</li>
                        </ul>
                    ",
                    BM: "",
                    CN: ""
                }
            },
            {
                id: "contact-autocountreporting"
                name: "Autocount Reporting",
                price: "RM1800.00",
                img: "/images/products/autocount.jpg"
                message: {
                    mobile: "https://wa.me/+60126113810?text=#{
                        switch @currentLang
                            when "BM" then "Saya berminat untuk membeli Autocount Reporting dengan harga RM 1800.00"
                            when "CN" then "我有兴趣想以RM1800.00的价格购买Autocount Reporting"
                            else "I am interested in Autocount Reporting with price RM 1800.00"
                    }",
                    desktop: "https://web.whatsapp.com/send?phone=%2B60126113810&text=#{
                        switch @currentLang
                            when "BM" then "Saya berminat untuk membeli Autocount Reporting dengan harga RM 1800.00"
                            when "CN" then "我有兴趣想以RM1800.00的价格购买Autocount Reporting"
                            else "I am interested in Autocount Reporting with price RM 1800.00"
                    }&app_absent=0"
                }
                description: {
                    EN: "
                        <ul class='card-text'>
                            <li class='card_body--lighterText'>GX30</li>
                            <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
                            <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
                            <li class='card_body--lighterText'>Bulanan / Monthly RM30</li>
                            <li class='card_body--lighterText'>Sim Card RM10</li>
                        </ul>
                    ",
                    BM: "",
                    CN: ""
                }
            },
            {
                id: "contact-branchreport1"
                name: "Branch Report 1",
                price: "RM1800.00",
                img: "/images/products/branch_report_1.jpg"
                message: {
                    mobile: "https://wa.me/+60126113810?text=#{
                        switch @currentLang
                            when "BM" then "Saya berminat untuk membeli Branch Report 1 dengan harga RM 1800.00"
                            when "CN" then "我有兴趣想以RM1800.00的价格购买Branch Report 1"
                            else "I am interested in Branch Report 1 with price RM 1800.00"
                    }",
                    desktop: "https://web.whatsapp.com/send?phone=%2B60126113810&text=#{
                        switch @currentLang
                            when "BM" then "Saya berminat untuk membeli Branch Report 1 dengan harga RM 1800.00"
                            when "CN" then "我有兴趣想以RM1800.00的价格购买Branch Report 1"
                            else "I am interested in Branch Report 1 with price RM 1800.00"
                    }&app_absent=0"
                }
                description: {
                    EN: "
                        <ul class='card-text'>
                            <li class='card_body--lighterText'>GX30</li>
                            <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
                            <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
                            <li class='card_body--lighterText'>Bulanan / Monthly RM30</li>
                            <li class='card_body--lighterText'>Sim Card RM10</li>
                        </ul>
                    ",
                    BM: "",
                    CN: ""
                }
            },
            {
                id: "contact-branchreport2"
                name: "Branch Report 2",
                price: "RM1800.00",
                img: "/images/products/branch_report_2.jpg"
                message: {
                    mobile: "https://wa.me/+60126113810?text=#{
                        switch @currentLang
                            when "BM" then "Saya berminat untuk membeli Branch Report 2 dengan harga RM 1800.00"
                            when "CN" then "我有兴趣想以RM1800.00的价格购买Branch Report 2"
                            else "I am interested in Branch Report 2 with price RM 1800.00"
                    }",
                    desktop: "https://web.whatsapp.com/send?phone=%2B60126113810&text=#{
                        switch @currentLang
                            when "BM" then "Saya berminat untuk membeli Branch Report 2 dengan harga RM 1800.00"
                            when "CN" then "我有兴趣想以RM1800.00的价格购买Branch Report 2"
                            else "I am interested in Branch Report 2 with price RM 1800.00"
                    }&app_absent=0"
                }
                description: {
                    EN: "
                        <ul class='card-text'>
                            <li class='card_body--lighterText'>GX30</li>
                            <li class='card_body--lighterText'>Call Tanpa Had / Unlimited Call</li>
                            <li class='card_body--lighterText'>Data Tanpa Had / Unlimited Data</li>
                            <li class='card_body--lighterText'>Bulanan / Monthly RM30</li>
                            <li class='card_body--lighterText'>Sim Card RM10</li>
                        </ul>
                    ",
                    BM: "",
                    CN: ""
                }
            }
        ]
        return

    render: ->
        return "
            #{SectionHeader.render(@sectionTitleComponent, @currentLang)}
            <div class='container pb-5'>
                <div class='row'>
                    #{@products.map((product, key) => @renderCardsContainer(product, key) ).join("")}
                </div>
            </div>
        "

    renderMobile: ->
        return "
            #{SectionHeader.render(@sectionTitleComponent, @currentLang)}
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
        <div class='col-12 col-md-#{12 / @products.length} pb-5 pb-md-0'>
            <div class='product card hoverable' data-aos='flip-right' data-aos-delay='#{offset * 100}'>
                <div class='blue card-header text-uppercase text-center text-white'>#{product.name}</div>
                <img class='product__img card-img-top mx-auto p-3' src='#{product.img}' alt='#{product.name} image' title='#{product.name}'>
                #{
                    ###
                <a class='product__detailBtn blue lighten-2 hoverable w-100 text-center text-white d-flex flex-column py-2'>
                    <i class='fas fa-angle-up'></i>
                    View Detail
                </a> 
                <div class='product__detailBody card-body' data-is-active='false'>
                    #{product.description[@currentLang]}
                </div>
                    ###
                }
                <div class='card-footer text-center'>
                    <div class='d-flex flex-column justify-content-center align-items-center'>
                        <h4 class='h4 h4-responsive font-weight-bold p-0 m-0 py-3'>#{product.price}</h4>
                    </div>
                    <button id='#{product.id}' class='btn btn-primary rounded'>#{@button[@currentLang]}</button>
                </div>
            </div>
        </div>
        "