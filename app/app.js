var myResume = angular.module("myResume", ["ngRoute"]); //module-module dari angular

myResume.config(function($routeProvider) {
    $routeProvider
        .when("/", {
            templateUrl: "index.html",
            controller: "ResumeCtrl"
        })
        .otherwise({
            redirectTo: "/"
        });
});



myResume.controller('ResumeCtrl', function($scope,$timeout,$http) {
    $scope.title = {
        isi: "Get to know me"
    };
    $scope.displayData=function(){
        $http.get("http://localhost:8080/resume/backend/api/resume")
            .then(function(responData){
                $scope.info= responData;
                $scope.socmed = responData.data.social_media;
                $scope.edu = responData.data.education;
                $scope.exp = responData.data.experience;
                $scope.skill = responData.data.skill.arrChilds;
                console.log($scope.info);
            })
    }
    $scope.displayData();
});
