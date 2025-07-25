<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="${pageContext.request.contextPath}//assets/image/logo2-removebg-preview.png">
        <title>KDS - Teacher Profile</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/parent/css/parenthome.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/parent/css/childprofile.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/parent/css/childregister.css">
    </head>

    <body>
        <div class="wrapper">
            <div class="home">
                <div class="left-side-menu">
                    <div class="vertical-menu">
                        <div class="user-welcome">
                            <img class="user-img" src="${pageContext.request.contextPath}/parent/img/userImg/dummy-user-img.png" style="width: 80px; height: 80px;" alt="">
                            <p>${sessionScope.account.firstName} ${sessionScope.account.lastName}</p>
                        </div>
                        <div class="menu-item-container">
                            <ul class="item-lists">

                                <li class="menu-item current1">
                                    <a href="${pageContext.request.contextPath}/teacher/teacherprofile.jsp">Teacher Information</a>
                                </li>

                                <li class="menu-item">
                                    <a href="${pageContext.request.contextPath}/changepassword">Change Password</a>
                                </li>


                            </ul>
                        </div>
                        <div style="border-top: 3px solid gray;"></div>
                        <div style="position: absolute;margin-top: 1vh; margin-left: 40px">
                            <input type="button" class="log-out_button" onclick="window.location.replace('${pageContext.request.contextPath}/logout')" value="Log out"/>
                        </div>
                    </div>
                </div>

                <div class="right-side">
                    <div class="page-content">
                        <div class="kid-profile">
                            <div class="kid-profile_header">

                                <div class="img-section">
                                    <img src="${pageContext.request.contextPath}/parent/img/userImg/dummy-user-img.png" alt="">
                                </div>

                                <div class="personel-section">
                                    <h1>${sessionScope.account.firstName} ${sessionScope.account.lastName}</h1>
                                    <p>${sessionScope.account.dob}</p>
                                </div>
                            </div>



                            <div class="kid-profile_content">
                                <div class="class content-item">
                                    <div class="item-title">
                                        <strong>First Name</strong>

                                    </div>
                                    <c:set var="parent" value="${requestScope.account}"/>
                                    <p class="parent-infor">${account.firstName}</p>

                                </div>
                                <div class="content-item phone">
                                    <div class="item-title">
                                        <strong>Last Name</strong>

                                    </div>
                                    <c:set var="parent" value="${requestScope.account}"/>
                                    <p class="parent-infor">${account.lastName}</p>

                                </div>
                                <div class="content-item phone">

                                    <div class="item-title">
                                        <strong>Date of birth</strong>

                                    </div>
                                    <p class="parent-infor">${account.dob}</p>



                                </div>   
                                <div class="content-item address">
                                    <div class="item-title">
                                        <strong>Gender</strong>
                                    </div>
                                    <c:if test="${account.gender == true }">
                                        <p class="parent-infor">Male</p>
                                    </c:if>
                                    <c:if test="${account.gender == false }">
                                        <p class="parent-infor">Female</p>
                                    </c:if>    
                                </div>
                                <div class="content-item address">
                                    <div class="item-title">
                                        <strong>Phone</strong>

                                    </div>
                                    <c:set var="parent" value="${requestScope.account}"/>
                                    <p class="parent-infor">${account.phoneNumber}</p>

                                </div>
                                <div class="content-item description">
                                    <div class="item-title">
                                        <strong>Address</strong>

                                    </div>
                                    <c:set var="parent" value="${requestScope.account}"/>
                                    <p class="parent-infor">${account.address}</p>

                                </div>
                                <div class="content-item address">
                                    <div class="item-title">
                                        <strong>Email</strong>

                                    </div>
                                    <c:set var="parent" value="${requestScope.account}"/>
                                    <p class="parent-infor">${account.email}</p>


                                </div>
                                <!--                                <div class="content-item address">
                                                                    <div class="item-title">
                                                                        <strong>Profile Picture</strong>
                                                                    </div>
                                                                    <p class="parent-infor">${account.img}</p>
                                                                    
                                                                </div>-->
                                <div class="mb-6" style="margin-top: 30px; margin-bottom: 30px; padding-left: 300px ">
                                    <a href="${pageContext.request.contextPath}/homepage/parent/parentupdateprofile.jsp">
                                        <input type="submit" class="button" value="Update profile"/>
                                    </a>
                                </div>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </body>
    <script>
        window.onload = function () {
            var patharr = location.pathname.split("/");
            var fileName = patharr[3];
            var options = document.getElementById('options');
            var links = options.getElementsByTagName("a");
            // alert(links.length);
            for (i = 1; i < links.length; i++) {
                if (links[i].getAttribute("href").indexOf(fileName) > -1) {
                    links[i].parentNode.className = 'current';
                }
            }
        };
    </script>

</html>

