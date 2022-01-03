import $ from "jquery"
import "jquery.cookie"
import SectionHeader from "../blocks/SectionHeader.coffee"
import ScrollToContactUsBtn from "../blocks/ScrollToContactUsBtn.coffee"

export default class OurTeam
    constructor: ->
        @currentLang = if $.cookie("lang") then $.cookie("lang") else "EN"
        @sectionTitleComponent = {
            title: {
                EN: "Our Team Members",
                BM: "Pasukan Kami",
                CN: "我们的团队"
            },
            subtitle: {
                EN: "Help clients to define their new business objectives and provide assistant for the problems.",
                BM: "Mambentu Pelanggan dalam menentukan objektif perniagaan yang baru dan memberi bantuan berdasarkan masalah yang hadapi",
                CN: "帮助客户定义新的商业目标并且提供辅助"
            }
            background: "dark"
        }
        @contactUs = {
            EN: "Want to join us?"
            BM: "Ingin menyertai pasukan kami?",
            CN: "想加入我们吗？"
        }
        @teamMembers = [
            {
                name: "Hock Chai"
                title: {
                    EN: "Founder",
                    BM: "pengasas",
                    CN: "创始人"
                },
                description: {
                    EN: "Hock Chai is the Founder of Nightcat Digital Solutions, which he started in 2013. During the company’s early years, Hock Chai acted as the sole engineer, designer, and support representative for the entire Nightcat Eco System. In addition to running the company and setting overall product strategy, he remains actively involved in many departments of the company that he had previously run himself.",
                    BM: "Hock Chai adalah pengasas Nightcat Digital Solutions sejak tahun 2013. Pada mula-mula, Hock Chai merupakan jurutera, pereka bentuk dan wakil sokongan bagi seluruh struktur dalam Nightcat. Untuk menjalankan syarikat dan menetapkan strategi bagi keseluruhan produk, dia kekal melibatkan diri dalam pelbagai jabatan bagi setiap syarikat yang dia pernah melibatkan diri",
                    CN: "Hock Chai 是 Nightcat Digital Solutions 的创始人，建立于2013年。早期， Hock Chai 兼顾着整个Nightcat的工程师，设计师，支援顾问的职位。 为了经营该公司和制定整体的产品策略，他经常参与其他曾帮助过的公司里的各个部门。"
                },
                img: "/images/ourteam/hock_chai.jpg",
                position: "top"
            },
            {
                name: "Kim Yok"
                title: {
                    EN: "Co-Founder",
                    BM: "pengasas bersama",
                    CN: "联合创始人"
                },
                description: {
                    EN: "Kim Yok is our recruiter and works alongside with the human resources department. Also a Bookkeeper of the house. Nothing gets passed her without her agreement. Monitoring the well-being of staff and achieving financial objectives are key roles. You might not see her so much on site as she is busy with loads of paperwork.",
                    BM: "Kim Yok adalah perekrut dan bekerjasama dengan jabatan sumber manusia. Dia juga sebagai akauntan bagi seluruh syarikat. Tiada rancangan dapat dilaksanakan tanpa kebenarannya. Dia memainkan peranan penting dalam memantau kesejahteraan kakitangan dan menuju kepada objektif kewangan. Dia sebenarnya sukar dijumpai kerana dia sentiasa sibuk dengan kerja kertas yang banyak",
                    CN: "Kim Yok 是我们的招聘人员并且兼顾于人事部。她同时也是本公司的会计。没有任何一个计划不会在没有她的允许下执行的。她同时也为观察职员之间的和谐以及达到财务目标。有时难见她的人影因为她经常忙于文书工作。"
                },
                img: "/images/ourteam/kim_yok.jpg",
                position: "top"
            },
            {
                name: "Jack Son"
                title: {
                    EN: "Backend Design",
                    BM: "Reka Bentuk Backend"
                    CN: "后端设计"
                },
                description: {
                    EN: "Jack Son is passionate about building products people love. Previously involve in various IT fields , including Software and Hardware , he brings 15 years of experience in engineering & design to help clients come out with effective and stable solutions. He holds a Bachelor of Science in Computer Science from College Tunku Abdul Rahman.",
                    BM: "Jack Son suka dalam membina produk yang dapat disukai oleh orang ramai. Dia pernah terlibat dalam pelbagai bidang IT termasuklah perisian dan perkakasan. Dengan 15 tahun pengalaman dalam bidang kejuruteraan dan reka bentuk, dia mampu mengeluarkan penyelesaian yang berkesan dan mantap. Dia mempunyai Ijazah Sains dalam Sains Komputer dari College Tunku Abdul Rahman.",
                    CN: "Jack Son 热衷与建立人们会喜欢的产品。以前曾参与技术情报的领域，包括硬件与软件。他灵活运用了15年的工程与设计的经验，提供了有效且稳固的方案并且帮助了许多客户。他拥有于College Tunku Abdul Rahman的电脑科学的学位。"
                },
                img: "/images/ourteam/t3.jpg",
                position: "bottom"
            },
            {
                name: "Shafie"
                title: {
                    EN: "Frontend Developer",
                    BM: "Pembangun Frontend",
                    CN: "前端开发人员"
                },
                description: {
                    EN: "Shafie is passionate about coding and love to troubleshoot problems regarding software or hardware. Interest in IT development that can help in future coding experiences and knowledges. A graduate from Universiti Tun Hussein Onn Malaysia that hold Bachelor Degree in Computer Science (Software Engineering).",
                    BM: "Shafie bersemangat dalam pengekodan dan suka dalam menyelesaikan masalah berkait dengan perisian atau perkakasan. Dia amat berminat dalam pembangunan IT yang dapat membantunya dalam memahirkan pengekodan dengan lebih tegas dan berpengalaman pada masa akan datang. Dia merupakan siswazah dari Universiti Tun Hussein Onn Malaysia dan telah mengambil Ijazah Sarjana Muda dalam Sains Komputer (Kejuruteraan Perisian).",
                    CN: "Shafie 热衷于偏码并且热爱解决关于软件与硬件的问题。对于技术信息的发展特有兴趣，因为这样可以帮助他增长关于偏码的经验与知识。毕业于Universiti Tun Hussein Onn Malaysia 并且拥有电脑科学（软件工程）的学位。"
                },
                img: "/images/ourteam/t4.jpg",
                position: "bottom"
            },
            {
                name: "Edward Lim"
                title: {
                    EN: "Full Stack Developer",
                    BM: "Pembangun Stack Penuh"
                    CN: "全栈开发人员"
                },
                description: {
                    EN: "Edward Lim is passionate about making an appearing website while maintaining the overall performance for better user experience. Love to explore new technologies in order to build the modern website as best as he can. Graduate from Universiti Teknikal Malaysia Melaka (UTeM) that hold Bachelor Degree in Computer Science (Interactive Media) with Honours",
                    BM: "Edward Lim suka dalam membina laman web yang menarik sementara menjamin prestasi yang stabil supaya dapat memberikan pengalaman terbaik kepada pengguna. Dia juga amat berminat dalam meneroka teknologi-teknologi baru supaya mampu membina laman web moden yang berkualiti. Dia merupakan siswazah dari Universiti Teknikal Malaysia Melaka (UTeM) dan mempunyai Ijazah Sarjana Muda dalam Sains Komputer (Interaktif Media) dengan kepujian."
                    CN: "Edward Lim 热衷于建立吸引人的网页并且同时保持着卓越的性能以便用户能有更好的体验。喜爱于探索新的技术以便能进他所能地持续创建摩登的网页。毕业于Universiti Teknikal Malaysia Melaka (UTeM) 并且拥有电脑科学（互动媒体）的学位。"
                },
                img: "/images/ourteam/edward_lim.jpg",
                position: "bottom"
            },
            {
                name: "Jean Mean"
                title: {
                    EN: "Admin",
                    BM: "Admin",
                    CN: "行政"
                },
                description: {
                    EN: "Jean Mean is the Administrative Officer and General Counsel at Nightcat, where she oversees the company’s administrative functions, finance , legal, compliance and government affairs. She ensures that everything is in order so that other team members can focus on essential technology.",
                    BM: "Jean Mean adalah pegawai aministratif dan penasihat am dalam Nightcat. Dia memainkan peranan dalam mengawasi fungsi aministratif, kewangan, perundangan, pematuhan dan urusan kerajaan dalam syarikat, untuk memastikan semua benda adalah mengikut tertib supaya kakitangan dapat fokus dalam bidang teknologi dengan sepenuhnya.",
                    CN: "Jean Mean 是Nightcat的行政人员同时也是总法律顾问。她监督着公司的行政，金融，法律，承诺以及政务。她确保任何事情都能够到位以便其他支援能够更专注于技术涵盖的课题。"
                },
                img: "/images/ourteam/jean_mean.jpg",
                position: "bottom"
            },
        ]
        return

    render: ->
        return "
            #{SectionHeader.render(@sectionTitleComponent, @currentLang)}
            <div class='container-fluid px-5'>
                <div class='row px-3'>
                #{
                    @teamMembers.map((member, key) => 
                        switch member.position
                            when "top"
                                return "
                                    <div class='col-6 p-0 px-5 my-5 d-flex flex-wrap'>
                                        #{@generateTeamBlock(member, key)}
                                    </div>
                                "

                            when "bottom"
                                return "
                                    <div class='col-3 p-0 px-3 my-5 d-flex flex-wrap'>
                                        #{@generateTeamBlock(member, key)}
                                    </div>
                                "
                    ).join("")
                }
                </div>
            </div>
            #{ScrollToContactUsBtn.render({
                id: "join-btn",
                title: @contactUs[@currentLang]
            })}
        "

    renderMobile: ->
        return "
            #{SectionHeader.render(@sectionTitleComponent)}
            <div id='member-carousel' class='carousel slide h-100' data-ride='carousel'>
                <ol class='carousel-indicators'>
                    #{@teamMembers.map((member, key) => 
                        return "
                            <li data-target='#member-carousel' data-slide-to='#{key}' #{if key is 0 then "class='active text-black-50'" else ""}></li>
                        "
                    ).join("")}
                </ol>

                <div class='carousel-inner' role='listbox'>
                    #{@teamMembers.map((member, key) => 
                        return "
                        <div class='carousel-item #{if key is 0 then "active"}'>
                            #{@generateTeamBlock(member, key)}
                        </div>
                        "
                    ).join("")}
                </div>
                <a class='carousel-control-prev' href='#member-carousel' role='button' data-slide='prev'>
                    <span class='carousel-control-prev-icon black py-2 px-1 rounded' aria-hidden='true'></span>
                    <span class='sr-only'>Previous</span>
                </a>
                <a class='carousel-control-next' href='#member-carousel' role='button' data-slide='next'>
                    <span class='carousel-control-next-icon black py-2 px-1 rounded' aria-hidden='true'></span>
                    <span class='sr-only'>Next</span>
                </a>
            </div>
            #{ScrollToContactUsBtn.render({
                id: "join-btn",
                title: @contactUs[@currentLang]
            })}
        "

    generateTeamBlock: (teamMember, offset) ->
        return "
            #{if window.innerWidth <= 900 then "<div class='col-12 pb-5 pb-md-0'>" else ""}
                <div class='card hoverable' data-aos='fade-up' data-aos-delay='#{offset * 100}'>
                    <div class='mx-auto mt-1 mt-md-2 py-3'>
                        <img class='img-thumbnail rounded-circle teamMember__thumbnail' src='#{teamMember.img}' alt='#{teamMember.name} Thumbnail'>
                    </div>

                    <h2 class='card-title text-center p-0 m-0 py-2'>#{teamMember.name}</h2>
                    <p class='text-center text-muted p-0 m-0'>#{teamMember.title[@currentLang]}</p>
                    <hr>
                    <div class='card-body px-5'>
                        <p class='card-text text-justify'>#{teamMember.description[@currentLang]}</p>
                    </div>
                </div>
            #{if window.innerWidth <= 900 then "</div>" else ""}
        "