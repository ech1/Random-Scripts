<?php
	class UserCollection implements ArrayAccess {
		protected $_conn;
		protected $_requiredParams = ['username', 'pass', 'email'];

		public function __construct(){
			$config = new Configuration();
			$connectionParams = [
				// connection to the db
			];

			$this->_conn = DriverManager::getConnection($connectionParams, $config);
		}
		
		protected function _getByUsername($username) {
			$ret = $this->_conn->executeQuery('SELECT * FROM `User` WHERE `username` IN (?)',
				[$username]
			)->fetch();

			return $ret;
		}

		public function offsetExists($offset){
			return (bool) $this->_getByUsername($offset);
		}
	
		public function offsetGet($offset) {
			return $this->_getByUsername($offset);
		}

		public function offsetSet($offset, $value) {
			if(!is_array($value)){
				throw new \Exception('value must be an Array');
			}
			if(!$this->offsetGet($offset)){
				throw new \Exception('user not found');
			}
			$this->_conn->delete('User', ['username' => $offset]);
		}
		//END of methods required by ArrayAccess interface
	}
?>
