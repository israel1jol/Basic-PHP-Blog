<?php 
class Comment{
    private $db;

    public function __construct(){
        $this->db = new Database();
    }

    public function getComments($id){
        $query = "SELECT * FROM comments WHERE post_id=$id";
        $result = $this->db->fetch($query);
        return $result;
    }

    public function makeComment($username, $msg, $post_id){
        $username = $username == "" ? "Guest" : $username;
        $query = "INSERT INTO comments(created_by, msg, post_id) VALUES ('$username', '$msg', $post_id)";
        $this->db->insert($query);
    }


}