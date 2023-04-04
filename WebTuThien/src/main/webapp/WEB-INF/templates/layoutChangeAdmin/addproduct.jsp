<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="/Admin/Table/SaveSomething" modelAttribute="pd" method="post" enctype="multipart/form-data" >
    <div class="form-group">
        <label>Id</label>
        <form:input type="text" class="form-control" path="id"
                    disabled />
    </div>
    <div class="form-group">
        <label>name:</label>
        <form:input type="password" class="form-control" path="name"
                    placeholder="Enter name" />

    </div>
    <label>Photo</label>
    <input type="file" class="form-control" name="photo"
           accept="image/png,image/jpeg" />


    <div class="form-group">
        <label>about</label>
        <form:input type="text" class="form-control" path="about"
                    placeholder="Enter about" />
    </div>


    <div class="form-group">
        <label>createDate</label>
        <form:input type="text" class="form-control" path="createDate"
                    placeholder="Date" />
    </div>


    <div class="form-group">
        <label>Photo</label>
        <form:input type="text" class="form-control"
                    accept="image/png,image/jpeg" path="available"/>
    </div>
    <div class="form-group">
        <label>Photo</label>
        <form:input type="text" class="form-control"
                    accept="image/png,image/jpeg" path="category.id"/>
    </div>

    <form:button type="submit" class="btn btn-primary">Submit</form:button>
    <form:button type="reset" class="btn btn-primary">Cancel</form:button>
    <a href="/Admin/Table/SaveSomething" class="btn btn-primary">Display Account</a>
</form:form>