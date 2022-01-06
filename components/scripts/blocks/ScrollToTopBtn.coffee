import $ from "jquery"

export default class ScrollToTopBtn
    constructor: ->
        return

    @render: ->
        return "
            <button id='scroll-to-top-btn' type='button' class='btn btn-info rounded px-2 py-1 mx-md-5 mx-3 my-3'>
                <i class='fas fa-angle-up fa-2x'></i>
            </button>
        "