package main

import (
	"fmt"
	"io/ioutil"
	"log"

	"github.com/pkg/errors"
)

// func DetermineImageType(buf []byte) ImageType

func CheckFileType(fileName string) (string, error) {
	var dat []byte
	var err error
	dat, err = ioutil.ReadFile(fileName)
	if err != nil {
		return "", errors.Wrapf(err, "Error while reading file %s", fileName)
	}

	bla := govips.DetermineImageType(dat)

	return "true", nil
}

func checkErr(err error) {
	if err != nil {
		log.Fatalf(err.Error())
	}
}

func main() {
	fmt.Printf("\n")
}
