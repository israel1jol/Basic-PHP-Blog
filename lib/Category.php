<?php
class Category{
    private $db;

    function __construct(){
        $this->db = new Database();
    }

    public function filterByCategory($id){
        $query = "SELECT * FROM posts WHERE category_id=$id";
        $result = $this->db->fetch($query);
        return $result;
    }

    public function getCategoryName($id){
        $query = "SELECT `name` FROM categories WHERE id=$id";
        $result = $this->db->fetch($query);
        return $result[0]->name;
    }
}