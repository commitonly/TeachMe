<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/manager/lecturePresent.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-9">

                <!-- User profile -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1 class="panel-title">강좌 정보</h1>
                    </div>
                    <div class="panel-body">
                        <div class="profile__avatar">
                            <img src="https://bootdey.com/img/Content/avatar/avatar5.png" alt="...">
                        </div>
                        <div class="profile__header">
                            <h4>Richard Roe <small>Administrator</small></h4>
                            <p class="text-muted">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non nostrum odio cum repellat veniam eligendi rem cumque magnam autem delectus qui.
                            </p>
                            <p>
                                <a href="#">bootdey.com</a>
                            </p>
                        </div>
                    </div>
                </div>

                <!-- User info -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">User info</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table profile__table">
                            <tbody>
                            <tr>
                                <th><strong>Location</strong></th>
                                <td>United States</td>
                            </tr>
                            <tr>
                                <th><strong>Company name</strong></th>
                                <td>Simpleqode.com</td>
                            </tr>
                            <tr>
                                <th><strong>Position</strong></th>
                                <td>Front-end developer</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Community -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">Community</h4>
                    </div>
                    <div class="panel-body">
                        <table class="table profile__table">
                            <tbody>
                            <tr>
                                <th><strong>Comments</strong></th>
                                <td>58584</td>
                            </tr>
                            <tr>
                                <th><strong>Member since</strong></th>
                                <td>Jan 01, 2016</td>
                            </tr>
                            <tr>
                                <th><strong>Last login</strong></th>
                                <td>1 day ago</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Latest posts -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">Latest posts</h4>
                    </div>
                    <div class="panel-body">
                        <div class="profile__comments">
                            <div class="profile-comments__item">
                                <div class="profile-comments__controls">
                                    <a href="#"><i class="fa fa-share-square-o"></i></a>
                                    <a href="#"><i class="fa fa-edit"></i></a>
                                    <a href="#"><i class="fa fa-trash-o"></i></a>
                                </div>
                                <div class="profile-comments__avatar">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="...">
                                </div>
                                <div class="profile-comments__body">
                                    <h5 class="profile-comments__sender">
                                        Richard Roe <small>2 hours ago</small>
                                    </h5>
                                    <div class="profile-comments__content">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum, corporis. Voluptatibus odio perspiciatis non quisquam provident, quasi eaque officia.
                                    </div>
                                </div>
                            </div>
                            <div class="profile-comments__item">
                                <div class="profile-comments__controls">
                                    <a href="#"><i class="fa fa-share-square-o"></i></a>
                                    <a href="#"><i class="fa fa-edit"></i></a>
                                    <a href="#"><i class="fa fa-trash-o"></i></a>
                                </div>
                                <div class="profile-comments__avatar">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="...">
                                </div>
                                <div class="profile-comments__body">
                                    <h5 class="profile-comments__sender">
                                        Richard Roe <small>5 hours ago</small>
                                    </h5>
                                    <div class="profile-comments__content">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero itaque dolor laboriosam dolores magnam mollitia, voluptatibus inventore accusamus illo.
                                    </div>
                                </div>
                            </div>
                            <div class="profile-comments__item">
                                <div class="profile-comments__controls">
                                    <a href="#"><i class="fa fa-share-square-o"></i></a>
                                    <a href="#"><i class="fa fa-edit"></i></a>
                                    <a href="#"><i class="fa fa-trash-o"></i></a>
                                </div>
                                <div class="profile-comments__avatar">
                                    <img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="...">
                                </div>
                                <div class="profile-comments__body">
                                    <h5 class="profile-comments__sender">
                                        Richard Roe <small>1 day ago</small>
                                    </h5>
                                    <div class="profile-comments__content">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore, esse, magni aliquam quisquam modi delectus veritatis est ut culpa minus repellendus.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
    </div>
    </div>
</body>
</html>
