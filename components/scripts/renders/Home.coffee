import $ from "jquery"
import ScrollToContactUsBtn from "../blocks/ScrollToContactUsBtn.coffee"

export default class Home
    constructor: ->
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
                    <h2 data-aos='fade-right' class='white-text pb-4 h2 h2-responsive font-weight-lighter'>Help clients to define <span class='font-weight-bold'>new business objectives</span> and provide <span class='font-weight-bold'>professional services and products</span>.</h2>
                    <h5 data-aos='fade-right' class='white-text pb-2 h5 h5-responsive'>Feeling interest? </h5>
                    <div data-aos='fade-right' class='home__button'>
                        #{ScrollToContactUsBtn.render({
                            title: "Contact us Now"
                            rounder: true
                            padding: "px-4 py-3"
                            flexDirection: "flex-row"
                        })}
                    </div>
                </div>
            </div>
        </div>
        "