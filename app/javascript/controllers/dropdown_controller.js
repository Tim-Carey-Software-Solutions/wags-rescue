import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
    connect() {
        const aboutDropdown = document.getElementById("about-dropdown");
        const fosterDropdown = document.getElementById("foster-dropdown");
        const adoptDropdown = document.getElementById("adopt-dropdown");

        adoptDropdown.addEventListener('toggle', () => {
            if (adoptDropdown.open && fosterDropdown.open) {
                fosterDropdown.removeAttribute('open')
            } else if (adoptDropdown.open && aboutDropdown.open) {
                aboutDropdown.removeAttribute('open')
            }
        })

        aboutDropdown.addEventListener('toggle', () => {
            if (aboutDropdown.open && fosterDropdown.open) {
                fosterDropdown.removeAttribute('open')
            } else if (aboutDropdown.open && adoptDropdown.open) {
                adoptDropdown.removeAttribute('open')
            }
        })

        fosterDropdown.addEventListener('toggle', () => {
            if (fosterDropdown.open && aboutDropdown.open) {
                aboutDropdown.removeAttribute('open')
            }
        })

    }
}
