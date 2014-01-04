angular.module('searchGrid', [])
    .constant('SERVER', '/ng-searchDemo/search/index')
    .directive('ySearchGrid', ['$http', 'SERVER', '$compile' , function ($http, SERVER, $compile) {

        function link(scope, element, attrs) {

            // alert('directive executed');
            /*var format,
             timeoutId;*/
            if (!attrs['ySearchDomain'] || !attrs['ySearchQuery']) {
                throw  "Invalid attribute";
            }
            var jqElement = jQuery(element);
            // var template = attrs['ySearchQuery'].replace(/@/,'{{');
            var paramsA = {
                domain: attrs['ySearchDomain'],
                query: attrs['ySearchQuery']// $compile(attrs['ySearchQuery'])(scope)
            };
            //$compile('<span>{{var2}}</span>')(scope)
//            jqElement.change(function() {
//               // alert( "Handler for .change() called." );
//                updateResult();
//            });

            function updateDOM(value) {
                jQuery('body').append('<br/><p>' + JSON.stringify(value) + '</p>');
//                document.body.children.add(value);
            }

            /* function updateTime() {
             element.text(dateFilter(new Date(), format));
             }*/

            function updateResult() {
                $http({method: 'GET', url: SERVER, responseType: 'json', params: paramsA})
                    .success(function (data, status, headers, config) {
                        debugger;
                        updateDOM(data);
                    })
                    .error(function (data, status, headers, config) {
                        debugger;
                        updateDOM({error: status, headers: headers});
                    })
            }

            scope.$watch(attrs.ngModel, function (value) {
                debugger;
                paramsA.query = attrs['ySearchQuery'];
                updateResult()
            });
            /*
             element.on('$destroy', function() {
             $interval.cancel(timeoutId);
             });

             // start the UI update process; save the timeoutId for canceling
             timeoutId = $interval(function() {
             updateTime(); // update DOM
             }, 1000);*/
        }

        return {
            restrict: 'A',
            link: link//,
            //   scope: {},
            //template: 'Name: {{customer.name}} Address: {{customer.address}}'
        };
    }]);

