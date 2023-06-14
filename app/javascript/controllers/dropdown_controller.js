import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        const details = document.querySelectorAll("details");

        details.forEach((targetDetail) => {
            targetDetail.addEventListener("click", () => {
                details.forEach((detail) => {
                    if (detail !== targetDetail) {
                        detail.removeAttribute("open");
                    }
                });
            });
        });

    }
}
