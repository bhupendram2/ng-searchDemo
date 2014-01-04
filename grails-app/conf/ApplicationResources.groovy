modules = {
    application {
        resource url: 'js/application.js'
        resource url: 'js/yogiCommon.js'
//        resource url: 'js/focus.js'
//        resource url: 'js/AutoTesting.js'
//        resource url: 'js/moment-js/2.4.0/moment.min.js'
//        resource url: 'js/moment-js/2.4.0/moment-with-langs.js'
    }

    angularJs {
        dependsOn 'lodash', 'jquery9'
        resource url: 'js/angular/1.2.7/angular.js'
    }

    lodash {
        resource url: 'js/lodash.js'
    }
    yogiModules {
        dependsOn 'angularJs'
        resource url: 'js/searchGrid.js'
        resource url: 'js/ngApplication.js'
    }

    jquery9 {
        resource url: 'js/jquery-1.9.1.js'
        // resource url: 'js/jquery.min.js'
    }

    jqueryUI {
        resource url: 'js/jquery-ui.js'
    }

    DatePicker {
        resource url: 'js/bootstrap-datepicker.js'
    }
    commonJS {
        dependsOn(['angularJs', 'jquery9', 'jqueryUI', 'DatePicker', 'lodash',])
    }


}