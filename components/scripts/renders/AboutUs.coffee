import $ from "jquery"
import "jquery.cookie"
import SectionHeader from "../blocks/SectionHeader.coffee"

export default class AboutUs
    constructor: ->
        @currentLang = if $.cookie("lang") then $.cookie("lang") else "EN"
        @sectionTitleComponent = {
            title: {
                EN: "About us",
                BM: "Tentang kami",
                CN: "关于我们"
            }
            subtitle: {
                EN: "Who are we actually?"
                BM: "Siapakah kami sebenarnya?",
                CN: "我们究竟是谁？"
            }
            background: "light"
        }
        @contents = {
            content1: {
                EN: "With widespread adoption of computer and mobile devices , we believe that the future is in seamless integration between clients and technology. Hence we strive to provide technology solutions that increase sales , enchance productivity and reduce redundancy so that clients are able to focus on expanding their business.",
                BM: "Dalam teknologi komputer dan telefon cermas yang semakin diluaskan, kami percaya bahawa interaksi antara pelanggan dan teknologi akan semakin tegas dalam masa hadapan. Maka, kami berusaha dalam memberi bantuan dari segi teknologi yang mampu meningkatkan jualan, menegaskan produktiviti dan mengurangkan redundansi supaya pelanggan kami dapat fokus dalam mengembangkan perniagaan mereka.",
                CN: "在电脑与智能手机的普及化下，我们相信未来客户与科技之间将会是无差别地联系着。因此，我们努力地提供科技化的解决方案来增长售卖率，增强生产率和减少冗余以便能更集中地扩展客户的业务。"
            },
            content2: {
                EN: "Since the year of 2013, we have help numerous companies on improving and enhancing their business by understanding their problems and provide strategies and services based on their needs.",
                BM: "Sejak dari tahun 2013, kami telah membantu berbagai-bagai syarikat dalam meningkat dan menegaskan perniagaan mereka dengan memahami masalah dan memberi strategi serta perkhidmatan berdasarkan keperluan mereka",
                CN: "自2013年，在了解问题所在并且对症下药同时也根据了需求并且提供了无私的服务，我们已帮助了无数的公司并成功增长与提升了他们的业务."
            }
            content3: {
                EN: "Want to know more on how we help our clients? <a class='scroll-to-testimonial-link text-primary'><u>Click here</u></a> to look more.",
                BM: "Ingin tahu bagaimana kami membantu pelanggan? <a class='scroll-to-testimonial-link text-primary'><u>Tekan sini</u></a> dan lihat bagaimana kami memberi bantuan.",
                CN: "想知道我们是怎么帮助客户的吗？<a class='scroll-to-testimonial-link text-primary'><u>点击这里</u></a>来了解更多吧。"
            }
        }
        return

    render: ->
        return "
            #{SectionHeader.render(@sectionTitleComponent, @currentLang)}
            <div class='row p-0 m-0 blue-grey lighten-5 d-flex'>
                <div class='order-1 order-md-1 col-12 col-md-6 p-0 m-0'>
                    <div class='view zoom'>
                        <img class='img-fluid w-100' src='./images/about-2.jpg' />
                    </div>
                </div>
                <div class='order-2 order-md-2 col-12 col-md-6 p-0 m-0' data-aos='zoom-in'>
                    <p class='p-5'>#{@contents.content1[@currentLang]}</p>
                </div>
                <div class='order-4 order-md-3 col-12 col-md-6 p-0 m-0' data-aos='zoom-in'>
                    <p class='pt-5 pb-2 px-5'>#{@contents.content2[@currentLang]}</p>
                    <p class='pt-2 pb-2 px-5'>#{@contents.content3[@currentLang]}</p>
                </div>
                <div class='order-3 order-md-4 col-12 col-md-6 p-0 m-0'>
                    <div class='view zoom'>
                        <img class='img-fluid w-100' src='./images/about-1.jpg' />
                    </div>
                </div>
            </div>
            
        "