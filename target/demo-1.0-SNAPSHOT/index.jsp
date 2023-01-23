<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./style.css">
</head>
<body>
<div class="login">

    <form class="" action="Servlet_Login" method="post">
        <div class="form-group">
            <label class="form-label" for="email">Email Address</label>
                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
        </div>
        <br>


        <div class="form-group">
            <label class="form-label" for="pass">Password</label>
            <input type="password" class="form-control" id="pass" placeholder="" name="pass">
        </div>
        <br>

        <button type="submit" class="btn btn-primary w-100">Login</button>

    </form>
</div>
</body>
</html>