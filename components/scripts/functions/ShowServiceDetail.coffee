import $ from "jquery"

export default class ShowServiceDetail
    constructor: ->
        @services = $(".services")
        @events()
        return

    events: ->
        @services.on(
            mouseenter: (e) => 
                currentDom = $(e.currentTarget)
                currentDom.find(".services__body").addClass("services__body--hovered")
                currentDom.find(".services__description").show("services__description--hovered")
                setTimeout (->
                    currentDom.find(".services__img").addClass("services__img--hovered")
                    return
                    ), 500
            
            mouseleave: (e) => 
                currentDom = $(e.currentTarget)
                currentDom.find(".services__body").removeClass("services__body--hovered")
                currentDom.find(".services__description").hide("services__description--hovered")
                setTimeout (->
                    currentDom.find(".services__img").removeClass("services__img--hovered")
                    return
                    ), 500
                
        )
        return