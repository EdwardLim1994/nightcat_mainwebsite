import $ from "jquery"
import SectionHeader from "../blocks/SectionHeader.coffee"
import ScrollToContactUsBtn from "../blocks/ScrollToContactUsBtn.coffee"

export default class OurTeam
    constructor: ->
        @sectionTitleComponent = {
            title: "Our Team Members",
            subtitle: "Help clients to define their new business objectives and provide assistant for the problems."
            background: "dark"
        }
        @teamMembers = [
            {
                name: "Hock Chai",
                title: "Founder",
                description: "Hock Chai is the Founder and Nightcat Digital Solutions, which he started in 2013. During the company’s early years, Hock Chai acted as the sole engineer, designer, and support representative for the entire Nightcat Eco System. In addition to running the company and setting overall product strategy, he remains actively involved in many departments of the company that he had previously run himself.",
                img: "/images/ourteam/hock_chai.jpg",
                position: "top"
            },
            {
                name: "Kim Yok",
                title: "Co-Founder",
                description: "Kim Yok is our recruiter and works alongside the human resources department. Also a Bookkeeper of the house. Nothing gets passed her without her agreement. Monitoring the well-being of staff and achieving financial objectives are key roles. You might not see her so much on site as she is busy with loads of paperwork.",
                img: "/images/ourteam/kim_yok.jpg",
                position: "top"
            },
            {
                name: "Jack Son",
                title: "Backend Design",
                description: "Jack Son is passionate about building products people love. Previously involve in various IT fields , including Software and Hardware , he brings 15 years of experience in engineering & design to help clients come out with effective and stable solutions. He holds a Bachelor of Science in Computer Science from College Tunku Abdul Rahman.",
                img: "/images/ourteam/t3.jpg",
                position: "bottom"
            },
            {
                name: "Shafie",
                title: "Frontend Developer",
                description: "Shafie is passionate about coding and love to troubleshoot problems regarding software or hardware. Interest in IT development that can help in future coding experiences and knowledges. A graduate from Universiti Tun Hussein Onn Malaysia that hold Bachelor Degreee in Computer Science (Software Engineering).",
                img: "/images/ourteam/t4.jpg",
                position: "bottom"
            },
            {
                name: "Jean Mean",
                title: "Admin",
                description: "Jean Mean is the Administrative Officer and General Counsel at Nightcat, where she oversees the company’s administrative functions, finance , legal, compliance and government affairs. She ensures that everything is in order so that other team members can focus on essential technology.",
                img: "/images/ourteam/jean_mean.jpg",
                position: "bottom"
            },
        ]
        return

    render: ->
        return "
            #{SectionHeader.renderSectionTitle(@sectionTitleComponent)}
            <div class='container'>
                <div class='row'>
                #{
                    @teamMembers.map((member) => 
                        switch member.position
                            when "top"
                                return "
                                    <div class='col-6 p-0 px-5 my-5 d-flex flex-wrap'>
                                        #{@generateTeamBlock(member)}
                                    </div>
                                "

                            when "bottom"
                                return "
                                    <div class='col-4 p-0 px-3 my-5 d-flex flex-wrap'>
                                        #{@generateTeamBlock(member)}
                                    </div>
                                "
                    ).join("")
                }
                </div>
            </div>
            #{ScrollToContactUsBtn.render({
                id: "join-btn",
                title: "Want to join us?"
            })}
        "

    renderMobile: ->
        return "
            #{SectionHeader.renderSectionTitle(@sectionTitleComponent)}
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
                            #{@generateTeamBlock(member)}
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
                title: "Want to join us?"
            })}
        "

    generateTeamBlock: (teamMember) ->
        return "
            #{if window.innerWidth <= 900 then "<div class='col-12 pb-5 pb-md-0'>" else ""}
                <div class='card hoverable'>
                    <div class='mx-auto mt-1 mt-md-2 py-3'>
                        <img class='img-thumbnail rounded-circle teamMember__thumbnail' src='#{teamMember.img}' alt='#{teamMember.name} Thumbnail'>
                    </div>

                    <h2 class='card-title text-center p-0 m-0 py-2'>#{teamMember.name}</h2>
                    <p class='text-center text-muted p-0 m-0'>#{teamMember.title}</p>
                    <hr>
                    <div class='card-body'>
                        <p class='card-text'>#{teamMember.description}</p>
                    </div>
                </div>
            #{if window.innerWidth <= 900 then "</div>" else ""}
        "