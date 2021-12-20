import $ from "jquery"

export default class ScrollToContactUsBtn
    constructor: ->
        return

    @render: (components) ->
        return "
            <button class='contactBtn__scrollToContact btn btn-primary py-3 w-100 m-0'>
                <p class='p-0 m-0'>#{components.title}</p>
                <i class='fas fa-arrow-down'></i>
            </button>
        "