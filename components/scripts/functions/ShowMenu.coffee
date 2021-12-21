import $ from "jquery"
import ChangeIcon from "./helpers/ChangeIcon.coffee"

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

        @headerMenuBtn.click(() => ChangeIcon.changeMenuIcon({
                headerMenuBody: @headerMenuBody,
                headerMenuBtn: @headerMenuBtn
            })
        )
        return