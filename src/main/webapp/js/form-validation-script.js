var Script = function () {

    $.validator.setDefaults({
        //submitHandler: function () {
            // var data = $("#signupForm").serialize();
            // $.ajax({
            //     url: "/student/addStudent.do",
            //     data: data,
            //     type: "post",
            //     dataType: 'json',
            // })
            //alert("submitted!");
       // }
    })
    ;

    $().ready(function () {
        // validate the comment form when it is submitted
        $("#commentForm").validate();

        // validate signup form on keyup and submit
        $("#signupForm").validate({
            rules: {
                studentName: {
                    required: true,
                    minlength: 2
                },
                Gender: "required",
                birthday: {
                    required: true,
                    date: true
                },
                StudentIdNo: {
                    required: true,
                    minlength: 18,
                    maxlength: 18
                },
                PhoneNumber: {
                    required: true,
                    // tel: true
                },
                StudentAddress: "required",
                age: {
                    required: true,
                    number: true
                },
            },
            messages: {
                studentName: {
                    required: "Please enter your Name",
                    minlength: "Your name must consist of at least 2 characters"
                },
                Gender: "Please enter your Gender",
                birthday: "Please enter a valid date",
                StudentIdNo: {
                    required: "Please provide a CardNo",
                    minlength: "Your CardNo must be at least 18 characters long",
                    maxlength: "Your CardNo must be at most 18 characters long"
                },
                PhoneNumber: "Please enter a valid PhoneNumber",
                StudentAddress: "Please enter a valid Address",
                age: "Please enter a valid Age"
            }
        });

        // propose username by combining first- and lastname
        $("#age").focus(function () {
            var birthday = $("#birthday").val();

            this.value = jsGetAge(birthday);

        });

        // //code to hide topic selection, disable for demo
        // var newsletter = $("#newsletter");
        // // newsletter topics are optional, hide at first
        // var inital = newsletter.is(":checked");
        // var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
        // var topicInputs = topics.find("input").attr("disabled", !inital);
        // // show when newsletter is checked
        // newsletter.click(function () {
        //     topics[this.checked ? "removeClass" : "addClass"]("gray");
        //     topicInputs.attr("disabled", !this.checked);
        // });
    });


}
();

/*根据出生日期算出年龄*/
function jsGetAge(strBirthday) {
    var returnAge;
    var strBirthdayArr = strBirthday.split("-");
    var birthYear = strBirthdayArr[0];
    var birthMonth = strBirthdayArr[1];
    var birthDay = strBirthdayArr[2];

    d = new Date();
    var nowYear = d.getFullYear();
    var nowMonth = d.getMonth() + 1;
    var nowDay = d.getDate();

    if (nowYear == birthYear) {
        returnAge = 0;//同年 则为0岁
    }
    else {
        var ageDiff = nowYear - birthYear; //年之差
        if (ageDiff > 0) {
            if (nowMonth == birthMonth) {
                var dayDiff = nowDay - birthDay;//日之差
                if (dayDiff < 0) {
                    returnAge = ageDiff - 1;
                }
                else {
                    returnAge = ageDiff;
                }
            }
            else {
                var monthDiff = nowMonth - birthMonth;//月之差
                if (monthDiff < 0) {
                    returnAge = ageDiff - 1;
                }
                else {
                    returnAge = ageDiff;
                }
            }
        }
        else {
            returnAge = -1;//返回-1 表示出生日期输入错误 晚于今天
        }
    }

    return returnAge;//返回周岁年龄

}
