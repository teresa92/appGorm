<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:stylesheet src="bootstrap.min.css"/>
    <asset:stylesheet src="owncss.css"/>
    <title></title>
</head>

<body id="page-top">

<div id="wrapper">

    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>

            <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
        </a>

        <hr class="sidebar-divider my-0">

        <li class="nav-item">
            <a class="nav-link" href="index.html">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>ΕΡΓΑΖΟΜΕΝΟΙ</span></a>
        </li>
        <hr class="sidebar-divider">

        <div class="sidebar-heading">
            ΕΠΙΛΟΓΕΣ
        </div>

        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
               aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Εσαφωγή εργαζομένου</span>
            </a>

            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">

                </div>
            </div>
        </li>
        <hr class="sidebar-divider my-0">
        <li class="nav-item">
            <a class="nav-link" href="index.html">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>ΤΜΗΜΑΤΑ</span></a>
        </li>
        <hr class="sidebar-divider">

        <div class="sidebar-heading">
            ΕΠΙΛΟΓΕΣ
        </div>

        <li class="nav-item">
            <g:link class="nav-link collapsed" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo" controller="department" action="add">
                <i class="fas fa-fw fa-cog"></i>
                <span>Εσαγωγή τμήματος</span>
            </g:link>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">

                </div>
            </div>
        </li>


    </ul>

    <div id="content-wrapper" class="d-flex flex-column">

        <div id="content">

            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <div class="topbar-divider d-none d-sm-block"></div>



            </ul>

            </nav>

            <div class="container-fluid">

                <h1 class="h3 mb-2 text-gray-800">Εισαγωγή εργαζομένου</h1>

                <p class="mb-4">Μπορείτε να εισάγετε ένα νέο τμήμα...

                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Τμήματα</h6>
                    </div>

                    <div class="card-body">
                        <div class="table-responsive">
                            <form>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Όνομα</label>
                                    <input name="departmentName" type="text" class="form-control" id="exampleInputEmail1"
                                           aria-describedby="emailHelp" value="${departmentEdit.name}">
                                    <small id="emailHelp"
                                           class="form-text text-muted">Εισάγετε ένα τμήμα που δεν υπάρχει ήδη</small>
                                </div>
                                <g:actionSubmit id="${departmentEdit.id}"   value="Εισαγωγή " controller="department" action="update" class="btn btn-primary" />
                            </form>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>