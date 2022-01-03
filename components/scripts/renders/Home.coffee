import $ from "jquery"
import "jquery.cookie"
import ScrollToContactUsBtn from "../blocks/ScrollToContactUsBtn.coffee"

export default class Home
    constructor: ->
        @currentLang = if $.cookie("lang") then $.cookie("lang") else "EN"
        @home = {
            description1: {
                EN: "Help clients to define <span class='font-weight-bold'>new business objectives</span> and provide <span class='font-weight-bold'>professional services and products</span>.",
                BM: "Membantu Pelanggan untuk mentakrifkan <span class='font-weight-bold'>objektif perniagaan baru</span> dan menyediakan <span class='font-weight-bold'>servis dan produk profesional</span>",
                CN: "帮助客户定义 <span class='font-weight-bold'>新的商业目标</span> 和 <br> 提供 <span class='font-weight-bold'>专业的服务与产品</span>"
            }
            description2: {
                EN: "Feeling interest?",
                BM: "Sudah Berminat?",
                CN: "感兴趣吗？"
            }
            button: {
                EN: "Contact us Now",
                BM: "Hubungi Kami Sekarang",
                CN: "马上联络我们吧"
            }
        }
        return

    render: ->
        return "
        <div class='view'>
            <picture>
                <source media='(max-width: 760px)' srcset='./images/home-mobile.jpg'>
                <img src='./images/home-desktop.jpg' class='w-100' alt='home image' />
            </picture>
            <div class='mask flex-center waves-effect waves-light rgba-black-light'>
                <div class='d-flex flex-column justify-content-center home__container'>
                    <h2 data-aos='fade-right' class='white-text pb-4 h2 h2-responsive font-weight-lighter'>#{@home.description1[@currentLang]}</h2>
                    <h5 data-aos='fade-right' class='white-text pb-2 h5 h5-responsive'>#{@home.description2[@currentLang]}</h5>
                    <div data-aos='fade-right' class='home__button'>
                        #{ScrollToContactUsBtn.render({
                            title: @home.button[@currentLang]
                            rounder: true
                            padding: "px-4 py-3"
                            flexDirection: "flex-row"
                        })}
                    </div>
                </div>
            </div>
        </div>
        "