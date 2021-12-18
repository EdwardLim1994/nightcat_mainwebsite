import $ from "jquery"

import Header from "../renders/Header.coffee"

export default class ScrollToPosition
    constructor: ->
        @header = new Header
        @headerMenu = @header.headerMenu
        @joinBtn = $("#join-btn")
        @events()
        return

    events: ->
        @headerMenu.forEach((headerMenu) => 
            switch headerMenu.type
                when "single"
                    $("#{headerMenu.link}-menuBtn").click( -> $(headerMenu.link)[0].scrollIntoView())
                    break

                when "multi"
                    break
        )

        @joinBtn.click( ->
            $('html, body').animate({
                scrollTop: $("#contactUs").offset().top
            }, 1000);
        )

        return
