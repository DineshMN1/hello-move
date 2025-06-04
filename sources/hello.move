module addr::Hello {
    use std::string::{String, utf8};

    fun hello() :String {
        let hello_move : String = utf8(b"Hello Move!");
        hello_move
    }

    #[testonly]
    use std::debug;

    #[test]
    fun test_hello(){
        let msg = hello();
        debug::print(&msg);
    }        
}