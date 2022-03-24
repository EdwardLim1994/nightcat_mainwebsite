import $ from "jquery"
import "jquery.cookie"
import SectionHeader from "../blocks/SectionHeader.coffee"
import env from "../env.coffee"

export default class Ecommerce
    constructor: ->
        @currentLang = if $.cookie("lang") then $.cookie("lang") else "EN"
        @sectionTitleComponent = {
            title: {
                EN: "Ecommerce",
                BM: "E-Dagang",
                CN: "电商"
            }
            subtitle: {
                EN: "Choose variety of our products",
                BM: "Pilihlah Produk Kami yang pelbagai-bagai"
                CN: "选择我们的各种产品"
            }
            background: "light"
        }
        @ecommerce = {
            link: env.ECOMMERCE_URL,
            description: {
                EN: "Variaty of products are also being sold in here. Check it out!",
                BM: "Pelbagai jenis produk juga dijual di sini. Marilah tengok!",
                CN: "我们也同时售卖各种产品。来看看吧！"
            }
        }
        return

    render: ->
        return "
            #{SectionHeader.render(@sectionTitleComponent, @currentLang)}
            <div class='view pb-5'>
                <picture>
                    <img class='w-100' alt='home image' src='./images/ecommerce-bg.jpg'
                </picture>
                <div class='mask flex-center rgba-black-light'>
                    <div data-aos='fade-up' class='container'>
                        <h4 class='white-text pb-4 h4 h4-responsive '>#{@ecommerce.description[@currentLang]}</h4>
                        <a class='btn btn-primary' href='#{@ecommerce.link}'>Go to Ecommerce site</a>
                    </div>
                </div>
            </div>
        "