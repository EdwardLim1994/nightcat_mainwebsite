import $ from "jquery"
import env from "../env.coffee"

export default class Header
    constructor: ->
        @titleImage = "./images/titleImage.jpeg"
        @header = {
            name: "Nightcat Digital Solutions",
            subtitle: "Help to enchance Traditional Business Model to be better equipped post Covid 19 and Allow New Business operation to be run smoothly using Newest Technology Available"
        }
        @headerMenu = [
            {
                type: "single",
                title: "home",
                link: "#home"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "services",
                link: "#services"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "products",
                link: "#products"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "about us",
                link: "#aboutUs"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "our team",
                link: "#ourTeam"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "testimonials",
                link: "#testimonials"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "partners",
                link: "#partners"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "contact us",
                link: "#contactUs"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "multi",
                title: "policy",
                link: "#policy",
                menu: [
                    {
                        type: "single",
                        title: "privary policy",
                        link: "#privaryPolicy"
                    },
                    {
                        type: "single",
                        title: "return & refund",
                        link: "#returnRefund"
                    },
                    {
                        type: "single",
                        title: "shipping policy",
                        link: "#shippingPolicy"
                    },
                    {
                        type: "single",
                        title: "terms & condition",
                        link: "#termsCondition"
                    },
                ]
            }
        ]
        return

    render: ->
        return "
            <div class='blue darken-3'>
                <div class='m-0 p-0 py-2 d-flex justify-content-center align-items-center flex-row'>
                    <a style='color:black;' class='w-100 text-center header__contact--whatsapp whatsapp-link d-flex flex-row justify-content-center align-items-center header__contact'>
                        <i class='fab fa-whatsapp fa-2x headerContact__icon'></i>
                        <p class='text-center p-0 m-0 d-flex flex-row justify-content-center align-items-center'>
                        <i class='fab fa-whatsapp fa-2x'></i>
                            <span class='headerContact__content'>+#{env.PHONE_NUM}</span>
                        </p>
                    </a>
                    <a style='color:black;' href='tel:+#{env.PHONE_NUM}' class='w-100 text-center header__contact--phone d-flex flex-row justify-content-center align-items-center header__contact'>
                        <i class='fas fa-phone fa-2x headerContact__icon'></i>
                        <p class='text-center p-0 m-0 d-flex flex-row justify-content-center align-items-center'>
                        <i class='fas fa-phone fa-2x'></i>
                            <span class='headerContact__content'>+#{env.PHONE_NUM}</span>
                        </p>
                    </a>
                    <a style='color:black;' href='mailto:#{env.EMAIL}' class='w-100 text-center header__contact--email d-flex flex-row justify-content-center align-items-center header__contact'>
                        <i class='fas fa-envelope fa-2x headerContact__icon'></i>
                        <p class='text-center p-0 m-0 d-flex flex-row justify-content-center align-items-center'>
                        <i class='fas fa-envelope fa-2x'></i>
                            <span class='headerContact__content'>#{env.EMAIL}</span>
                        </p>
                    </a>
                </div>
            </div>
            <div class='blue darken-1 d-flex justify-content-center align-items-center flex-column'>
                <img class='img-fluid p-2 header__logo' src='#{@titleImage}' alt='Nightcat Logo'/>
                <h2 class='text-white h2 h2-responsive text-uppercase font-weight-bold p-0 m-0'>#{@header.name}</h2>
                <p class='text-white small p-0 m-0 mb-2 header__subtitle'>#{@header.subtitle}</p>
            </div>
            <div class='header__menuBackground'>
                <ul class='header__menuBody text-white d-flex flex-row justify-content-center aligh-items-center m-0 p-0'>
                    #{@headerMenu.map(((item) -> @renderMenuList(item)).bind(@)).join("")}
                </ul>
            </div>
        "
    
    renderMobile: ->
        return "
            <div class='blue darken-1 d-flex justify-content-center align-items-center flex-column vw-100 p-0 m-0'>
                <img class='img-fluid rounded p-1 header__logo' src='#{@titleImage}' alt='Nightcat Logo'/>
                <h2 class='text-white text-center h2 h2-responsive text-uppercase font-weight-bold mt-1 p-2 p-0 m-0'>Nightcat Digital Solutions</h2>
            </div>
            <div class='clearfix vw-100 position-absolute fixed-top'>
                <button id='header-menu-btn' type='button' class='d-block float-right btn btn-info rounded p-3 mr-md-4'>
                    <i class='fas fa-bars fa-2x'></i>
                </button>
            </div>
        "
    
    renderMenu: ->
        return "
            <div id='header-menu-body' class='header__menuInnerBody position-fixed vh-100 vw-100 m-0 p-0 blue lighten-3 d-none overflow-auto' style='opacity: 98%;'>
                <ul class='header_menuBody text-white d-flex flex-column justify-content-center w-100 p-0 m-0'>
                    #{
                    # "<li class='px-5 py-3 px-md-4 py-md-2 d-flex justify-content-end'>
                    #     <a id='header-menu-close'>
                    #         <i class='fas fa-times fa-2x'></i>
                    #     </a>
                    # </li>"
                    }
                    #{@headerMenu.map(((item) -> @renderMenuList(item)).bind(@)).join("")}
                </ul>
            </div>
        "

    renderMenuList: (item) ->
        switch item.type
            when "single"
                @renderSingleMenu(item)

            when "multi"
                @renderMultiMenu(item)


    renderSingleMenu: (item) ->
        return "
            <li class='d-flex align-items-center #{if window.innerWidth <= 900 then "w-100" else ""}'>
                <a class='text-center px-5 py-3 px-md-4 py-md-2 text-capitalize button__headerMenu w-100' id='#{(item.link).replace("#", "")}-menuBtn' >#{item.title}</a>
            </li> 
        "

    renderMultiMenu: (items) ->
        return "
            <a class='text-center px-5 py-3 px-md-4 py-md-2 dropdown-toggle text-capitalize button__headerMenu' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false' id='#{(items.link).replace("#", "")}-menuBtn'>#{items.title}</a> 
            <div class='dropdown-menu #{if window.innerWidth <= 900 then "vw-100"}'>
                #{        
                    (items.menu).map((item) -> 
                        return "<a class='dropdown-item text-capitalize button__headerMenu--policy' href='#{item.link}' id='#{(item.link).replace("#", "")}-menuBtn'>#{item.title}</a>"
                    ).join("")
                }
            </div>
        "

        