import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "results" ]
  static values = { count: Number }

  initialize() {
    this.resultsTarget.innerHTML = this.countValue
  }

  increment(){
    this.countValue++
    this.resultsTarget.innerHTML = this.countValue.toString()
  }

}