import $ from "jquery"

export default class ChangeIcon
    constructor: ->
        return

    # Example static function
    @changeMenuIcon: (components) ->
        if (components.headerMenuBody).hasClass("d-none")
            (components.headerMenuBtn).find("i").removeClass("fa-bars").addClass("fa-times")
        else
            (components.headerMenuBtn).find("i").removeClass("fa-times").addClass("fa-bars")
        (components.headerMenuBody).toggleClass("d-none")

        return