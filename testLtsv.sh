#!/bin/sh


testReturnFuncSuccess(){
	VALUE=$(lsts_get "hoge" "hoge:hage	fuga:fugo")
	assertTrue "$? = 0"
}

. /usr/bin/shunit2
