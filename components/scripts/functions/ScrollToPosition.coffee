import $ from "jquery"

import Header from "../renders/Header.coffee"

export default class ScrollToPosition
    constructor: ->
        @header = new Header
        @headerMenu = @header.headerMenu
        @scrollToContactBtn = $(".contactBtn__scrollToContact")
        @scrollToTopBtn = $("#scroll-to-top-btn")
        @headerMenuBtn = $("#header-menu-btn")
        @headerMenuBody = $("#header-menu-body")
        @events()
        return

    events: ->
        @headerMenu.forEach((headerMenu) => 
            switch headerMenu.type
                when "single"
                    $("#home").addClass("menuButton--active")
                    $("#{headerMenu.link}-menuBtn").click( =>
                        if @headerMenuBtn.length > 0
                            if @headerMenuBody.hasClass("d-none")
                                @headerMenuBtn.find("i").removeClass("fa-bars").addClass("fa-times")
                            else
                                @headerMenuBtn.find("i").removeClass("fa-times").addClass("fa-bars")
                            @headerMenuBody.toggleClass("d-none")
                        
                        $('html, body').animate({
                            scrollTop: $(headerMenu.link).position().top - if window.innerWidth > 720 then 50 else 0
                        }, 1000);
                    )
                    break

                when "multi"
                    break
        )

        # $(window).scroll(() =>
        #     @headerMenu.forEach((headerMenu) =>
        #         if headerMenu.type is 'single'
        #             if $(document).scrollTop() >= $(headerMenu.link).position().top and $(document).scrollTop() <= $(headerMenu.link).position().bottom
        #                 $(headerMenu.link).addClass("menuButton--active")
        #             else
        #                 $(headerMenu.link).removeClass("menuButton--active")
        #     )
        # )

        @scrollToContactBtn.click(  ->
            $('html, body').animate({
                scrollTop: $("#contactUs").position().top
            }, 1000);
        )

        @scrollToTopBtn.click( ->
            $('html, body').animate({
                scrollTop: 0
            }, 1000);
        )

        return
