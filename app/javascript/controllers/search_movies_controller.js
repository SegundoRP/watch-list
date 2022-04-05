import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form", "searchInput", "list"]

  // connect() {
  //   console.log(this.formTarget)
  //   console.log(this.searchInputTarget)
  //   console.log(this.listTarget)
  // }
  update(event) {
  console.log(this.searchInputTarget.value)
  }
}
