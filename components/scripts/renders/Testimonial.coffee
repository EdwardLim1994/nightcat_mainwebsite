import $ from "jquery"
import "jquery.cookie"
import SectionHeader from "../blocks/SectionHeader.coffee"
import ScrollToContactUsBtn from "../blocks/ScrollToContactUsBtn.coffee"

export default class Testimonial
    constructor: ->
        @currentLang = if $.cookie("lang") then $.cookie("lang") else "EN"
        @sectionTitleComponent = {
            title: {
                EN: "Testimonials",
                BM: "Testimoni",
                CN: "感言"
            }
            subtitle: {
                EN: "What our customers say"
                BM: "Lihat Maklum Balas dari Pelanggan Kami",
                CN: "看看我们的客户说了什么"
            }
            background: "light"
        }

        @contactUs = {
            EN: "Seeking for advises?"
            BM: "Ingin mencari nasihat?",
            CN: "需要咨询吗？"
        }

        @category = {
            howToFind: {
                EN: "How they found us :",
                BM: "Bagaimana mengetahui kami :",
                CN: "如何找到我们 ："
            },
            problem: {
                EN: "Their Problems :",
                BM: "Masalah mereka :",
                CN: "他们的问题 ："
            },
            solution: {
                EN: "Our Solutions :",
                BM: "Langkah Kami :",
                CN: "我们的方案 ："
            },
        }

        # only accept odd number of total company count otherwise the style will be off. Currently it is 5 companies
        @testimonials = [
            {
                img: "/images/testimonial/portfolio-1.jpg"
                alt: ""
                company: "PAKAR MATA EVER EYES",
                howToFind: {
                    EN: "Call Us",
                    BM: "Lalui Telefon",
                    CN: "通过电话联络"
                }
                problem: {
                    EN: "Using punch card to record all employee in/out time and manually calculate by clerks.",
                    BM: "Guna kad tebuk untuk merakam dan mengira waktu bekerja secara manual",
                    CN: "利用打卡的方式来记录和人工计算员工的工作时间"
                }
                solution: {
                    EN: "Provides Attendance System to customer , to auto calculate work time , ot time and others."
                    BM: "Menyediakan sistem kehadiran kepada pelanggan untuk mengira waktu kerja, kerja lebih masa dan sebagainya secara automatik",
                    CN: "提供出勤系统以便客户能够自动记录工作时间，加班时间以及其他的。"
                }
            },
            {
                img: "/images/testimonial/portfolio-10.jpg"
                alt: ""
                company: "GOODLY ENTERPRISE",
                howToFind: {
                    EN: "Through Facebook",
                    BM: "Lalui Facebook",
                    CN: "通过脸书"
                }
                problem: {
                    EN: "Clients have increasing business volume , the increase of volume makes it very hard to keep track of orders coming in , and when uploading to lorry , face overweight problem.",
                    BM: "Pelanggan memiliki perniagaan yang sedang berkembang, dan perkembangan tersebut menjadikan mereka sukar menguruskan pesanan yang masuk, dan sentiasa menghadapi masalah berat barang berlebihan apabila memuat-naik kepada syarikat logistik",
                    CN: "客户有着正在扩大的商业规模。但却因为那庞大的规模使得他们难以追踪新进的订单，同时当上载订单给运输商时也经常遇到货物过重的问题"
                }
                solution: {
                    EN: "Allow customer to key in order for future , print out list of products needed in upcoming days , and create delivery orders with total weights for each delivery order ( To prevent overweight )."
                    BM: "Pelanggan dapat memasuki pesanan untuk masa akan datang, cetak senarai produk yang diperlukan untuk masa akan datang, dan menjana pesanan penghantaran dengan jumlah berat bagi setiap pesanan (Untuk mencegah perlebihan berat barang)",
                    CN: "客户能够输入订单，打印货品的列表，和创建附有总重量的送货订单 (以防订单超重)"
                }
            },
            # {
            #     img: ""
            #     alt: ""
            #     company: "ZSON TRADING",
            #     howToFind: "Contacted them for collaboration",
            #     problem: "Client interested to expand busines in ecommerce area , to sell various grocery product",
            #     solution: "Help client set up and mantain shop in <a href='https://shopee.com.my/zsontrading'>Shopee</a> and <a href='https://www.lazada.com.my/shop/zsontrading/'>Lazada</a> , allowing customer to focus on selling products"
            # },
            {
                img: "/images/testimonial/portfolio-3.jpg"
                alt: ""
                company: "XIM SDN BHD",
                howToFind: {
                    EN: "Whatsapp Us",
                    BM: "Hubung kami guna Whatsapp",
                    CN: "通过Whatsapp 联络"
                }
                problem: {
                    EN: "Manager need to order stock from Oversea , with many quotation from oversea customer (20+ Excel Files each time).",
                    BM: "Pengurus mahu membuat pesanan dari luar negara dengan sebut harga yang banyak (20+ Excel fail dalam setiap masa)",
                    CN: "经理需要从海外客户拿来的大量报价单来向国外订购库存 (每一次20+ Excel文件)"
                }
                solution: {
                    EN: "Helps them to combine all the quotation into database , allow them to search by key word together with pictures and unit cost."
                    BM: "Bantu pelanggan dalam menyatukan semua sebut harga ke dalam pangkalan data, bagi mereka dapat mencari infomasi produk dengan kata kunci",
                    CN: "帮助客户聚集全部的行情并且输入进资料库，以便他们能够利用关键字搜索想要寻找的货品。"
                }
            },
            {
                img: "/images/testimonial/portfolio-4.jpg"
                alt: ""
                company: "RIQQA ENTERPRISE",
                howToFind: {
                    EN: "Through Website",
                    BM: "Lalui Lamab web",
                    CN: "通过网页"
                }
                problem: {
                    EN: "Customer are having trouble to know which invoice are outstanding , and lack a mechanism to generate annual reports for all yearly sales.",
                    BM: "Pelanggan mengahapi masalah dalam mengetahui invois apa yang belum dijelaskan, dan kurang mekanisme dalam menjana laporan tahunan tentang jualan tahunan",
                    CN: "客户不清楚哪个发票是需要优先处理的, 同时也缺乏一个可以根据每一年的销售而生成一份年度报告的系统。"
                }
                solution: {
                    EN: "Allow customer to create invoice , record payment , substract the balance and show the outstanding , and allow annual sales."
                    BM: "Bantu pelanggan dalam menjana invois, rekod pembayaran, menunjukkan baki yang belum dibayar, dan membenarkan jualan tahunan. ",
                    CN: "让客户能够创建发票，付款记录，释出还没付清的款项，和允许年度销售。"
                }
            },
            {
                img: "/images/testimonial/portfolio-4.jpg"
                alt: ""
                company: "TANG MART",
                howToFind: {
                    EN: "Referred by Friends",
                    BM: "Dirujuk oleh kawan",
                    CN: "通过朋友介绍"
                }
                problem: {
                    EN: "Current POS system report not comprehensive , need to open many reports just to get the information for stock ordering.",
                    BM: "Sistem terhadap titik jualan yang sedia dilaporkan tidak menyeluruh, harus membuka banyak laporan hanya untuk mendapat infomasi bagi memesan stok",
                    CN: "现有的销售点系统被指不够完善，往往需要开启很多报告就只为了寻找关于订购库存的资料。"
                }
                solution: {
                    EN: "Consolidates all important data into a single report for easier time during stock ordering."
                    BM: "Menyatukan semua data penting ke dalam satu laporan bagi memudahkan proses memesan stok",
                    CN: "聚集全部重要的资料进一份报告以便在订购库存的时候提供方便。"
                }
            }
        ]
        return

    render: ->
        return "
            #{SectionHeader.render(@sectionTitleComponent, @currentLang)}
            <div class='container-fluid'>
                <div class='pb-5 d-flex align-items-center justify-content-center w-100'>
                    <div class='d-flex align-items-center justify-content-center flex-column w-100 overflow-hidden position-relative '>
                        <div class='card-carousel'>
                            #{@testimonials.map((testimonial, key) => @generateTestimonialBody(testimonial, key)).join("")}
                        </div>
                    </div>
                </div>
            </div>
            #{ScrollToContactUsBtn.render({
                title: @contactUs[@currentLang]
            })}
        "

    renderMobile: ->
        return "
            #{SectionHeader.render(@sectionTitleComponent, @currentLang)}
            <div id='testimonial-carousel' class='carousel slide h-100' data-ride='carousel'>
                <ol class='carousel-indicators'>
                    #{@testimonials.map((testimonial, key) => 
                        return "
                            <li data-target='#testimonial-carousel' data-slide-to='#{key}' class='grey #{if key is 0 then "active" else ""}'></li>
                        "
                    ).join("")}
                </ol>
                <div class='carousel-inner' role='listbox'>
                    #{@testimonials.map((testimonial, key) => 
                        return "
                        <div class='carousel-item #{if key is 0 then "active"}'>
                            #{@generateTestimonialBody(testimonial, key)}
                        </div>
                        "
                    ).join("")}
                </div>
                <a class='carousel-control-prev' href='#testimonial-carousel' role='button' data-slide='prev'>
                    <span class='carousel-control-prev-icon black py-2 px-1 rounded' aria-hidden='true'></span>
                    <span class='sr-only'>Previous</span>
                </a>
                <a class='carousel-control-next' href='#testimonial-carousel' role='button' data-slide='next'>
                    <span class='carousel-control-next-icon black py-2 px-1 rounded' aria-hidden='true'></span>
                    <span class='sr-only'>Next</span>
                </a>
            </div>
            #{ScrollToContactUsBtn.render({
                title: "Need consultants?"
            })}
        "

    generateTestimonialBody: (testimonial, offset) ->
        return "
            #{if window.innerWidth <= 900 then "<div class='col-12 pb-5 pb-md-0'>" else "<div class='my-card py-2'>"}
                <div class='card' data-aos='zoom-in' data-aos-delay='#{offset * 100}'>
                    <img class='card-img-top w-100 h-100 p-0 m-0' src='#{testimonial.img}' alt='#{testimonial.company} cap' title='#{testimonial.company}'>
                    <div class='card-body p-0 m-0'>
                        <h4 class='card-title pt-3 text-center'>#{testimonial.company}</h4>
                        <div class='card-text'>
                            <ul class='list-group w-100'>
                                <li class='list-group-item'>
                                    <p class='p-0 m-0 font-weight-bold'>#{@category.howToFind[@currentLang]}</p>
                                    #{testimonial.howToFind[@currentLang]}
                                </li>
                                <li class='list-group-item'>
                                    <p class='p-0 m-0 font-weight-bold'>#{@category.problem[@currentLang]}</p>
                                    #{testimonial.problem[@currentLang]}
                                </li>
                                <li class='list-group-item'>
                                    <p class='p-0 m-0 font-weight-bold'>#{@category.solution[@currentLang]}</p>
                                    #{testimonial.solution[@currentLang]}
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        "