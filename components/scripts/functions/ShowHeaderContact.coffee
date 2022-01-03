import $ from "jquery"

export default class ShowHeaderContact
    constructor: ->
        @headerContact = ["phone", "email", "whatsapp"]
        @events()
        return

    events: ->
        @headerContact.forEach((contact) =>
            @hoverHeaderContect(".header__contact--#{contact}")    
        )
        return

    hoverHeaderContect: (contactClass) ->
        $(contactClass).on(
            mouseenter: (e) => 
                
                setTimeout(() =>
                    $(e.currentTarget).find("p").animate(
                        width: "100%"
                    , 500)
                    $(e.currentTarget).find(".headerContact__content").animate(
                        opacity: "100%"
                    , 100)
                    $(e.currentTarget).find(".headerContact__icon").animate(
                        opacity: "0%"
                    , 50)
                , 200)  
                return
            mouseleave: (e) => 
                setTimeout(() => 
                    $(e.currentTarget).find("p").animate(
                        width: "0%"
                    , 200)
                    $(e.currentTarget).find(".headerContact__content").animate(
                        opacity: "0%"
                    , 300)
                , 200)
                setTimeout(() =>
                    $(e.currentTarget).find(".headerContact__icon").css("opacity", 1)   
                , 500)
                return
        )
