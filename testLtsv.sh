#!/bin/sh

# include test target
. ./ltsv.sh

testReturnFuncSuccess(){
	VALUE=$(ltsv_get "hoge" "hoge:hage	fuga:fugo")
	assertTrue "成功を返さない" $?
}

testGetHogeValue(){
	VALUE=$(ltsv_get "hoge" "hoge:hage	fuga:fugo")
	assertEquals "hage" "${VALUE}"
}

testGetFugaValue(){
	ltsv_get "fuga" "hoge:hage	fuga:fugo"
	VALUE=$(ltsv_get "fuga" "hoge:hage	fuga:fugo")
	assertEquals "fugo" "${VALUE}"
}


. /usr/bin/shunit2
