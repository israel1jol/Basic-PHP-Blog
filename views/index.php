        <?php include_once 'inc/header.php' ?>
        <div class="jumbotron">
                <h1 class='display-4'>Welcome!</h1>
                <p class="lead">Hi I'm Israel, A fullstack Web Developer, a Pythonista, Mobile developer and Engineer. Currently a Proactive Blogger Too!!</p>
                <p><a href="about.php" class="btn btn-lg mx-auto btn-primary" role="button">Read More</a></p>
        </div>
        <?php include_once 'inc/navbar.php'; ?>
        <br><br>
        <div class="container-fluid">
            <div class="bg-dark p-3 cus-header"><h3 class="text-light text-center"><?php echo $post_header; ?></h3></div>
            <div class="">
                <?php foreach($posts as $post): ?>
                    <div class="m-4 p-3 bg-light">
                        <p class="lead"><?php  echo $post->title; ?></p>
                        <p>written on <span class="badge badge-dark"><?php echo $post->created_at; ?></span></p>
                        <a class="btn btn-link"  href="/web/blog/controllers/article.php?id=<?php echo $post->id; ?>">Read Article</a>
                    </div>
                <?php endforeach ?>
            </div>
        </div>
        <?php include_once 'inc/footer.php'; ?>
