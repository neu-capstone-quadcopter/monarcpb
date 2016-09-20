all: api.proto
	protoc --cpp_out=. --python_out=. api.proto

clean:
	rm -f api.pb.cc api.pb.h api_pb2.py
