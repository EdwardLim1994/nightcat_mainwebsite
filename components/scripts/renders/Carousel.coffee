import $ from "jquery"

export default class Carousel
    constructor: ->
        @images = [
            {
                img: "",
                title: "",
                description: ""
            }
        ]
        return

    render: ->
        return "
        <div id='home-carousel' class='carousel slide' data-ride='carousel'>
            <ol class='carousel-indicators'>
                <li data-target='#home-carousel' data-slide-to='0' class='active'></li>
                <li data-target='#home-carousel' data-slide-to='1'></li>
            </ol>

            <div class='carousel-inner' role='listbox'>
                <div class='carousel-item active'>
                    <a href=>
                        <div class='view'>
                            <img class='d-block w-100' src='https://mdbootstrap.com/img/Photos/Slides/img%20(68).jpg'
                                alt='First slide'>
                        <div class='mask rgba-black-light'></div>
                        </div>
                        <div class='carousel-caption'>
                            <h3 class='h3-responsive'>Light mask</h3>
                            <p>First text</p>
                        </div>
                    </a>
                </div>
                <div class='carousel-item'>
                    <div class='view'>
                        <img class='d-block w-100' src='https://mdbootstrap.com/img/Photos/Slides/img%20(6).jpg'
                            alt='Second slide'>
                    <div class='mask rgba-black-strong'></div>
                    </div>
                    <div class='carousel-caption'>
                        <h3 class='h3-responsive'>Strong mask</h3>
                        <p>Secondary text</p>
                    </div>
                </div>
            </div>

            <a class='carousel-control-prev' href='#home-carousel' role='button' data-slide='prev'>
                <span class='carousel-control-prev-icon' aria-hidden='true'></span>
                <span class='sr-only'>Previous</span>
            </a>
            <a class='carousel-control-next' href='#home-carousel' role='button' data-slide='next'>
                <span class='carousel-control-next-icon' aria-hidden='true'></span>
                <span class='sr-only'>Next</span>
            </a>
        </div>
        "