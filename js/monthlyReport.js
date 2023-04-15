// Select the Add button and the container div
const addBtn = document.querySelector("#add-row");
let formDiv = document.getElementById("divi");


// Add an event listener to the Add button
addBtn.addEventListener("click", function () {
  // Create a new instance of the form row
    formDiv.innerHTML +=
      '<div id="form-container" class="form-row mb-3">\n' +
      '   <div class="row">\n' +
      '      <div class="col-4">\n' +
      '         <input type="text" class="form-control" id="datepicker" placeholder="">\n' +
      "      </div>\n" +
      '      <div class="col-4">\n' +
      '         <div class="btn-group" role="group" aria-label="Basic example">\n' +
      '            <div class="input-group-prepend">\n' +
      '               <span class="input-group-text">Shift: </span>\n' +
      "            </div>\n" +
      '            <button type="button" class="btn btn-light">A</button>\n' +
      '            <button type="button" class="btn btn-dark">B</button>\n' +
      "         </div>\n" +
      "      </div>\n" +
      '      <div class="col-4">\n' +
      '         <input type="number" class="form-control" placeholder="Uptime Hours" min="0" max="12">\n' +
      "      </div>\n" +
      "   </div>\n" +
        "</div>";
    
    
});
