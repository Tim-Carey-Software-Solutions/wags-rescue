import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        console.log("connected")
        document.addEventListener('DOMContentLoaded', function () {
            var rows = document.querySelectorAll('tr[data-url]');
            for (var i = 0; i < rows.length; i++) {
                rows[i].addEventListener('click', function (event) {
                    if (!event.target.closest('a')) {
                        var url = this.getAttribute('data-url');
                        window.location.href = url;
                    }
                });
            }
        });
    }
}
