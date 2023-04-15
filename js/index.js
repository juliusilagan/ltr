//No Good Report Form Fields
const selectLine = document.getElementById("line");
const selectStation = document.getElementById("station");
const selectProblem = document.getElementById("problemType");
const cbRemarks = document.getElementById("addRemarks");
const inputRemarks = document.getElementById("rmrk");
const inputTechName = document.getElementById("name");

//Modal form fields
const rowId = document.getElementById("id_number");
const selectLineModal = document.getElementById("prodLine");
const selectStationModal = document.getElementById("stationName");
const selectProblemModal = document.getElementById("probType");
const inputRemarksModal = document.getElementById("remarks");
const inputTechNameModal = document.getElementById("techName");

//Forms
const noGoodReport = document.getElementById("reportForm");
const goodReport = document.getElementById("fixReportForm");
const lineConfigForm = document.getElementById("lineConfigForm");

//Modal ID
const modal = document.getElementById("modalTable");

//Table Selector
const table = document.querySelector("table");

//Alarm Sounds
const selectAlarm = document.getElementById("alarmSound");
let alarmFilePath = "../linev3/sound/alarm.mp3";

//Line Config submit button
const sendLineConfig = document.getElementById("sendLineConfig");

//Collapse accordion
const collapseOne = document.getElementById("collapseOne");


// sendLineConfig.addEventListener("click", function () { 
//  const xhr = new XMLHttpRequest();
//  const lines = [1, 2, 3, 4, 5, 7, 8, 10, 11, 12];
//  let queryString = "";
//  lines.forEach((line) => {
//    const checkbox = lineConfigForm.elements[`switch_line${line}`];
//    if (checkbox.checked) {
//      queryString += `switch_line${line}=${checkbox.value}&`;
//    } else { 
//      queryString += `switch_line${line}=off&`;
//    }
//  });
//  xhr.open("GET", `../linev3/php/sendLineConfig.php?${queryString}`);


//   xhr.onload = function () {
//     if (xhr.status === 200) {
//       //const data = JSON.parse(xhr.responseText);
//       getLineConfiguration();
//       getInitialLine();
//       collapseOne.classList.remove("show");
//     } else {
//       console.error("Error making request");
//     }
//   };

//   // Send the request
//   xhr.send();

// });

selectAlarm.addEventListener("change", function () {
  let value = selectAlarm.value;
  if (value == "alarm") {
    alarmFilePath = "../linev3/sound/alarm.mp3";
  } else if (value == "beep") {
    alarmFilePath = "../linev3/sound/beep.mp3";
  } else if (value == "car_honk") {
    alarmFilePath = "../linev3/sound/car_honk.mp3";
  }
  alarm_audio = new Audio(alarmFilePath);
});

let alarm_audio = new Audio(alarmFilePath);
let audio_player;

const play_alarm = () => {
  alarm_audio.play();
  console.log("running");
};

const startAudioPlayer = () => {
  if (!audio_player) {
    audio_player = setInterval(play_alarm, 2000);
  }
};
const stopAudioPlayer = () => {
  if (audio_player) {
    alarm_audio.pause();
    clearInterval(audio_player);
    audio_player = undefined;
  }
};



function resetForm() {
  getInitialLine();
    selectStation.innerHTML = '<option value="default">Station</option>';
    selectProblem.innerHTML = '<option value="default">Select Problem</option>';
    cbRemarks.checked = false;
    inputRemarks.value = "";
    inputTechName.value = "";
}
function getInitialLine() {
  selectLine.innerHTML = "";
  // Create a new XMLHttpRequest object
  const xhr = new XMLHttpRequest();

  // Set up the request
  xhr.open("GET", "../linev3/php/getLine.php");

  // Set the callback function
  xhr.onload = function () {
    if (xhr.status === 200) {
      // Parse the response text as JSON
      const data = JSON.parse(xhr.responseText);

      // Loop through the data and create option elements
      data.forEach(function (item) {
        const optionElement = document.createElement("option");
        optionElement.value = item.value;
        optionElement.textContent = item.text;
        selectLine.appendChild(optionElement);
      });
    } else {
      console.error("Error making request");
    }
  };

  // Send the request
  xhr.send();
  getStatistics();
}
function refreshTable() {
  // Send an AJAX request to fetch the updated data
  const xhr = new XMLHttpRequest();
  xhr.open("GET", "../linev3/php/getTable.php");
  xhr.onload = function () {
    if (xhr.status === 200) {
      // Parse the response data as JSON
      const data = JSON.parse(xhr.responseText);
      
      // Check if data array is empty
      if (data.length === 0) {
        stopAudioPlayer();
        // Create a default row data object
        const defaultRowData = {
          line_id: "None",
          station_id: "None",
          problem_id: "None",
          remarks: "None",
          reported_by: "None",
          report_time: "None",
          fix_button: "None",
        };
        // Add the default row data to the data array
        data.push(defaultRowData);
      } else {
        startAudioPlayer();
      }

      // Clear the existing table rows in the tbody
      table.querySelector("tbody").innerHTML = "";

      // Loop through the data and create new table rows
      data.forEach(function (rowData) {
        const row = document.createElement("tr");

        // Loop through the row data and create new table cells
        Object.keys(rowData).forEach(function (key, index) {
          const cell = document.createElement("td");
          if (key === "id") {
            cell.style.display = "none";
          } else if (key === "report_time") {
            if (rowData[key] !== "None") {
              // Format the report_time as "X min(s) ago"
              const reportTime = rowData[key];
              const currentTime = Date.now();
              const reportTimeInMs = new Date(reportTime).getTime();
              const timeDiffInMs = currentTime - reportTimeInMs;
              const timeDiffInMin = Math.floor(timeDiffInMs / 60000);
              cell.textContent = timeDiffInMin + " min(s) ago";
            } else {
              cell.textContent = rowData[key];
            }
          } else if (key === "fix_button") {
            if (rowData[key] !== "None") {
              const button = document.createElement("button");
              button.classList.add("btn", "btn-success"); // Add the "btn" and "btn-success" classes
              button.setAttribute("type", "button"); // Set the button type attribute to "button"
              button.setAttribute("data-toggle", "modal");
              button.setAttribute("data-target", "#modalTable");
              button.setAttribute("data-row-data", JSON.stringify(rowData));
              button.textContent = "Fix";

              button.addEventListener("click", function () {
                const rowData = JSON.parse(this.getAttribute("data-row-data"));

                selectLineModal.value = rowData.line_id;
                selectStationModal.value = rowData.station_id;
                selectProblemModal.value = rowData.problem_id;
                inputRemarksModal.value = "";
                inputTechNameModal.value = "";
                rowId.value = rowData.id;
              });

              cell.appendChild(button);
            } else {
              cell.textContent = rowData[key];
            }
            // Create a new div element
          } else {
            // Display other columns as usual
            cell.textContent = rowData[key];
          }
          row.appendChild(cell);
        });

        table.querySelector("tbody").appendChild(row);
      });
    } else {
      console.error("Error fetching data");
    }
  };
  xhr.send();
  getStatistics();
}
// function getLineConfiguration() {
//    const xhr = new XMLHttpRequest();
//    xhr.open("GET", "../linev3/php/getLineConfig.php");
//    xhr.onload = function () {
//      if (xhr.status === 200) {
//        // Parse the response data as JSON
//        const data = JSON.parse(xhr.responseText);

//        // Loop through the data and create new table rows
//        data.forEach(function (rowData) {
//          checkboxes[rowData.value].checked = true;
         
//        });
//      } else {
//        console.error("Error fetching data");
//      }
//    };
//    xhr.send();
//    getStatistics();
// }
//Get statistics for list group function
function getStatistics(){
  // Create a new XMLHttpRequest object
  const xhr = new XMLHttpRequest();
  const pills = [
    document.getElementById("pill-1"),
    document.getElementById("pill-2"),
    document.getElementById("pill-3"),
    document.getElementById("pill-4"),
  ];

  
  // Set up the request
  xhr.open("GET", `../linev3/php/getStatistics.php`);

  // Set the callback function
  xhr.onload = function () {
    if (xhr.status === 200) {
      // Clear the existing station options

      // Parse the response text as JSON
      const data = JSON.parse(xhr.responseText);
      
      // Loop through the data and create option elements
      data.forEach(function (item) {
        pills[0].innerHTML = item.trouble_shift;
        pills[1].innerHTML = item.trouble_line;
        pills[2].innerHTML = item.accumulated_dt;
        pills[3].innerHTML = item.busiest_tech;
      });
    } else {
      console.error("Error making request");
    }
  };

  // Send the request
  xhr.send();
}

noGoodReport.addEventListener("submit", function(event) {
  event.preventDefault(); // prevent default form submission behavior

  var line = noGoodReport.elements["line"].value;
  var station = noGoodReport.elements["station"].value;
  var problemType = noGoodReport.elements["problemType"].value;
  var name = noGoodReport.elements["name"].value;
  var remarksCheckBox = document.getElementById("addRemarks");

  
  var remarks = noGoodReport.elements["rmrk"].value;

  if (line === "" || station === "" || problemType === "" || name === "") {
    alert("Please fill in all required fields before submitting the form.");
    return;
  }

  var xhr = new XMLHttpRequest(); // create new XMLHttpRequest object

  xhr.onreadystatechange = function() {
    if (xhr.readyState === 4 && xhr.status === 200) {
      // handle successful response from server
      console.log(xhr.responseText);
      refreshTable();
    }
  };

  var params = new URLSearchParams();
  params.append("line", line);
  params.append("station", station);
  params.append("problemType", problemType);
  params.append("name", name);
  if (remarksCheckBox.checked) {
    params.append("rmrk", remarks);
  }
  

  xhr.open("POST", "../linev3/php/reportForm.php", true); // open POST request to PHP file
  xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); // set request header
  xhr.send(params); // send form data as request body
  //getInitialLine();
  resetForm();
});

cbRemarks.addEventListener("change", function () {
  if (this.checked) {
    inputRemarks.style.display = "block";
    inputRemarks.removeAttribute("disabled");
  } else {
    inputRemarks.style.display = "none";
    inputRemarks.setAttribute("disabled", "disabled");
  }
});

selectLine.addEventListener('change', function () {
  // Create a new XMLHttpRequest object
  const xhr = new XMLHttpRequest();


  // Set up the request
  xhr.open('GET', `../linev3/php/getStation.php`);

  // Set the callback function
  xhr.onload = function() {
    if (xhr.status === 200) {
      // Clear the existing station options
      selectStation.innerHTML = '';
      
      // Parse the response text as JSON
      const data = JSON.parse(xhr.responseText);

      // Loop through the data and create option elements
      data.forEach(function(item) {
        const optionElement = document.createElement('option');
        optionElement.value = item.value;
        optionElement.textContent = item.text;
        selectStation.appendChild(optionElement);
      });
    } else {
      console.error('Error making request');
    }
  };

  // Send the request
  xhr.send();
});

selectStation.addEventListener('change', function () {
  // Create a new XMLHttpRequest object
  const xhr = new XMLHttpRequest();
  
  const selectedStation = selectStation.value;
  const selectedLine = selectLine.value;
  // Set up the request
  xhr.open('GET', `../linev3/php/getProblemType.php?line=${selectedLine}&station=${selectedStation}`);

  // Set the callback function
  xhr.onload = function() {
    if (xhr.status === 200) {
      // Clear the existing station options
      selectProblem.innerHTML = '';
      
      // Parse the response text as JSON
      const data = JSON.parse(xhr.responseText);

      // Loop through the data and create option elements
      data.forEach(function(item) {
        const optionElement = document.createElement('option');
        optionElement.value = item.value;
        optionElement.textContent = item.text;
        selectProblem.appendChild(optionElement);
      });
    } else {
      console.error('Error making request');
    }
  };

  // Send the request
  xhr.send();
});

goodReport.addEventListener("submit", function (event) {
  event.preventDefault(); // prevent default form submission behavior

  var prodLine = goodReport.elements["prodLine"].value;
  var stationName = goodReport.elements["stationName"].value;
  var probType = goodReport.elements["probType"].value;
  var techName = goodReport.elements["techName"].value;
  var remarks = goodReport.elements["remarks"].value;
  var id_number = goodReport.elements["id_number"].value;

  var closeButton = document.querySelector('.close[data-dismiss="modal"]');

  console.log(techName);
  if (
    prodLine === "" ||
    stationName === "" ||
    probType === "" ||
    techName === "" ||
    techName === "" ||
    remarks === ""
  ) {
    alert("Please fill in all required fields before submitting the form.");
    return;
  }

  var xhr = new XMLHttpRequest(); // create new XMLHttpRequest object

  xhr.onreadystatechange = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
      // handle successful response from server
      console.log(xhr.responseText);
      refreshTable();
    }
  };

  var params = new URLSearchParams();
  params.append("id_number", id_number);
  params.append("prodLine", prodLine);
  params.append("stationName", stationName);
  params.append("probType", probType);
  params.append("remarks", remarks);
  params.append("techName", techName);

  xhr.open("POST", "../linev3/php/fixReportForm.php", true); // open POST request to PHP file
  xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); // set request header
  xhr.send(params); // send form data as request body

  closeButton.click();
  resetForm();
  getStatistics();
});

// Call the refreshTable function periodically
getInitialLine();

window.onload = function () { 
  refreshTable();
  //getLineConfiguration();
}
setInterval(refreshTable, 5000); // Refresh every 5 seconds

// Get the "Check all" button and all the checkboxes
const checkAllButton = document.getElementById("check-all");
const checkboxes = document.querySelectorAll(".switch-line");
const uncheckAllButton = document.getElementById("uncheck-all");

// Add a click event listener to the "Check all" button
// checkAllButton.addEventListener("click", function() {
//     // Loop through all the checkboxes and set their "checked" property to true
//     checkboxes.forEach(function(checkbox) {
//         checkbox.checked = true;
//     });
// });

// uncheckAllButton.addEventListener("click", function () {
//   // Loop through all the checkboxes and set their "checked" property to false
//   checkboxes.forEach(function (checkbox) {
//     checkbox.checked = false;
//   });
// });







 

