package types

import "fmt"

type ServerInfo struct {
	Time            *string `json:"time,omitempty"`
	ExchangeId      *string `json:"exchange_id,omitempty"`
	InstanceGuid    *string `json:"instance_guid,omitempty"`
	ServerVersion   *string `json:"server_version,omitempty"`
	ServerName      *string `json:"server_name,omitempty"`
	DnsName         *string `json:"dns_name,omitempty"`
	IsRunning       *bool   `json:"is_running,omitempty"`
	ServerStartTime *string `json:"time_server_start,omitempty"`
}

func (s ServerInfo) String() string {
	return fmt.Sprintf("<ServerInfo> \n Time: %v, \n ExchangeId: %v, \n InstanceGuid: %v, \n ServerVersion: %v, \n ServerName: %v,  \n DnsName:  %v, \n IsRunning  %v, \n ServerStartTime: %v",
		*s.Time,
		*s.ExchangeId,
		"API-KEY",
		*s.ServerVersion,
		*s.ServerName,
		*s.DnsName,
		*s.IsRunning,
		*s.ServerStartTime,
	)
}
