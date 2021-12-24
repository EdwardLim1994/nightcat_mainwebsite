import $ from "jquery"
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
        @modalContent = $("#modalWatning-content")
        @screenWidth = 1025
        @phone = "+60167227910"#"+60126113810"
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
            isEmailEmpty = true
            isSubjectEmpty = true
            isMessageEmpty = true
            contents = []
            
            if @contactName.val()
                isNameEmpty = false

            if @contactEmail.val()
                isEmailEmpty = false

            if @contactSubject.val()
                isSubjectEmpty = false

            if @contactMessage.val()
                isMessageEmpty = false

            if not isNameEmpty and not isEmailEmpty and not isSubjectEmpty and not isMessageEmpty
                contactContent = "*I would like to know more about NIGHTCAT DIGITAL SOLUTIONS* #{env.URL_DICTIONARY.space}#{env.URL_DICTIONARY.space}*Name :* #{@contactName.val()}#{env.URL_DICTIONARY.space}*Email :* #{@contactEmail.val()}#{env.URL_DICTIONARY.space}*Subject :* #{@contactSubject.val()}#{env.URL_DICTIONARY.space}*Message :* #{env.URL_DICTIONARY.space}#{@contactMessage.val()}"
                if window.outerWidth < @screenWidth
                    window.location = "https://wa.me/+#{env.PHONE_NUM}?text=#{contactContent}"
                else
                    window.location = "https://web.whatsapp.com/send?phone=%2B#{env.PHONE_NUM}&text=#{contactContent}&app_absent=0"
            else
                if isNameEmpty
                    contents.push("name")
                if isEmailEmpty
                    contents.push("email")
                if isSubjectEmpty
                    contents.push("subject")
                if isMessageEmpty
                    contents.push("message")
                @modalContent.empty().html("
                    <p>The following fields are required. But found empty:</p>
                    <ul style='list-style-type: none'>
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
