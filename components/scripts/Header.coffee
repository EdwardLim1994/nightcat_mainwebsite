import $ from "jquery"

export default class Header
    constructor: ->
        @titleImage = "./images/titleImage.jpeg"

        @headerMenu = [
            {
                type: "single",
                title: "Home",
                link: "#home"
            },
            {
                type: "single",
                title: "Services",
                link: "#services"
            },
            {
                type: "single",
                title: "Products",
                link: "#products"
            },
            {
                type: "single",
                title: "About Us",
                link: "#aboutUs"
            },
            {
                type: "single",
                title: "Our Team",
                link: "#ourTeam"
            },
            {
                type: "single",
                title: "Testimonials",
                link: "#testimonials"
            },
            {
                type: "single",
                title: "Partners",
                link: "#partners"
            },
            {
                type: "single",
                title: "Contact Us",
                link: "#contactUs"
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
            <header>
                <div class='blue darken-1 d-flex justify-content-center align-items-center flex-column'>
                    <img class='img-fluid rounded m-2' src='#{@titleImage}' alt='Nightcat Logo' style='width: 5%;'/>
                    <h2 class='text-white h2 h2-responsive text-uppercase font-weight-bold p-0 m-0'>Nightcat Digital Solutions</h2>
                    <p class='text-white small p-0 m-0 mb-3'>Improving Traditional Business Model and Challenge New Technology Limits</p>
                </div>
                <div class='blue lighten-1'>
                    <ul class='text-white d-flex flex-row justify-content-center' style='list-style-type: none;'>
                        #{@headerMenu.map(((item) -> @renderMenuList(item)).bind(@)).join("")}
                    </ul>
                </div>
            </header>
        "

    renderMenuList: (item) ->
        switch item.type
            when "single"
                @renderSingleMenu(item)

            when "multi"
                @renderMultiMenu(item)


    renderSingleMenu: (item) ->
        return "
            <li class='blue px-4 py-2'>
                <a class='text-light' href='##{item.link}'>#{item.title}</a>
            </li> 
        "

    renderMultiMenu: (items) ->
        return "
            <a class='text-light blue px-4 py-2 dropdown-toggle' type='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Basic dropdown</a> 
            <div class='dropdown-menu'>
                #{        
                    (items.menu).map((item) -> 
                        return "<a class='dropdown-item' href='#{item.link}'>#{item.title}</a>"
                    ).join("")
                }
            </div>
        "

        