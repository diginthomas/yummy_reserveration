<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Menu Item</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<div class="container mt-5">
    <h2>Edit Menu Item</h2>
    <form action="${pageContext.request.contextPath}/admin/update/menu" method="post">
        <input type="hidden" name="id" value="${menu.id}" />

        <div class="mb-3">
            <label class="form-label">Name</label>
            <input type="text" class="form-control" name="name" value="${menu.name}" required/>
        </div>

        <div class="mb-3">
            <label class="form-label">Description</label>
            <textarea class="form-control" name="description" rows="3" required>${menu.description}</textarea>
        </div>

        <div class="mb-3">
            <label class="form-label">Price ($)</label>
            <input type="number" class="form-control" name="price" step="0.01" min="0" value="${menu.price}" required/>
        </div>

        <div class="mb-3">
            <label class="form-label">Image URL</label>
            <input type="text" class="form-control" name="image" value="${menu.image}" required/>
        </div>

        <button type="submit" class="btn btn-primary">Update Item</button>
        <a href="${pageContext.request.contextPath}/admin/view/menu" class="btn btn-secondary">Cancel</a>
    </form>
</div>
</body>
</html>
