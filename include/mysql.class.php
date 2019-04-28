<?php 
// 数据库操作类
// 把操作数据库的所有动作都封装在一起

class mysql{
	// 什么情况下该定义属性：
	// 如果这个变量需要在另外一个方法里面应用的话就要把变量变成属性
	private $conn;  //数据库连接状态
	public $sql;  //SQL语句
	public $table;  //表名
	public $data;  //数据
	public $where;  //条件


	public function __construct($hostname,$username,$password,$dbname,$charset='utf8'){  //构造函数 new  就直接执行
		// 链接数据库
		$this->conn = mysql_connect($hostname,$username,$password)or die('link error');
		// 设置数据库的编码
		mysql_set_charset($charset);
		// 选择数据库
		mysql_select_db($dbname)or die('select error');
	}

// 操作数据库 
	//查
	// 查询多条
	// 因为查询的SQL语句无规律，所以把它当参数
	public function getAll(){
		
		$result = mysql_query($this->sql,$this->conn);
		$list = array();
		if($result && mysql_num_rows($result)>0){
			while($row = mysql_fetch_assoc($result)){
				$list[] = $row;
			}
			return $list;
		}else{
			return $list;
		}
	}
	// 查询单条
	public function getOne(){
		$result = mysql_query($this->sql,$this->conn);
		if($result && mysql_num_rows($result)>0){
			return mysql_fetch_assoc($result);
		}else{
			return array();
		}
	}
	// 	增
	public function insert(){
		$sql = "INSERT INTO {$this->table} "; 
		$sql .= "(`".implode("`,`", array_keys($this->data))."`)";
		$sql .= " VALUES "; 
		$sql .= "('".implode("','", $this->data)."')";
		// echo $sql;exit;
		$bool = mysql_query($sql);
		if($bool && mysql_affected_rows()){
			return mysql_insert_id();
		}else{
			return false;
		}
	}
	// 改
	public function update(){
		$sql = "UPDATE {$this->table} SET ";
		foreach($this->data as $k=>$v){
			$sql .= "`".$k."`='".$v."',";
		}
		$sql = rtrim($sql,',');

		$sql .= " WHERE {$this->where}";
		$bool = mysql_query($sql);
		if($bool && mysql_affected_rows()){
			return true;
		}else{
			return false;
		}
	}
	// 删 
	public function delete(){
		$sql = "DELETE FROM {$this->table} WHERE $this->where";
		$bool = mysql_query($sql);
		if($bool && mysql_affected_rows()){
			return true;
		}else{
			return false;
		}
	}
// 关闭数据库
	public function __destruct(){  //析构函数 脚本结束才执行
		mysql_close($this->conn);
	}
}


// $mysql = new mysql('localhost','root','root','b1901_wengdo');

// var_dump($mysql);

// 查询
// $mysql->sql = "SELECT * FROM wd_nav";
// $nav = $mysql->getOne();



// 添加的
// $mysql->data = array('n_name'=>'name','n_link'=>'link','n_isshow'=>1);
// $mysql->table = "wd_nav";
// $bool = $mysql->insert();

// var_dump($bool);



// 修改的
// $mysql->data = array('n_name'=>'name111','n_link'=>'link11111','n_isshow'=>0);
// $mysql->table = "wd_nav";
// $mysql->where = "n_id=8";
// $bool = $mysql->update();

// var_dump($bool);



// // 删除的；
// $mysql->table = 'wd_nav';
// $mysql->where = "n_id=8";
// $bool = $mysql->delete();
// var_dump($bool);






 ?>