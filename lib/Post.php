<?php 
class Post{
    private $db;

    public function __construct(){
        $this->db = new Database();
    }

    public function getAll(){
        $query = "SELECT * FROM posts";
        $result = $this->db->fetch($query);
        return $result;
    }

    public function getByCategory($id){
        $query = "SELECT * FROM posts WHERE category_id=$id";
        $result = $this->db->fetch($query);
        return $result;
    }
}