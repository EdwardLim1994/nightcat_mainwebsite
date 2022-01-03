import $ from "jquery"
import "jquery.cookie"
import env from "../env.coffee"

export default class SwitchLanguage
    constructor: ->
        @languageSwitcherOption = $(".languageSwitcher--option")
        @events()
        return

    events: ->
        @languageSwitcherOption.click((e) =>
            if $(e.currentTarget).data("lang") is "EN"
                $.removeCookie(
                    "lang", 
                    {
                        domain: "#{env.DOMAIN}"
                    }
                )
                
            else
                $.cookie(
                    "lang", 
                    $(e.currentTarget).data("lang"), 
                    {
                        expires: 1, 
                        domain: "#{env.DOMAIN}"
                    }
                )

            location.reload()
        )
        return