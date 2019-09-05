class Foo {
	const BAR_TYPE = "bar";
	public function myMethod(){
		return self::BAR_TYPE;
	}
}

echo Foo::BAR_TYPE;

