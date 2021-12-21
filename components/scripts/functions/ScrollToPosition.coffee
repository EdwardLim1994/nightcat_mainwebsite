import $ from "jquery"

import Header from "../renders/Header.coffee"
import ChangeIcon from "./helpers/ChangeIcon.coffee"

export default class ScrollToPosition
    constructor: ->
        @header = new Header
        @headerMenu = @header.headerMenu
        @scrollToContactBtn = $(".contactBtn__scrollToContact")
        @scrollToTopBtn = $("#scroll-to-top-btn")
        @headerMenuBtn = $("#header-menu-btn")
        @headerMenuBody = $("#header-menu-body")
        @isScrolling = false
        @scrollTimer
        @events()
        return

    events: ->
        @headerMenu.forEach((headerMenu) => 
            switch headerMenu.type
                when "single"
                    #$("#home").addClass("menuButton--active")
                    $("#{headerMenu.link}-menuBtn").click( =>
                        if @headerMenuBtn.length > 0
                            ChangeIcon.changeMenuIcon({
                                headerMenuBody: @headerMenuBody,
                                headerMenuBtn: @headerMenuBtn
                            })
                        
                        $('html, body').animate({
                            scrollTop: $(headerMenu.link).position().top - if window.innerWidth > 720 then 50 else 0
                        }, 1000);
                    )
                    break

                when "multi"
                    break
        )

        $(window).scroll(() =>
            if not @scrollTimer
                @scrollTimer = setTimeout(() =>
                    if $(document).scrollTop() >= ($("#services").position().top - if window.innerWidth > 720 then 50 else 0) and $("#header").data('is-on-services-section') is false
                        $(".header__logo").addClass("header__logo--hidden")
                        $(".header__subtitle").addClass("header__subtitle--hidden")
                        $("#header").attr('data-is-on-services-section', true)
                        @scrollToTopBtn.animate({
                            right: "0"
                        }, 500)
                        setTimeout(() =>
                            $(".header__logo").addClass("d-none")
                            return
                        , 400)

                    else
                        $(".header__logo").removeClass("d-none")
                        $(".header__subtitle").removeClass("header__subtitle--hidden")
                        setTimeout(() =>
                            $("#header").attr('data-is-on-services-section', false)
                            $(".header__logo").removeClass("header__logo--hidden")
                            @scrollToTopBtn.animate({
                                right: "-5rem"
                            }, 1000)
                            return
                        , 100)

                    @scrollTimer = null
                , 500)
        )

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
