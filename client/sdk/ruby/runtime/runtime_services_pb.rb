# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: runtime/runtime.proto for package 'runtime'

require 'grpc'
require 'runtime/runtime_pb'

module Runtime
  module Runtime
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'runtime.Runtime'

      rpc :Create, ::Runtime::CreateRequest, ::Runtime::CreateResponse
      rpc :Read, ::Runtime::ReadRequest, ::Runtime::ReadResponse
      rpc :Delete, ::Runtime::DeleteRequest, ::Runtime::DeleteResponse
      rpc :Update, ::Runtime::UpdateRequest, ::Runtime::UpdateResponse
      rpc :Logs, ::Runtime::LogsRequest, stream(::Runtime::LogRecord)
      rpc :CreateNamespace, ::Runtime::CreateNamespaceRequest, ::Runtime::CreateNamespaceResponse
      rpc :DeleteNamespace, ::Runtime::DeleteNamespaceRequest, ::Runtime::DeleteNamespaceResponse
    end

    Stub = Service.rpc_stub_class
  end
  module Source
    # Source service is used by the CLI to upload source to the service. The service will return
    # a unique ID representing the location of that source. This ID can then be used as a source
    # for the service when doing Runtime.Create. The server will handle cleanup of uploaded source.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'runtime.Source'

      rpc :Upload, stream(::Runtime::UploadRequest), ::Runtime::UploadResponse
    end

    Stub = Service.rpc_stub_class
  end
  module Build
    # Build service is used by containers to download prebuilt binaries. The client will pass the 
    # service (name and version are required attributed) and the server will then stream the latest
    # binary to the client.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'runtime.Build'

      rpc :Read, ::Runtime::Service, stream(::Runtime::BuildReadResponse)
    end

    Stub = Service.rpc_stub_class
  end
end
