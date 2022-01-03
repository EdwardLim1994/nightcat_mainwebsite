import $ from "jquery"
import "jquery.cookie"
import Products from "../renders/Products.coffee"
import env from "../env.coffee"

export default class SendMessage
    constructor: ->
        @products = new Products
        @contactName = $("#contactName")
        @contactEmail = $("#contactEmail")
        @contactSubject = $("#contactSubject")
        @contactMessage = $("#contactMessage")
        @contactFormSubmitBtn = $("#contactForm-submitBtn")
        @modalHeader = $("#modalWarning-header")
        @modalContent = $("#modalWarning-content")
        @modalButton = $("#modalWarning-dismiss")
        @currentLang = if $.cookie("lang") then $.cookie("lang") else "EN"
        @screenWidth = 1025
        @events()
        return

    events: ->
        $.each(@products.products, (i, product) =>
            if window.outerWidth < @screenWidth
                $("##{product.id}").click({messege: product.message}, (e)-> 
                    window.location = e.data.messege.mobile
                )    
            
            else
                $("##{product.id}").click({messege: product.message}, (e)-> 
                    window.location = e.data.messege.desktop
                )  
        )

        @contactFormSubmitBtn.click(() => 
            isNameEmpty = true
            isSubjectEmpty = true
            isMessageEmpty = true
            contents = []
            
            if @contactName.val()
                isNameEmpty = false

            if @contactSubject.val()
                isSubjectEmpty = false

            if @contactMessage.val()
                isMessageEmpty = false

            if not isNameEmpty and not isSubjectEmpty and not isMessageEmpty
                contactContent = "*#{
                    switch @currentLang
                        when "BM" then "Saya mahu mengetahui terhadap"
                        when "CN" then "我想知道更多关于"
                        else "I would like to know more about"
                    } NIGHTCAT DIGITAL SOLUTIONS* #{env.URL_DICTIONARY.space}#{env.URL_DICTIONARY.space}*#{
                        switch @currentLang
                            when "BM" then "Name"
                            when "CN" then "名字"
                            else "Name"
                    } :* #{@contactName.val()}#{env.URL_DICTIONARY.space}*#{
                        switch @currentLang
                            when "BM" then "Email"
                            when "CN" then "电邮"
                            else "Email"
                    } :* #{@contactEmail.val()}#{env.URL_DICTIONARY.space}*#{
                        switch @currentLang
                            when "BM" then "Subjek"
                            when "CN" then "主题"
                            else "Subject"
                    } :* #{@contactSubject.val()}#{env.URL_DICTIONARY.space}*#{
                        switch @currentLang
                            when "BM" then "Mesej"
                            when "CN" then "信息"
                            else "Message"
                    } :* #{env.URL_DICTIONARY.space}#{@contactMessage.val()}"

                if window.outerWidth < @screenWidth
                    window.open("https://wa.me/+#{env.PHONE_NUM}?text=#{contactContent}", '_blank')
                else
                    window.open("https://web.whatsapp.com/send?phone=%2B#{env.PHONE_NUM}&text=#{contactContent}&app_absent=0", '_blank')
            else
                if isNameEmpty
                    contents.push(
                        switch @currentLang
                            when "BM" then "Nama"
                            when "CN" then "名字"
                            else "Name"
                    )
                if isSubjectEmpty
                    contents.push(
                        switch @currentLang
                            when "BM" then "Subjek"
                            when "CN" then "主题"
                            else "Subject"
                    )
                if isMessageEmpty
                    contents.push(
                        switch @currentLang
                            when "BM" then "Mesej"
                            when "CN" then "信息"
                            else "Message"
                    )
                @modalHeader.empty().html(
                    switch @currentLang
                        when "BM" then "Amaran"
                        when "CN" then "警告"
                        else "Warning"
                    )
                @modalButton.empty().html(
                    switch @currentLang
                        when "BM" then "Faham"
                        when "CN" then "知道了"
                        else "OK"
                    )
                @modalContent.empty().html("
                    <p>
                        #{
                            switch @currentLang
                                when "BM" then "Medan-medan berikut adalah wajib, tetapi didapati kosong:"
                                when "CN" then "以下的空栏不可以空缺，但却发现是空缺的:"
                                else "The following fields are required. But found empty:"
                        }
                    </p>
                    <ul class='p-0 m-0' style='list-style-type: none'>
                        #{
                            contents.map((content) -> 
                                return "<li class='font-weight-bold text-capitalize'>#{content}</li>"
                            ).join("")
                        }
                    </ul>
                ")
                window.location = "#notify"
        )

        return
