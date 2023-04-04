<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">PRODUCTS LIST</h4>

                </div>
                <div class="card-body">

                    <div class="table-responsive">
                        <table class="table">

                            <thead class=" text-primary">
                            <th>
                                ID
                            </th>
                            <th>
                                Name
                            </th>
                            <th>
                                Image
                            </th>
                            <th>
                                CreateDate
                            </th>


                            <th>
                                CategoryId
                            </th>

                            </thead>
                            <c:forEach var="item"  items="${page.content}" >
                                <tbody>
                                <tr>
                                    <td>
                                            ${item.id}
                                    </td>
                                    <td>
                                            ${item.name}
                                    </td>
                                    <td>
                                        <img  style="width: 70px;height: 40px" src="/assets/images/${item.image}"/>
                                    </td>
                                    <td>
                                            ${item.createDate}
                                    </td>

                                    <td>
                                            ${item.category.id}
                                    </td>



                                </tr>
                                </tbody>
                            </c:forEach>

                        </table>
                        <a href="/product/search-and-page?p=0">First</a>
                        <a href="/product/search-and-page?p=${page.number-1}">Previous</a>
                        <a href="/product/search-and-page?p=${page.number+1}">1</a>
                        <a href="/product/search-and-page?p=${page.totalPages-1}">Last</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>