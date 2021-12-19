import $ from "jquery"

export default class SectionHeader
    constructor: ->
        return

    @renderSectionTitle: (component) ->
        return "
            <div class='py-4 py-md-5 #{
                    switch component.background 
                        when "dark" then "text-white" 
                        when "light" then "text-black"
                    }'>
                <h2 class='text-center h2 h2-responsive text-uppercase'  #{if component.background is "dark" then "style='text-shadow: 1px 1px rgba(0, 0, 0, 0.2)'"}>#{component.title}</h2>
                #{if window.innerWidth > 720 then "<p class='text-center'>#{component.subtitle}</p>" else ""}
            </div>
        "