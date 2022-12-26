import toast from "toastr";

var Comments = {
    init : function () {
        this.saveComments();
        this.showFormReply();
        this.replyComment();
        this.paginationCommentAjax();
    },

    saveComments()
    {
        $("body").on("click",".js-save-comment", function(event){
            event.preventDefault();
            let $this = $(this);
            let $domForm = $this.closest('form');
            if (typeof ROUTE_COMMENT !== "undefined")
            {
                let comment = $this.parents('form').find("textarea").val();
                if (!comment.length) {
                    toast.warning('Nội dung comments không được để trống!');
                    return false;
                }
                $.ajax({
                    url: ROUTE_COMMENT,
                    method: "POST",
                    data: $domForm.serialize()
                }).done(function (results) {
                    $domForm[0].reset();
                    if (results.code == 501) {
                        window.location.reload();
                    }
                    if (results.code == 200) {
                        $("#list-comment").prepend(results.html)
                    }
                }).fail(function (results) {

                });
            }
        });
    },

    replyComment()
    {
        $("body").on("click",".js-reply-comment", function(event){
            event.preventDefault();
            let $this = $(this);
            let $domForm = $this.closest('form');
            let $item = $this.closest('.item');
            let $listReply =  $item.find(".comments-reply");
            if (typeof ROUTE_COMMENT !== "undefined")
            {
                $.ajax({
                    url: ROUTE_COMMENT,
                    method: "POST",
                    data: $domForm.serialize()
                }).done(function (results) {
                    if (results.code == 200) {
                        console.log("Reply")
                        $domForm.remove();

                        if ($listReply.length) {
                            $listReply.append(results.html)
                        }else {
                            let newListComment = `<div class="comments-reply">` + results.html + `</div>`
                            $item.append(newListComment)
                        }
                        // $("#list-comment").prepend(results.html)
                    }
                }).fail(function (results) {

                });
            }
        })
    },

    showFormReply()
    {
        let _this = this;
        $("body").on("click",".js-show-form-reply", function (event) {
            event.preventDefault();
            let $this = $(this);
            $(".lists .form-comment").remove();
            let commentID = $this.attr('data-id');
            let productID = $this.attr('data-product');
            let name = $this.attr('data-name');
            let html = _this.renderFormReply(productID, commentID, name);
            let $item = $this.parentsUntil('.item');

            if ($this.parents('.comments-reply').length)
            {
                $item.parents('.comments-reply').after(html)
            }else {
                $item.append(html);
            }

        })
    },

    paginationCommentAjax()
    {
        let _this = this;
        $("body").on("click",".pagination a", function(e){
            e.preventDefault();
            let URL = $(this).attr('href');
            // $("body .js-number-rating").removeClass('active');
            $(this).addClass('active');
            _this.getListComments(URL);
        });
    },

    getListComments(URL)
    {
        $.ajax({
            type: "GET",
            url: URL,
            success: function (results) {
                $("#list-comment").html(results.html)
            }
        });
    },

    renderFormReply(productID, commentID, name)
    {
        return `<div class="form-comment">
                    <form action="" method="POST">
                    <input type="hidden" name="productId" value="${productID}">
                    <input type="hidden" name="commentId" value="${commentID}">
                        <div class="form-group">
                            <textarea name="comment" class="form-control" id="" cols="30" rows="5">@${name}: </textarea>
                        </div>
                        <div class="footer">
                            <p>
                                <a href=""><i class="la la-camera"></i> Gửi ảnh</a>
                                <a href="">Quy định đăng bình luận</a>
                            </p>
                            <button class="js-reply-comment" data-reply="">Gửi bình luận</button>
                        </div>
                    </form>
                </div>`
    }
}

export default Comments;
