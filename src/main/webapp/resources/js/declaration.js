function required(myvalue) {
    myvalue = myvalue + "";
    myvalue = myvalue.replace(/^\s+|\s+$/gm, '');//for trim   
    if (myvalue == "" || myvalue == '' || myvalue.length == 0)
        return false;
    else
        return true;
}

function checkForOldIe(value) {

    if (value == "" || value == '' || value.length == 0) {
        return false;
    }
    var value1 = value;
    value1 = value1.replace("-", "/");
    value1 = value1.replace("\\", "/");
    value1 = value1.replace(".", "/");
    value1 = value1.replace("#", "/");
    //value1=value1.toLowerCase();
    var subParts = value1.split('/');


    if (subParts.length != 3)
        return false;
    else
        return true;

}
function myDate(value) {

    var result = value.match(/^\d\d?\/\d\d?\/\d\d\d\d$/);
    if (result == null)
        return false;
    else
        return true;

}
var dates = {
    convert: function (d) {

        return (
                d.constructor == Date ? d :
                d.constructor == Array ? new Date(d[0], d[1], d[2]) :
                d.constructor == Number ? new Date(d) :
                d.constructor == String ? new Date(d) :
                typeof d == "object" ? new Date(d.year, d.month, d.date) :
                NaN
                );
    },
    compare: function (a, b) {
        // Compare two dates (could be of any type supported by the convert
        // function above) and returns:
        //  -1 : if a < b
        //   0 : if a = b
        //   1 : if a > b
        // NaN : if a or b is an illegal date
        // NOTE: The code inside isFinite does an assignment (=).
        a.setHours(0, 0, 0, 0);
        b.setHours(0, 0, 0, 0);
        return (
                isFinite(a = this.convert(a).valueOf()) &&
                isFinite(b = this.convert(b).valueOf()) ?
                (a > b) - (a < b) :
                NaN
                );
        //isFinite(a=this.convert(a).valueOf()) &&  isFinite(b=this.convert(b).valueOf()) ? (a>b)-(a<b) :NaN );
    },
    inRange: function (d, start, end) {
        // Checks if date in d is between dates in start and end.
        // Returns a boolean or NaN:
        //    true  : if d is between start and end (inclusive)
        //    false : if d is before start or after end
        //    NaN   : if one or more of the dates is illegal.
        // NOTE: The code inside isFinite does an assignment (=).
        return (
                isFinite(d = this.convert(d).valueOf()) &&
                isFinite(start = this.convert(start).valueOf()) &&
                isFinite(end = this.convert(end).valueOf()) ?
                start <= d && d <= end :
                NaN
                );
    }
}

function dateLessThanToday(value) {
    var todayDate = new Date();
    todayDate.setHours(0, 0, 0, 0);
    //convert value into date object
    var n = value.split("/");

    if (n[0].substring(0, 1) == "0") {
        n[0] = n[0].substring(1, 2);
    }
    n[1] = n[1] - 1;
    var enteredDate = new Date(n[2], n[1], n[0]);
    enteredDate.setHours(0, 0, 0, 0);
    if (dates.compare(enteredDate, todayDate) == 1)
        return false;
    else
        return true;
}

function parseDate(dateStr) {
    var dateParts = dateStr.split("/");
    return new Date(dateParts[2], (dateParts[1] - 1), dateParts[0]);
}
function calculateAge(dateOfBirth, dateToCalculate) {
    var calculateYear = dateToCalculate.getFullYear();
    var calculateMonth = dateToCalculate.getMonth();
    var calculateDay = dateToCalculate.getDate();

    var birthYear = dateOfBirth.getFullYear();
    var birthMonth = dateOfBirth.getMonth();
    var birthDay = dateOfBirth.getDate();

    var age = calculateYear - birthYear;
    var ageMonth = calculateMonth - birthMonth;
    var ageDay = calculateDay - birthDay;

    if (ageMonth < 0 || (ageMonth == 0 && ageDay < 0)) {
        age = parseInt(age) - 1;
    }
    return age;
}

function validate_dob(value, requiredOrNot) {

    requiredOrNot = parseInt(requiredOrNot);
    if (requiredOrNot == 1 || (requiredOrNot == 0 && value.length >= 1)) {
        value = value.replace(/^\s+|\s+$/gm, '');//trim
        if (requiredOrNot == 1 && required(value) == false)
            return "Date of Birth is required";
        else if (checkForOldIe(value) == false) {

            return "Please enter a date in the format dd/mm/yyyy";
        } else if (myDate(value) == false)
        {
            return "Please enter a date in the format dd/mm/yyyy";
        } else if (dateLessThanToday(value) == false) {
            return "Date must be less than or equal to today's date";
        } else if (calculateAge(parseDate(value), new Date()) > 12) {
            return "Applicant of age 12 yrs or more should apply separetly from parent";
        }
    }
    return "true";
}
function validatePassword(str)
{
   // var re = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{6,20})/;
	
	var re = /(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{6,20})/;
	alert(re.test(str));
	
    return re.test(str);
}

function checkspl(str) {
    var iChars = "!@#$%^&*()+=-[]\\\';,./{}|\":<>?";

    for (var i = 0; i < str.value.length; i++) {
        if (iChars.indexOf(str.value.charAt(i)) != -1) {
            return false;
        }
    }
    return true;
}


function validateUserID(value)
{
    if (value.length > 10)
    {
        return false;
    } else {
        return alphabetNumberRegex(value);
    }
}

function alphabetNumberRegex(value) {

    var result = value.match(/^[a-zA-Z0-9\s]+$/);
    if (result == null)
        return false;
    else
        return true;
}

function validateAlpha(value) {

    var result = value.match(/^[a-zA-Z]+$/);
    if (result == null)
        return false;
    else
        return true;
}

function validateAddress(value) {

    var result = value.match(/^[a-zA-Z0-9\s,'-]*$/);
    if (result == null)
        return false;
    else
        return true;
}

function validatePhone(value) {

    var result = value.match(/^[0-9]+$/);
    if (result == null)
        return false;
    else
        return true;
}

function validateEmail(value) {

	var result = value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/);
    if (result == null)
        return false;
    else
        return true;
}

function validateEmail(value) {

	var result = value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/);
    if (result == null)
        return false;
    else
        return true;
}
function validateAlphaWithSpace(value) {

    var result = value.match(/^[a-zA-Z\s]+$/);
    if (result == null)
        return false;
    else
        return true;
}
function isEmpty(str)
	{
		if(str=="")
		return true;
}
function validateDate(value) {
    var result = value.match(/(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d/);
    if (result == null)
        return false;
    else
        return true;
}

