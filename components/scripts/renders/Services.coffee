import $ from "jquery"
import "jquery.cookie"
import SectionHeader from "../blocks/SectionHeader.coffee"

export default class Services

    constructor: ->
        @currentLang = if $.cookie("lang") then $.cookie("lang") else "EN"
        @sectionTitleComponent = {
            title: {
                EN: "Services", 
                BM: "Servis",
                CN: "服务"
            }
            subtitle: {
                EN: "What we offer for our special customers"
                BM: "Apa yang pelanggan akan diterima dari kami",
                CN: "我们所能提供给特别的客户"
            }
            background: "dark"
        }
        @services = [
            {
                img: "./images/report.jpg",
                title: {
                    EN: "Reporting",
                    BM: "pelaporan",
                    CN: "报告"
                }
                description: {
                    EN: "Helps employers consolidate report from various branch",
                    BM: "Membantu majikan dalam menyatukan laporan dari cawangan yang berbeza",
                    CN: "帮助雇主总合来自于其他分行的报告"
                }
            },
            {
                img: "./images/attendance.jpg",
                title: {
                    EN: "Attendance",
                    BM: "kehadiran",
                    CN: "员工出勤率"
                }
                description: {
                    EN: "Helps employers to track employee working time and perform automated, salary calculation",
                    BM: "Membantu majikan dalam menjejaki waktu bekerja dan mengautomasikan pengiraan gaji berdasarkan kehadiran pekerja",
                    CN: "帮助雇主追踪员工的工作时间以及提供自动化的薪水计算"
                }
            },
            {
                img: "./images/ecommerce.jpg",
                title: {
                    EN: "Ecommerce",
                    BM: "E-dagang",
                    CN: "电商"
                }
                description: {
                    EN: "Allow customer to see order, products, able to show picture / cost, add into cart, and integrate with payment gateway",
                    BM: "Membenarkan pelanggan untuk melihat pesanan, produk, dapat menunjukkan gambar / kos, memasukkan produk dalam troli, dan berintegrasi dengan gerbang pembayaran",
                    CN: "能让客人看到订单，货品，可以展示出照片 / 成本， 加入货品进购物车， 和融合支付系统"
                }
            },
            {
                img: "./images/website.jpg",
                title: {
                    EN: "Website",
                    BM: "Laman Web",
                    CN: "网页"
                }
                description: {
                    EN: "Build customised website for customer, depending on their sector and needs",
                    BM: "Membantu pelanggan dalam membina laman web custom berdasarkan keperluan dan sektor-sektor",
                    CN: "根据客户的领域与需求来设计以及创建定制的网页"
                }
            },
            # {
            #     img: "/images/services/bot.jpg",
            #     title: "Chat AutoReply BOT",
            #     description: "Create bot (facebook, whatsapp and others) to auto reply customer various enquiries",
            # },
            {
                img: "./images/ordering.jpg",
                title: {
                    EN: "Ordering System",
                    BM: "Sistem Pesanan",
                    CN: "订单系统"
                }
                description: {
                    EN: "Allow to combine all customer order to allow production have easier grasp on orders to be prepared",
                    BM: "Dapat menyatukan pesanan dari semua pelanggan supaya dapat menahan pesanan yang utama dan harus disediakan",
                    CN: "统一并集中全部顾客的订单以便能更好的捕捉到需要准备并且是优先的订单"
                }
            },
            {
                img: "./images/pos.jpg",
                title: {
                    EN: "Point Of Sales",
                    BM: "Titik Jualan",
                    CN: "销售点"
                }
                description: {
                    EN: "Aid employers in selling products, inventory control, record customer payment and allow them to have a more firm grasp on their business profits",
                    BM: "Memberi cadangan kepada majikan dalam jualan, kawalan inventori, rekod bayaran dari pelanggan supaya dapat menjana dan meningkat keuntungan dalam setiap perniagaan",
                    CN: "协助雇主在于贩卖产品，库存管控， 记录与顾客之间的交易以便能更好的捕捉到商业的利润"
                }
            },
            {
                img: "./images/payment.jpg",
                title: {
                    EN: "Payment Gateway",
                    BM: "gerbang pembayaran",
                    CN: "支付系统"
                }
                description: {
                    EN: "Allow integration with various payment gateway, eg ipay88, fpx, etc",
                    BM: "Dapat mengintegrasikan dengan pelbagai gerbang pembayaran seperti ipay88, fpx dan sebagainya",
                    CN: "链接不同种类的支付系统，比如ipay88, fpx 还有更多"
                }
            },
            {
                img: "./images/seo.jpg",
                title: {
                    EN: "Search Engine Optimzation(SEO)",
                    BM: "pengoptimuman enjin gelintar(SEO)",
                    CN: "优化搜索引擎(SEO)"
                }
                description: {
                    EN: "Allow search engine to crawl websites more effectively, resulting in better ranking in searches",
                    BM: "Membenarkan enjin gelintar mendapat laman web dengan lebih cekap",
                    CN: "能够让搜索系统能更好的捕捉网页"
                }
            }
        ]
        return

    render: ->

        return "
            #{SectionHeader.render(@sectionTitleComponent, @currentLang)}
            <div class='blue'>
                <div class='row p-0 m-0'>
                    #{@services.map(((service, key) => @generateServiceBlock(service, key)).bind(@)).join("")}
                </div>
            </div>
        "

    generateServiceBlock: (service, offset) ->

        return "
            <div class='services view zoom position-relative col-12 col-md-3 p-0 m-0' data-aos='flip-left' data-aos-delay='#{offset * 100}'>
                <div class='services__body position-absolute w-100 d-flex flex-column align-items-center justify-content-end'>
                    <div class='services__textContainer w-100 h-100 px-3'>
                        <h5 class='w-100 h-20 white-text text-center text-uppercase p-0 m-0 my-4 h4 h4-responsive'>#{service.title[@currentLang]}</h5>
                        <p class='text-white text-center services__description'>#{service.description[@currentLang]}</p>
                    </div>
                </div>   
                <img class='services__img img-fluid #{if window.innerWidth > 900 then "w-100 h-100" else "vw-100"}' src='#{service.img}' />
                <div class='services__mask mask flex-center waves-effect waves-light'>
                </div>
            </div>
        "