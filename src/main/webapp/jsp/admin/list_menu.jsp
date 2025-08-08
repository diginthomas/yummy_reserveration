<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Menu Items - Admin Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      font-family: 'Inter', sans-serif;
      background-color: #f8f9fa;
    }

    .table img {
      height: 60px;
      border-radius: 6px;
    }

    .btn-sm {
      border-radius: 20px;
      padding: 4px 15px;
    }

    .top-bar {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
  </style>

  <header id="header" class="header d-flex align-items-center sticky-top bg-light shadow-sm">
    <div class="container position-relative d-flex align-items-center justify-content-between">
      <a href="${pageContext.request.contextPath}/index.html" class="logo d-flex align-items-center me-auto me-xl-0 text-decoration-none">
        <h1 class="sitename m-0 fs-3 fw-bold text-primary">Yummy<span class="text-danger">.</span></h1>
      </a><nav id="navmenu" class="navmenu">
      <ul class="nav">
        <li class="nav-item"><a href="${pageContext.request.contextPath}/admin" class="nav-link">Admin Home</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/admin/contact" class="nav-link">Contacts</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/admin/view/menu" class="nav-link">menu</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/admin/users" class="nav-link">Users</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}/logout" class="nav-link">Logout</a></li>
      </ul>
    </nav>
      <h4 class="m-0 ms-auto me-3 text-secondary">Admin Dashboard</h4>
    </div>
  </header>
</head>
<body>

<div class="container mt-5">
  <div class="top-bar mb-3">
    <h2>All Menu Items</h2>
    <a href="${pageContext.request.contextPath}/admin/add/menu" class="btn btn-success">Add New Item</a>
  </div>

  <c:if test="${empty menus}">
    <div class="alert alert-info text-center">No menu items found.</div>
  </c:if>

  <c:if test="${not empty menus}">
    <div class="table-responsive">
      <table class="table table-bordered align-middle">
        <thead class="table-dark">
        <tr>
          <th>ID</th>
          <th>Image</th>
          <th>Name</th>
          <th>Description</th>
          <th>Price ($)</th>
          <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="menu" items="${menus}">
          <tr>
            <td>${menu.id}</td>
            <td><img src="${menu.image}" alt="Menu Image" /></td>
            <td>${menu.name}</td>
            <td>${menu.description}</td>
            <td>$${menu.price}</td>

            <td>
              <a href="${pageContext.request.contextPath}/admin/update/menu?id=${menu.id}" class="btn btn-warning btn-sm">Edit</a>

              <form method="post" action="${pageContext.request.contextPath}/admin/delete/menu" style="display:inline;" onsubmit="return confirm('Delete this item?');">
                <input type="hidden" name="id" value="${menu.id}" />
                <form method="post" action="${pageContext.request.contextPath}/admin/delete/menu" style="display:inline;" onsubmit="return confirm('Delete this item?');">
                  <input type="hidden" name="id" value="${menu.id}" />

                </form>
                <form method="post" action="${pageContext.request.contextPath}/admin/delete/menu" style="display:inline;" onsubmit="return confirm('Delete this item?');">
                  <input type="hidden" name="id" value="${menu.id}" />
                  <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                </form>

              </form>
            </td>


          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </c:if>
</div>

</body>
</html>
