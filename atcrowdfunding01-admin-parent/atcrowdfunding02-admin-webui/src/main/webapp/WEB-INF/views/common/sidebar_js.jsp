<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<script type="text/javascript">
  $(function () {
    $(".list-group-item").click(function () {
      if ($(this).find("ul")) {
        $(this).toggleClass("tree-closed");
        if ($(this).hasClass("tree-closed")) {
          $("ul", this).hide("fast");
        } else {
          $("ul", this).show("fast");
        }
      }
    });

    $(".child-menu-item a").each(function(index, element) {
      var linkUrl =  $(element).attr("href");
      var idx = window.location.href.indexOf(linkUrl);

      if (idx !== -1) {
        $(element).parents("ul").show();
        $(element).css("color", "red")
      }
    })
  });
</script>
