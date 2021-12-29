import $ from "jquery"

export default class SocialMediaLink
    constructor: ->
        @whatsapp = $(".whatsapp-link")
        @facebook = $("#facebook-link")
        @instagram = $("#instagram-link")
        @twitter = $("#twitter-link")
        @events()
        return

    events: ->
        @whatsapp.on('click', () =>
            #If current device is on mobile, redirect to mobile based url, otherwise redirect to desktop based url
            if /iPhone|iPad|iPod|Android/i.test(navigator.userAgent)
                window.open(
                    'https://wa.me/+60126113810?text=I want to know more about Attendance System.',
                    '_blank'
                )
            else 
                window.open(
                    'https://web.whatsapp.com/send?phone=%2B60126113810&text=I want to know more about Attendance System.&app_absent=0',
                    '_blank'
                )
            
        )
        return