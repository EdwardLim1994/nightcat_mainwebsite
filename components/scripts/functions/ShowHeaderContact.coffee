import $ from "jquery"

export default class ShowHeaderContact
    constructor: ->
        @headerContact = ["phone", "email", "whatsapp"]
        @events()
        return

    events: ->
        @headerContact.forEach((contact) =>
            @showContactDetail(".header__contact--#{contact}")    
        )


        return

    showContactDetail: (contactClass) ->
        $(contactClass).on(
            mouseenter: (e) => 
                $(e.currentTarget).find("p").animate(
                    width: "100%"
                , 500)
                return
            mouseleave: (e) => 
                $(e.currentTarget).find("p").animate(
                    width: "0%"
                , 500)
                return
        )
