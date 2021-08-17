<?php include_once 'inc/header.php'; ?>
<div class="container-fluid">
        <div class="text-center bg-light m-3 p-6"><?php echo $post[0]->title; ?></div>
        <div><p class="post-body"><?php echo $post[0]->body; ?></p></div>

        <div class=" m-3 p-6"><h3>Comments</h3></div>
        <form action="article.php" method="post" class="m-3 p-3 comment-form">
            <div class="form-group">
                <label for="">User</label>
                <input type="text" name="user" placeholder="Select A Username" class="form-control">
            </div>
            <div class="form-group">
                <label for="">comment</label>
                <textarea name="msg" class="form-control"></textarea>
            </div>
            <input type="hidden" name="post_id" value="<?php echo $post[0]->id; ?>">
            <input type="submit" value="Enter" class="btn btn-primary">
        </form>
        <ul class="list-group"></ul>
        <?php foreach ($comments as $comment): ?>
            <li class="list-group-item post-box">
                <p class="lead"><?php echo $comment->created_by; ?></p>
                <p><?php echo $comment->msg; ?></p><span class="badge">on <?php echo $comment->created_at; ?></span>
            </li>
            <br><br>
        <?php endforeach?>        
</div>
<br><br>
<?php include_once 'inc/footer.php'; ?>