import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "options" ]

  onChange(event) {
    const selectedValue = event.target.value;
    console.log("Espécie selecionada:", selectedValue);

    fetch(`/pets_breeds?species=${selectedValue}`)
      .then(response => response.json())
      .then(data => {
        this.optionsTarget.innerHTML = data.map(breed => `<option value="${breed.id}">${breed.name}</option>`).join("");
      }
    );
  }
}