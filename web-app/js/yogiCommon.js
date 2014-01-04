function isNumberString(val) {
    ///if (!val) return false;
    // var regX = new RegExp('\d');
    return new RegExp('^\d*').test(val);
};

function isNumberKey(val) {
    debugger;
    if (val) {
        var nop = val.match(/[\d\.]+/);
        if (nop) {
            return nop + "";
        }

    }
    else {
        return 0;
    }

};


function isAlreadyExist(a, id) {


    if (a) {
        debugger;
        $http.get("/${grailsApplication.config.erpName}/exportEnum/isAlready?class1=ExportEnum&data=" + a)
            .success(function (data) {
                if (data != 1) {
                    alert(data);
                    return $("#" + id).focus();
                }
            });
    }
    else {
        return $("#" + id).focus();
    }
}

