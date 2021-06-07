// Original source: github.com/asim/go-micro/v3/plugins/broker/rabbitmq/auth.go

package rabbitmq

type ExternalAuthentication struct {
}

func (auth *ExternalAuthentication) Mechanism() string {
	return "EXTERNAL"
}

func (auth *ExternalAuthentication) Response() string {
	return ""
}
