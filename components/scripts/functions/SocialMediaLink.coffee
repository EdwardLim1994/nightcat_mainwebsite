import $ from "jquery"
import "jquery.cookie"

export default class SocialMediaLink
    constructor: ->
        @whatsapp = $(".whatsapp-link")
        @facebook = $("#facebook-link")
        @instagram = $("#instagram-link")
        @twitter = $("#twitter-link")
        @currentLang = if $.cookie("lang") then $.cookie("lang") else "EN"
        @events()
        return

    events: ->
        @whatsapp.on('click', () =>
            #If current device is on mobile, redirect to mobile based url, otherwise redirect to desktop based url
            if /iPhone|iPad|iPod|Android/i.test(navigator.userAgent)
                window.open(
                    "https://wa.me/+60126113810?text=#{
                        switch @currentLang
                            when "BM" then "Saya mahu mengetahui terhadap"
                            when "CN" then "我想知道更多关于"
                            else "I would like to know more about"
                        } NIGHTCAT DIGITAL SOLUTIONS*",
                    '_blank'
                )
            else 
                window.open(
                    "https://web.whatsapp.com/send?phone=%2B60126113810&text=#{
                        switch @currentLang
                            when "BM" then "Saya mahu mengetahui terhadap"
                            when "CN" then "我想知道更多关于"
                            else "I would like to know more about"
                        } NIGHTCAT DIGITAL SOLUTIONS*'&app_absent=0",
                    '_blank'
                )
            
        )
        return