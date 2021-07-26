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
