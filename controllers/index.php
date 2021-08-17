<?php 
require_once '../config/init.php';

$tmp = new Template('../views/index.php');

$post_ins = new Post();
$category_ins = new Category();

$tmp->title = 'Izzy\'s Blog';
$tmp->posts = $post_ins->getAll();
$tmp->post_header = "Recent Blog Posts";

if(isset($_GET['category_id'])){
    $tmp->posts = $category_ins->filterByCategory($_GET['category_id']);
    $tmp->post_header = $category_ins->getCategoryName($_GET['category_id']);
}




echo $tmp;