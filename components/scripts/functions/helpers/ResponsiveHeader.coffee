import $ from "jquery"

export default class ResponsiveHeader
    constructor: ->
        return

    @showLogoSubtitle: ->
        $(".header__logo").removeClass("d-none")
        $(".header__subtitle").removeClass("header__subtitle--hidden")
        setTimeout(() =>
            #$("#header").attr('data-is-on-services-section', false)
            $(".header__logo").removeClass("header__logo--hidden")
            return
        , 100)

    @hideLogoSubtitle: ->
        $(".header__logo").addClass("header__logo--hidden")
        $(".header__subtitle").addClass("header__subtitle--hidden")
        #$("#header").attr('data-is-on-services-section', true)
        setTimeout(() =>
            if window.innerWidth > 900 then $(".header__logo").addClass("d-none")
            return
        , 400)