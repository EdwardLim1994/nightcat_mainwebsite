import $ from "jquery"

export default class ShowProductDetail
    constructor: ->
        @productBtn = $(".product__detailBtn")
        @events()
        return

    events: ->
        @productBtn.click((e) =>
            if $(e.currentTarget).parent().find(".product__detailBody").data('is-active') is true
                $(e.currentTarget).parent().find(".product__detailBody").hide("product__detailBody--toggled").data('is-active', false)
            else
                $(e.currentTarget).parent().find(".product__detailBody").show("product__detailBody--toggled").data('is-active', true)

            $(e.currentTarget).find("i").toggleClass('fa-angle-up fa-angle-down')
        )
        return