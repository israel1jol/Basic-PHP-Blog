<?php 
require_once '../config/init.php';

$tmp = new Template('../views/article.php');

$post_ins = new Post();
$comment_ins = new Comment();

$tmp->title = 'Izzy\'s Blog';


if(isset($_GET['id'])){
    $tmp->post = $post_ins->getByCategory($_GET['id']);
    $tmp->comments = $comment_ins->getComments($_GET['id']);
}
elseif(isset($_POST['user']) && isset($_POST['msg']) && isset($_POST['post_id'])){
    $comment_ins->makeComment($_POST['user'], $_POST['msg'], $_POST['post_id']);
    header("Location: article.php?id=" . $_POST['post_id']);
}
else{
    header("Location: index.php");
}

echo $tmp;


