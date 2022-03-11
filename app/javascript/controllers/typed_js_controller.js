import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Pick the movies", "Put name to the lists", "Comment on the lists"],
      typeSpeed: 50,
      loop: true
    });
  }
}
