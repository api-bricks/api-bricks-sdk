// Copyright (c) 2021. Marvin Friedrich Lars Hansen. All Rights Reserved. Contact: marvin.hansen@gmail.com

package v1

import "log"

func logError(err error) {
	if err != nil {
		log.Println(err)
	}
}

func checkError(err error) error {
	if err != nil {
		return nil
	}
	return err
}
