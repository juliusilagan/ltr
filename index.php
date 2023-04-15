<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Line Reporter</title>
    <link rel="shortcut icon" href="ico/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" type="text/css" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Font Awesome JS -->

    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <script defer src="fontawesome/js/all.js"></script>
    <link rel="stylesheet" href="node_modules/datatables.net-dt/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="css\switch.css">

    <!-- slideon js -->


    <link href="node_modules/tabulator-tables/dist/css/tabulator.min.css" rel="stylesheet">
    <script type="text/javascript" src="node_modules/tabulator-tables/dist/js/tabulator.min.js"></script>
    <style>
        body {
            background-image: url("img/bf.jpg");
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        input#rmrk {
            display: none;
        }

        #addRemarks {
            color: #43a047;
        }
    </style>

</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar" style="background-image: linear-gradient(to right top, #14a81b, #36b41c, #4ec11d, #63cd1e, #78da1f);">
            <div class="sidebar-header">
                <h3><a href="index.php"><img src="img/ami.png" alt="AMI" height="50" width="200"></a></h3>
            </div>
            <ul class="list-unstyled components">

                <li>
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-edit"></i> Report it!
                    </a>
                    <ul class="collapse list-unstyled show" id="homeSubmenu" style="background-color: #b9f6ca;">
                        <div class="card-body">
                            <form name="reportForm" id="reportForm" method="POST">
                                <div class="form-group">
                                    <select name="line" class="custom-select" id="line" required="">
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select name="station" class="custom-select" id="station" required="">
                                        <option value="default">Station</option>

                                    </select>
                                </div>
                                <div class="form-group">
                                    <select name="problemType" class="custom-select" id="problemType" required="">
                                        <option value="default">Select Problem</option>


                                    </select>
                                </div>
                                <div class="form-group">
                                    <label style="color: #495057;">
                                        <input type="checkbox" name="addRemarks" id="addRemarks">
                                        Add Remarks
                                    </label>

                                    <input name="rmrk" id="rmrk" class="form-control" type="text" placeholder="Remarks" required="" disabled="disabled">
                                </div>
                                <div class="form-group">
                                    <input name="name" id="name" class="form-control" type="text" placeholder="Your Name" autocomplete="on" required maxlength="10">
                                </div>
                                <button name="btnNoGood" type="submit" class="btn btn-danger btn-block" data-toggle="tooltip" data-placement="top" title="NO GOOD"><i class="fas fa-thumbs-down"></i></button>
                            </form>
                        </div>
                    </ul>
                </li>


            </ul>
            <div class="form-group">
                <label for="alarmSound">Alarm Sound</label>
                <select name="alarmSound" class="custom-select" id="alarmSound">
                    <option value="alarm" selected>alarm</option>
                    <option value="beep">beep</option>
                    <option value="car_honk">car_honk</option>
                </select>
            </div>
        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-secondary">
                        <i class="fas fa-align-left"></i>
                        <span></span>
                    </button>

                    <div class="flex-grow-1"></div>

                    <a href="#" class="btn btn-success" tabindex="-1" role="button" aria-disabled="true">Monthly Report</a>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                            </li>
                        </ul>
                    </div>

                </div>
            </nav>
            <!-- <div class="alert alert-warning alert-dismissible fade show" role="alert">
                Configure first the active production lines to use the program. <strong>Inactive lines won't show at menu</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="accordion mb-3" id="accordionExample">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Configure Active Production Lines
                            </button>
                        </h2>
                    </div>

                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                        <div class="card-body">

                            <form name="lineConfigForm" id="lineConfigForm">
                                <div class="form-row">

                                    <div class="col">
                                        <label class="switch">
                                            <input type="checkbox" class="switch-line" id="switch_line1">
                                            <span class="slider round"></span>
                                        </label>
                                        <label for="switch_line1">Line 1</label>
                                    </div>
                                    <div class="col">
                                        <label class="switch">
                                            <input type="checkbox" class="switch-line" id="switch_line2">
                                            <span class="slider round"></span>
                                        </label>
                                        <label for="switch_line2">Line 2</label>
                                    </div>
                                    <div class="col">
                                        <label class="switch">
                                            <input type="checkbox" class="switch-line" id="switch_line3">
                                            <span class="slider round"></span>
                                        </label>
                                        <label for="switch_line3">Line 3</label>
                                    </div>

                                </div>
                                <div class="form-row">

                                    <div class="col">
                                        <label class="switch">
                                            <input type="checkbox" class="switch-line" id="switch_line4">
                                            <span class="slider round"></span>
                                        </label>
                                        <label for="switch_line4">Line 4</label>
                                    </div>
                                    <div class="col">
                                        <label class="switch">
                                            <input type="checkbox" class="switch-line" id="switch_line5">
                                            <span class="slider round"></span>
                                        </label>
                                        <label for="switch_line5">Line 5</label>
                                    </div>
                                    <div class="col">
                                        <label class="switch">
                                            <input type="checkbox" class="switch-line" id="switch_line7">
                                            <span class="slider round"></span>
                                        </label>
                                        <label for="switch_line7">Line 7</label>
                                    </div>

                                </div>
                                <div class="form-row">

                                    <div class="col">
                                        <label class="switch">
                                            <input type="checkbox" class="switch-line" id="switch_line8">
                                            <span class="slider round"></span>
                                        </label>
                                        <label for="switch_line8">Line 8</label>
                                    </div>
                                    <div class="col">
                                        <label class="switch">
                                            <input type="checkbox" class="switch-line" id="switch_line10">
                                            <span class="slider round"></span>
                                        </label>
                                        <label for="switch_line10">Line 10</label>
                                    </div>
                                    <div class="col">
                                        <label class="switch">
                                            <input type="checkbox" class="switch-line" id="switch_line11">
                                            <span class="slider round"></span>
                                        </label>
                                        <label for="switch_line11">Line 11</label>
                                    </div>

                                </div>
                                <div class="form-row">

                                    <div class="col">
                                        <label class="switch">
                                            <input type="checkbox" class="switch-line" id="switch_line12">
                                            <span class="slider round"></span>
                                        </label>
                                        <label for="switch_line12">Line 12</label>
                                    </div>
                                    <div class="col">
                                        <div class="d-flex justify-content-end mb-3">
                                            <button type="button" id="check-all" class="btn btn-success btn-sm mx-1">Check all</button>
                                            <button type="button" id="uncheck-all" class="btn btn-secondary btn-sm mx-1">Uncheck all</button>
                                            <button type="button" id="sendLineConfig" class="btn btn-primary btn-sm mx-1">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div> -->

            <div class="card-body bg-white">
                <div class="row">
                    <div class="col-3">
                        <ul class="list-group list-group-horizontal">
                            <li class="list-group-item">Troubles this shift
                                <span id="pill-1" class="badge badge-dark badge-pill">-</span>
                            </li>
                        </ul>
                    </div>
                    <div class="col-3">
                        <ul class="list-group list-group-horizontal">
                            <li class="list-group-item">Troublesome Line
                                <span id="pill-2" class="badge badge-warning badge-pill">-</span>
                            </li>
                        </ul>
                    </div>
                    <div class="col-3">
                        <ul class="list-group list-group-horizontal">
                            <li class="list-group-item">Accum DT
                                <span id="pill-3" class="badge badge-danger badge-pill">-</span>
                            </li>
                        </ul>
                    </div>
                    <div class="col-3">
                        <ul class="list-group list-group-horizontal">
                            <li class="list-group-item">Busiest Tech
                                <span id="pill-4" class="badge badge-success badge-pill">-</span>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card-body bg-white">
                        <table id="table_id" class="table table-striped">
                            <thead class="thead-dark">
                                <tr>
                                    <th style="display: none;">ID #</th>
                                    <th>Line #</th>
                                    <th>Station</th>
                                    <th>Problem Type</th>
                                    <th>Remarks</th>
                                    <th>Reported By</th>
                                    <th>Time Reported</th>
                                    <th>Fix</th>
                                </tr>
                            </thead>
                            <tbody>

                                <tr>

                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                </tr>
                                <tr>

                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                </tr>
                                <tr>

                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                    <td>Loading...</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!--MODAL FOR TABLE -->
    <div class="modal fade" id="modalTable" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <form name="fixReportForm" id="fixReportForm" method="POST">
                    <div class="modal-header">
                        <h5 class="modal-title" id="fixModal">Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" name="id_number" id="id_number">
                        <div class="form-group">
                            <label for="prodLine">Production Line</label>
                            <input type="text" class="form-control" name="prodLine" id="prodLine" readonly>
                        </div>
                        <div class="form-group">
                            <label for="stationName">Station Name</label>
                            <input type="text" class="form-control" name="stationName" id="stationName" readonly>
                        </div>
                        <div class="form-group">
                            <label for="probType">Type of Problem</label>
                            <input type="text" class="form-control" name="probType" id="probType" readonly>
                        </div>
                        <div class="form-group">
                            <label for="remarks">Remarks</label>
                            <input type="text" class="form-control" name="remarks" id="remarks" required maxlength="13">
                        </div>
                        <div class="form-group">
                            <label for="techName">Technician Name</label>
                            <input type="text" class="form-control" name="techName" id="techName" required maxlength="13">
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="submit" id="fixButton" class="btn btn-success">Fix</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--MODAL FOR TABLE -->
    <footer>
        <div class="text-center" style="background-color: #43a047; color: white;">
            Line Reporter v3.0 | Julius Ilagan 🫰🫰🫰
        </div>
    </footer>

    <!-- Popper.JS -->

    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules\datatables.net\js\jquery.dataTables.min.js"></script>
    <script src="js/index.js"></script>
    <script src="js/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="js\switch.js"></script>
</body>

</html>