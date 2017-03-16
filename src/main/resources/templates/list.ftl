<!DOCTYPE html>
<html lang="en" ng-app="crudApp">
    <head>
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
            <link type="text/css" href="css/app.css" rel="stylesheet"/>
               <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
               <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.4.2/angular-ui-router.min.js" ></script>
               <script src="https://cdnjs.cloudflare.com/ajax/libs/localforage/1.5.0/localforage.min.js" ></script>
           <script src="js/lib/angular.min.js" ></script>
           <script src="js/lib/angular-ui-router.min.js" ></script>
           <script src="js/lib/localforage.min.js" ></script>
           <script src="js/lib/ngStorage.min.js"></script>
        <script src="js/app/app.js"></script>
        <script src="js/app/UserService.js"></script>
        <script src="js/app/UserController.js"></script>
    </head>
   <body>

        <script src="js/app/app.js"></script>
        <script src="js/app/UserService.js"></script>
        <script src="js/app/UserController.js"></script>
        <div class="generic-container">
            <div class="panel panel-default">

            <div class="panel-heading"><span class="lead">Specific User </span></div>
            <div class="panel-body">
                <div class="formcontainer">
                    <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
                    <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
                    <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                        <input type="hidden" ng-model="ctrl.user.id" />
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="uname">Name</label>
                                <div class="col-md-7">
                                    <input type="text" ng-model="ctrl.user.name" id="uname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="age">Age</label>
                                <div class="col-md-7">
                                    <input type="text" ng-model="ctrl.user.age" id="age" class="form-control input-sm" placeholder="Enter your Age." required ng-pattern="ctrl.onlyIntegers"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="salary">Salary</label>
                                <div class="col-md-7">
                                    <input type="text" ng-model="ctrl.user.salary" id="salary" class="form-control input-sm" placeholder="Enter your Salary." required ng-pattern="ctrl.onlyNumbers"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-actions floatRight">
                                <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid || myForm.$pristine">
                                <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
         </div>

        <div class="panel panel-default">

                <div class="panel-heading"><span class="lead">List of Users </span></div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>NAME</th>
                                <th>AGE</th>
                                <th>SALARY</th>
                                <th width="100"></th>
                                <th width="100"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr ng-repeat="u in ctrl.getAllUsers()">
                                <td>{{u.id}}</td>
                                <td>{{u.name}}</td>
                                <td>{{u.age}}</td>
                                <td>{{u.salary}}</td>
                                <td><button type="button" ng-click="ctrl.editUser(u.id)" class="btn btn-success custom-width">Edit</button></td>
                                <td><button type="button" ng-click="ctrl.removeUser(u.id)" class="btn btn-danger custom-width">Remove</button></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>