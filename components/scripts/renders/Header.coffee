import $ from "jquery"

export default class Header
    constructor: ->
        @titleImage = "./images/titleImage.jpeg"

        @headerMenu = [
            {
                type: "single",
                title: "Home",
                link: "#home"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "Services",
                link: "#services"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "Products",
                link: "#products"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "About Us",
                link: "#aboutUs"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "Our Team",
                link: "#ourTeam"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "Testimonials",
                link: "#testimonials"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "Partners",
                link: "#partners"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "single",
                title: "Contact Us",
                link: "#contactUs"
                scrollTop_desktop: 0,
                scrollTop_mobile: 0
            },
            {
                type: "multi",
                title: "Policy",
                menu: [
                    {
                        type: "single",
                        title: "Privary Policy",
                        link: "#privaryPolicy"
                    },
                    {
                        type: "single",
                        title: "Return & Refund",
                        link: "#returnRefund"
                    },
                    {
                        type: "single",
                        title: "Shipping Policy",
                        link: "#shippingPolicy"
                    },
                    {
                        type: "single",
                        title: "Terms & Condition",
                        link: "#termsCondition"
                    },
                ]
            }
        ]
        return

    render: ->
        return "
            <div class='blue darken-1 d-flex justify-content-center align-items-center flex-column'>
                <img class='img-fluid rounded p-2' src='#{@titleImage}' alt='Nightcat Logo' style='width: 5%;'/>
                <h2 class='text-white h2 h2-responsive text-uppercase font-weight-bold p-0 m-0'>Nightcat Digital Solutions</h2>
                <p class='text-white small p-0 m-0 mb-3'>Improving Traditional Business Model and Challenge New Technology Limits</p>
            </div>
            <div class='blue lighten-1'>
                <ul class='text-white d-flex flex-row justify-content-center mb-0' style='list-style-type: none;'>
                    #{@headerMenu.map(((item) -> @renderMenuList(item)).bind(@)).join("")}
                </ul>
            </div>
        "
    
    renderMobile: ->
        return "
            <div class='blue darken-1 d-flex justify-content-center align-items-center flex-column vw-100 p-0 m-0'>
                <img class='img-fluid rounded p-1' src='#{@titleImage}' alt='Nightcat Logo' style='width: 20%;'/>
                <h2 class='text-white text-center h2 h2-responsive text-uppercase font-weight-bold mt-1 p-2 p-0 m-0'>Nightcat Digital Solutions</h2>
            </div>
            <div class='clearfix vw-100 position-absolute fixed-top'>
                <button id='header-menu-btn' type='button' class='d-block float-right btn btn-info rounded p-3'>
                    <i class='fas fa-bars fa-2x'></i>
                </button>
            </div>
        "
    
    renderMenu: ->
        return "
            <div id='header-menu-body' class='position-fixed vh-100 vw-100 m-0 p-0 blue lighten-3 d-none' style='z-index:1600!important;'>
                <ul class='text-white d-flex flex-column justify-content-center w-100 p-0 m-0' style='list-style-type: none;'>
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
            <li class='blue px-5 py-3 px-md-4 py-md-2'>
                <a class='text-light text-center' id='#{(item.title).toLowerCase()}-menuBtn' href='#{item.link}'>#{item.title}</a>
            </li> 
        "

    renderMultiMenu: (items) ->
        return "
            <a class='text-light blue px-5 py-3 px-md-4 py-md-2 dropdown-toggle' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Policy</a> 
            <div class='dropdown-menu #{if window.innerWidth <= 720 then "vw-100"}'>
                #{        
                    (items.menu).map((item) -> 
                        return "<a class='dropdown-item' href='#{item.link}'>#{item.title}</a>"
                    ).join("")
                }
            </div>
        "

        