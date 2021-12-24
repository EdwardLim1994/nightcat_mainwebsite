import $ from "jquery"

import Header from "../renders/Header.coffee"
import ChangeIcon from "./helpers/ChangeIcon.coffee"
import ResponsiveHeader from "./helpers/ResponsiveHeader.coffee"

export default class ScrollToPosition
    constructor: ->
        @header = new Header
        @headerMenu = @header.headerMenu
        @scrollToContactBtn = $(".contactBtn__scrollToContact")
        @scrollToTestiminialLink = $(".scroll-to-testimonial-link")
        @scrollToTopBtn = $("#scroll-to-top-btn")
        @headerMenuBtn = $("#header-menu-btn")
        @headerMenuBody = $("#header-menu-body")
        @homeMenuBtn = $("#home-menuBtn")
        @headerContainer = $("#header")
        @sectionIds = $('a.button__headerMenu');
        @policySubmenu = $(".button__headerMenu--policy")
        @isScrolling = false
        @scrollTimer
        @events()
        return

    events: ->
        @headerMenu.forEach((headerMenu) => 
            switch headerMenu.type
                when "single"
                    # @homeMenuBtn.addClass("button__headerMenu--active")
                    $("#{headerMenu.link}-menuBtn").click( =>
                        if @headerMenuBtn.length > 0
                            ChangeIcon.changeMenuIcon({
                                headerMenuBody: @headerMenuBody,
                                headerMenuBtn: @headerMenuBtn
                            })
                        
                        $('html, body').animate({
                            scrollTop: $(headerMenu.link).position().top - if window.innerWidth > 900 then 50 else 0
                        }, 300);
                    )
                    break

                when "multi"
                    break
        )

        $(window).scroll(() =>
            if not @scrollTimer
                @scrollTimer = setTimeout(() =>
                    if $(document).scrollTop() >= (if window.innerWidth > 900 then 604 else 554) and $("#header").data('is-on-services-section') is false
                        ResponsiveHeader.hideLogoSubtitle()
                        @scrollToTopBtn.animate({
                            right: "0"
                        }, 500)

                    else
                        ResponsiveHeader.showLogoSubtitle()
                        @scrollToTopBtn.animate({
                            right: "-5rem"
                        }, 1000)

                    @scrollTimer = null
                , 500)

            # @sectionIds.each(() =>
            #     if $(@).attr("id") is not "policy"
            #         container = $(@).attr('href');
            #         containerOffset = $(container).position().top;
            #         containerHeight = $(container).outerHeight();
            #         containerBottom = containerOffset + containerHeight;
            #         scrollPosition = $(document).scrollTop();

            #         if scrollPosition < containerBottom - 20 && scrollPosition >= containerOffset - 20
            #             $(@).addClass('button__headerMenu--active');
            #         else
            #             $(@).removeClass('button__headerMenu--active');
            # )
            
        )

        @scrollToContactBtn.click(() =>
            @scrollFunction($("#contactUs").position().top)
            $("#contactName").focus()
        )

        @scrollToTestiminialLink.click(() =>
            @scrollFunction($("#testimonials .container-fluid").position().top)
        )

        @scrollToTopBtn.click(() =>
            $("input").focusout()
            @scrollFunction(0)
        )

        @policySubmenu.click((e) =>
            @scrollFunction(0)
        )

        return

    scrollFunction: (position) ->
        $('html, body').animate({
            scrollTop: position
        }, 300);
