import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form", "searchInput", "list"]

  // connect() {
  //   console.log(this.formTarget)
  //   console.log(this.searchInputTarget)
  //   console.log(this.listTarget)
  // }
  update(event) {
  // console.log(this.searchInputTarget.value)
  const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
  fetch(url, {headers: { Accept: 'text/plain' } })
    .then((response) => response.text())
    .then((data) => {
      this.listTarget.outerHTML = data;
      // console.log(data)
    })
  }
}
