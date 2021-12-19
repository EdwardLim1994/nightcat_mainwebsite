import $ from "jquery"

export default class ShowMenu
    constructor: ->
        # @headerMenuOpen = $("#header-menu-open")
        # @headerMenuClose = $("#header-menu-close")
        @headerMenuBtn = $("#header-menu-btn")
        @headerMenuBody = $("#header-menu-body")
        @events()
        return

    events: ->

        # @headerMenuOpen.click(() => @headerMenuBody.removeClass("d-none").addClass("d-block"))
        # @headerMenuClose.click(() => @headerMenuBody.removeClass("d-block").addClass("d-none"))

        @headerMenuBtn.click(() =>  
            

            if @headerMenuBody.hasClass("d-none")
                @headerMenuBtn.find("i").removeClass("fa-bars").addClass("fa-times")
            else
                @headerMenuBtn.find("i").removeClass("fa-times").addClass("fa-bars")

            @headerMenuBody.toggleClass("d-none")
        )
        return