import $ from "jquery"

export default class ScrollToContactUsBtn
    constructor: ->
        return

    @render: (components) ->
        return "
            <button class='contactBtn__scrollToContact btn btn-primary #{if components.padding then components.padding else"py-3"} w-100 m-0 d-flex justify-content-center align-items-center #{if components.flexDirection then components.flexDirection else ""}' #{if components.rounder then "style='border-radius:10px;'" else ""}>
                <p class='p-0 m-0 mr-2'>#{components.title}</p>
                <i class='fas fa-arrow-down'></i>
            </button>
        "