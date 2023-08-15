<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="loader">
    <div class="body">
        <div class="sub"></div>
        <div class="front wheel"></div>
        <div class="back wheel"></div>
    </div>
    <div class="cover">
        <div class="path"></div>
    </div>
    <div class="text"><c:out value="${param.title}" default="Please Wait..." /></div>
</div>
