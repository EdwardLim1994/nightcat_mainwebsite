import $ from "jquery"

export default class ScrollToTopBtn
    constructor: ->
        return

    @generateScrollToTopBtn: ->
        return "
            <div class='clearfix vw-100 position-fixed' style='bottom:0%;z-index:1500;opacity:70%;'>
                <button id='scroll-to-top-btn' type='button' class='d-block float-right btn btn-info rounded px-2 py-1 m-3'>
                    <i class='fas fa-angle-up fa-2x'></i>
                </button>
            </div>
        "