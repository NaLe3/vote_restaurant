import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "results" ]
  static values = { count: Number }

  initialize() {
    this.resultsTarget.innerHTML = this.countValue
  }

  add(){
    this.countValue++
    this.resultsTarget.innerHTML = this.countValue.toString()
  }

}