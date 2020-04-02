package main

import "testing"

func TestGreeting(t *testing.T) {

	x := greeting("Code.education Rocks!")

	if x != "<b>Code.education Rocks!</b>" {
		t.Error("O parametro enviado é inválido")
	}
}
