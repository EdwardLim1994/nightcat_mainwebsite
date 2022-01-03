import $ from "jquery"
import SwitchLanguageBtn from "../blocks/SwitchLanguageBtn.coffee"
import ScrollToTopBtn from '../blocks/ScrollToTopBtn.coffee';

export default class BottomUtilities
    constructor: ->
        return

    render: ->
        return "
            <div class='w-100 position-fixed d-flex flex-row justify-content-between align-items-center button__utilities'>
                #{SwitchLanguageBtn.render()}
                #{ScrollToTopBtn.render()}
            </div>
        "