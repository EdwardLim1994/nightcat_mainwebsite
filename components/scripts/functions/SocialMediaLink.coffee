import $ from "jquery"

export default class SocialMediaLink
    constructor: ->
        @whatsapp = $("#whatsapp-link")
        @facebook = $("#facebook-link")
        @instagram = $("#instagram-link")
        @twitter = $("#twitter-link")
        @events()
        return

    events: ->
        return