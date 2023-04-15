<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Monthly Report</title>
    <link rel="shortcut icon" href="ico/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" type="text/css" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">

    <!-- Bootstrap Datepicker CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css">


    <!-- Font Awesome JS -->

    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.css">
    <script defer src="fontawesome/js/all.js"></script>
    <link rel="stylesheet" href="node_modules/datatables.net-dt/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="css/loading-bar.css">

    <link href="node_modules/tabulator-tables/dist/css/tabulator.min.css" rel="stylesheet">
    <script type="text/javascript" src="node_modules/tabulator-tables/dist/js/tabulator.min.js"></script>
    <script type="text/javascript" src="node_modules\chart.js\dist\chart.umd.js"></script>
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
        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-secondary">
                        <i class="fas fa-align-left"></i>
                        <span></span>
                    </button>

                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>



                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">

                            </li>

                        </ul>
                    </div>


                </div>
            </nav>

            <div class="card text-white bg-secondary mb-3">
                <div class="card-header">
                    Monthly Report Form
                </div>
                <div class="card-body">
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="selectMonth">Select Month</label>
                                <select class="form-control" name="selectMonth" id="selectMonth">
                                    <option value="">January</option>
                                    <option value="">February</option>
                                    <option value="">March</option>
                                    <option value="">April</option>
                                    <option value="">May</option>
                                    <option value="">June</option>
                                    <option value="">July</option>
                                    <option value="">August</option>
                                    <option value="">September</option>
                                    <option value="">October</option>
                                    <option value="">November</option>
                                    <option value="">December</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="selectYear">Select Year</label>
                                <input type="number" class="form-control" id="selectYear" value="2023" min="2023" max="3000">
                            </div>
                        </div>
                        <div class="form-row mb-5">
                            <div class="form-group col-md-6">
                                <label for="uptimeHours">Uptime hours per shift</label>
                                <input class="form-control" type="number" name="uptimeHours" id="uptimeHours" value="11.5">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputPercentage">Target Percentage (%)</label>
                                <input type="number" class="form-control" id="inputPercentage" value="98" min="1" max="100">
                            </div>
                        </div>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="home-tab" data-toggle="tab" data-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Line 1</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="profile-tab" data-toggle="tab" data-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Line 2</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="contact-tab" data-toggle="tab" data-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Line 3</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="contact-tab" data-toggle="tab" data-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Line 4</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="contact-tab" data-toggle="tab" data-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Line 5</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="contact-tab" data-toggle="tab" data-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Line 7</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="contact-tab" data-toggle="tab" data-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Line 8</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="contact-tab" data-toggle="tab" data-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Line 10</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="contact-tab" data-toggle="tab" data-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Line 11</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="contact-tab" data-toggle="tab" data-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Line 12</button>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="card-body">
                                    <form name="line_1" id="line1Form">
                                        <!-- Add an ID to the container div for easier selection -->
                                        <div id="divi">
                                            <div id="form-container" class="form-row mb-3">
                                                <div class="row">
                                                    <div class="col-4">
                                                        <input type="text" class="form-control" id="datepicker" placeholder="">
                                                    </div>
                                                    <div class="col-4">
                                                        <div class="btn-group" role="group" aria-label="Basic example">
                                                            <div class="input-group-prepend">
                                                                <span class="input-group-text">Shift: </span>
                                                            </div>
                                                            <button type="button" class="btn btn-light">A</button>
                                                            <button type="button" class="btn btn-dark">B</button>
                                                        </div>
                                                    </div>
                                                    <div class="col-4">
                                                        <input type="number" class="form-control" placeholder="Uptime Hours" min="0" max="12">
                                                    </div>
                                                </div>
                                                <button type="button" id="add-row" class="btn btn-success ml-auto">Add</button>
                                            </div>

                                        </div>
                                    </form>

                                </div>

                            </div>
                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                            </div>
                            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">

                            </div>
                        </div>
                        <button type="button" class="btn btn-success btn-lg btn-block">Compute Monthly Report</button>
                    </form>
                </div>
            </div>
            <div class="jumbotron jumbotron-fluid">
                <div class="container">
                    <h1 class="display-4">April 2023 Monthly Report</h1>
                    <p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
                </div>
            </div>

            <div class="card-deck mb-3">

                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">Toshiba Machine Uptime</h5>
                        <div>
                            <canvas id="chart-1"></canvas>
                        </div>
                    </div>
                </div>
                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">TIP Backend Machine Uptime</h5>
                        <div class="loading-wrapper d-flex align-items-center justify-content-center">
                            <div class="loading-bar"></div>
                        </div>
                    </div>
                </div>
                <div class="card">

                    <div class="card-body">
                        <h5 class="card-title">TIP Backend Station Machine Uptime</h5>
                        <div class="loading-wrapper d-flex align-items-center justify-content-center">
                            <div class="loading-bar"></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header">
                    Logs Table
                </div>
                <div class="card-body">
                    <div id="logs-table"></div>
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

    <script src="js/popper.js"></script>
    <!-- Bootstrap JS -->
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="js\chartDisplay.js"></script>
    <script src="js\logsTable.js"></script>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Bootstrap JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>

    <!-- Bootstrap Datepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>


    <script src="js/datePicker.js"></script>
    <script src="js/monthlyReport.js"></script>
</body>

</html>