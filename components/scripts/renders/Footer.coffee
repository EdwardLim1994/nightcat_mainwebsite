import $ from "jquery"

export default class Footer
    constructor: ->
        return

    render: ->
        return "
                <div class='text-center blue'>
                    <p class='p-0 m-0 py-2 footer-copyright text-white'>
                        <a class='text-light' href='https://www.nightcatdigitalsolutions.com/'>NIGHTCAT DIGITAL SOLUTIONS</a> © 2013-#{new Date().getFullYear()}. ALL RIGHTS RESERVED.
                    </p>
                </div>
        "