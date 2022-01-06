import $ from "jquery"
import "jquery.cookie"

export default class SwitchLanguageBtn

    @render: ->
        languages = ["EN", "BM", "CN"]
        currentSelectedLanguage = if $.cookie("lang") then $.cookie("lang") else "EN"
        noneSelectedLanguage = languages.filter((lang) => return lang isnt currentSelectedLanguage)

        return "
            <div class='btn-group dropup'>
                <button type='button' class='btn btn-info rounded p-2 mx-md-5 mx-3 my-3 dropdown-toggle px-3' data-toggle='dropdown' aria-haspopup='true'
                    aria-expanded='false'>
                    #{currentSelectedLanguage}
                </button>
                <div class='dropdown-menu w-50' style='z-index:2000;min-width: 1rem'>
                    #{noneSelectedLanguage.map((lang) => return "<a class='dropdown-item languageSwitcher--option' data-lang='#{lang}'>#{lang}</a>").join("")}
                </div>
            </div>
        "