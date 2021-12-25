import $ from "jquery"
import Policy from "../renders/Policy.coffee"
import Header from "../renders/Header.coffee"
import ChangeIcon from "./helpers/ChangeIcon.coffee"

export default class SwitchPage
    constructor: ->
        @policy = new Policy()
        @header = new Header()
        @headerMenu = @header.headerMenu
        @policyContent = @policy.policies
        @mainBody = $("#mainBody")
        @policyContainer = $("#policyContainer")
        @policyHeader = $("#policyContainer > div > h2")
        @policyBody = $("#policyBody")
        @contactUsBody = $("#contactUs")
        @headerMenuBtn = $("#header-menu-btn")
        @headerMenuBody = $("#header-menu-body")
        @events()
        return

    events: ->
        
        @headerMenu.forEach((menu) =>
            $("#{menu.link}-menuBtn").click({type: menu.type, menu: menu.menu}, (e) =>
                switch e.data.type
                    when "single"
                        if @mainBody.hasClass("d-none")
                            @mainBody.removeClass("d-none")

                        if not @policyContainer.hasClass("d-none")
                            @policyContainer.addClass("d-none")

                        if @contactUsBody.hasClass("d-none")
                            @contactUsBody.removeClass("d-none")

                        history.replaceState(null, null, ' ')

                    when "multi"
                        e.data.menu.forEach((menu) =>
                            $("#{menu.link}-menuBtn").click(() =>
                                if not @mainBody.hasClass("d-none")
                                    @mainBody.addClass("d-none")
        
                                if @policyContainer.hasClass("d-none")
                                    @policyContainer.removeClass("d-none")

                                if not @contactUsBody.hasClass("d-none")
                                    @contactUsBody.addClass("d-none")

                                @policyHeader.empty().text(menu.title)
                                @policyBody.empty().html(@policy.generateAccordions(menu.link))

                                if @headerMenuBtn.length > 0
                                    ChangeIcon.changeMenuIcon({
                                        headerMenuBody: @headerMenuBody,
                                        headerMenuBtn: @headerMenuBtn
                                    })
                            )
                        )
            )    
        )
        return