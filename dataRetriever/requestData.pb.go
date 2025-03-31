// Code generated by protoc-gen-gogo. DO NOT EDIT.
// source: requestData.proto

package dataRetriever

import (
	bytes "bytes"
	fmt "fmt"
	_ "github.com/gogo/protobuf/gogoproto"
	proto "github.com/gogo/protobuf/proto"
	io "io"
	math "math"
	math_bits "math/bits"
	reflect "reflect"
	strconv "strconv"
	strings "strings"
)

// Reference imports to suppress errors if they are not otherwise used.
var _ = proto.Marshal
var _ = fmt.Errorf
var _ = math.Inf

// This is a compile-time assertion to ensure that this generated file
// is compatible with the proto package it is being compiled against.
// A compilation error at this line likely means your copy of the
// proto package needs to be updated.
const _ = proto.GoGoProtoPackageIsVersion3 // please upgrade the proto package

// RequestDataType represents the data type for the requested data
type RequestDataType int32

const (
	// Invalid
	InvalidType RequestDataType = 0
	// HashType indicates that the request data object is of type hash
	HashType RequestDataType = 1
	// HashArrayType that the request data object contains a serialised array of hashes
	HashArrayType RequestDataType = 2
	// NonceType indicates that the request data object is of type nonce (uint64)
	NonceType RequestDataType = 3
	// EpochType indicates that the request data object is of type epoch
	EpochType RequestDataType = 4
	// ChunkType indicates that the request data object is of type chunk
	ChunkType RequestDataType = 5
)

var RequestDataType_name = map[int32]string{
	0: "InvalidType",
	1: "HashType",
	2: "HashArrayType",
	3: "NonceType",
	4: "EpochType",
	5: "ChunkType",
}

var RequestDataType_value = map[string]int32{
	"InvalidType":   0,
	"HashType":      1,
	"HashArrayType": 2,
	"NonceType":     3,
	"EpochType":     4,
	"ChunkType":     5,
}

func (RequestDataType) EnumDescriptor() ([]byte, []int) {
	return fileDescriptor_d2e280b7501d5666, []int{0}
}

// RequestData holds the requested data
// This struct will be serialized and sent to the other peers
type RequestData struct {
	Type       RequestDataType `protobuf:"varint,1,opt,name=Type,proto3,enum=proto.RequestDataType" json:"type"`
	Value      []byte          `protobuf:"bytes,2,opt,name=Value,proto3" json:"value"`
	Epoch      uint32          `protobuf:"varint,3,opt,name=Epoch,proto3" json:"epoch"`
	ChunkIndex uint32          `protobuf:"varint,4,opt,name=ChunkIndex,proto3" json:"chunkIndex"`
}

func (m *RequestData) Reset()      { *m = RequestData{} }
func (*RequestData) ProtoMessage() {}
func (*RequestData) Descriptor() ([]byte, []int) {
	return fileDescriptor_d2e280b7501d5666, []int{0}
}
func (m *RequestData) XXX_Unmarshal(b []byte) error {
	return m.Unmarshal(b)
}
func (m *RequestData) XXX_Marshal(b []byte, deterministic bool) ([]byte, error) {
	b = b[:cap(b)]
	n, err := m.MarshalToSizedBuffer(b)
	if err != nil {
		return nil, err
	}
	return b[:n], nil
}
func (m *RequestData) XXX_Merge(src proto.Message) {
	xxx_messageInfo_RequestData.Merge(m, src)
}
func (m *RequestData) XXX_Size() int {
	return m.Size()
}
func (m *RequestData) XXX_DiscardUnknown() {
	xxx_messageInfo_RequestData.DiscardUnknown(m)
}

var xxx_messageInfo_RequestData proto.InternalMessageInfo

func (m *RequestData) GetType() RequestDataType {
	if m != nil {
		return m.Type
	}
	return InvalidType
}

func (m *RequestData) GetValue() []byte {
	if m != nil {
		return m.Value
	}
	return nil
}

func (m *RequestData) GetEpoch() uint32 {
	if m != nil {
		return m.Epoch
	}
	return 0
}

func (m *RequestData) GetChunkIndex() uint32 {
	if m != nil {
		return m.ChunkIndex
	}
	return 0
}

func init() {
	proto.RegisterEnum("proto.RequestDataType", RequestDataType_name, RequestDataType_value)
	proto.RegisterType((*RequestData)(nil), "proto.RequestData")
}

func init() { proto.RegisterFile("requestData.proto", fileDescriptor_d2e280b7501d5666) }

var fileDescriptor_d2e280b7501d5666 = []byte{
	// 339 bytes of a gzipped FileDescriptorProto
	0x1f, 0x8b, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xff, 0x5c, 0x90, 0xb1, 0x4e, 0xc2, 0x40,
	0x18, 0x80, 0x7b, 0xd0, 0x1a, 0x38, 0x28, 0xc8, 0x0d, 0xa6, 0x71, 0xf8, 0x4b, 0x9c, 0x88, 0x89,
	0x25, 0x51, 0x5f, 0x40, 0xd4, 0x28, 0x8b, 0x43, 0x63, 0x1c, 0xdc, 0x8e, 0x72, 0x52, 0x22, 0xb6,
	0xb5, 0x5c, 0x89, 0x6c, 0x3e, 0x82, 0x8f, 0xe1, 0x0b, 0xf8, 0x0e, 0x8e, 0x8c, 0x4c, 0x44, 0x8e,
	0xc5, 0x30, 0xf1, 0x08, 0xe6, 0xfe, 0x26, 0x4a, 0x9c, 0xda, 0xef, 0xbb, 0xef, 0xee, 0xfe, 0x1c,
	0x6d, 0xa4, 0xe2, 0x39, 0x13, 0x63, 0x79, 0xc1, 0x25, 0xf7, 0x92, 0x34, 0x96, 0x31, 0xb3, 0xf0,
	0xb3, 0x7f, 0x34, 0x18, 0xca, 0x30, 0xeb, 0x79, 0x41, 0xfc, 0xd4, 0x1e, 0xc4, 0x83, 0xb8, 0x8d,
	0xba, 0x97, 0x3d, 0x20, 0x21, 0xe0, 0x5f, 0xbe, 0xeb, 0xe0, 0x83, 0xd0, 0x8a, 0xff, 0x77, 0x16,
	0x3b, 0xa5, 0xe6, 0xed, 0x34, 0x11, 0x0e, 0x69, 0x92, 0x56, 0xed, 0x78, 0x2f, 0xaf, 0xbc, 0xad,
	0x42, 0xaf, 0x76, 0x4a, 0xeb, 0x85, 0x6b, 0xca, 0x69, 0x22, 0x7c, 0xac, 0x99, 0x4b, 0xad, 0x3b,
	0x3e, 0xca, 0x84, 0x53, 0x68, 0x92, 0x56, 0xb5, 0x53, 0x5e, 0x2f, 0x5c, 0x6b, 0xa2, 0x85, 0x9f,
	0x7b, 0x1d, 0x5c, 0x26, 0x71, 0x10, 0x3a, 0xc5, 0x26, 0x69, 0xd9, 0x79, 0x20, 0xb4, 0xf0, 0x73,
	0xcf, 0x3c, 0x4a, 0xcf, 0xc3, 0x2c, 0x7a, 0xec, 0x46, 0x7d, 0xf1, 0xe2, 0x98, 0x58, 0xd5, 0xd6,
	0x0b, 0x97, 0x06, 0xbf, 0xd6, 0xdf, 0x2a, 0x0e, 0x13, 0x5a, 0xff, 0x37, 0x14, 0xab, 0xd3, 0x4a,
	0x37, 0x9a, 0xf0, 0xd1, 0xb0, 0xaf, 0x71, 0xd7, 0x60, 0x55, 0x5a, 0xba, 0xe6, 0xe3, 0x10, 0x89,
	0xb0, 0x06, 0xb5, 0x35, 0x9d, 0xa5, 0x29, 0x9f, 0xa2, 0x2a, 0x30, 0x9b, 0x96, 0x6f, 0xe2, 0x28,
	0x10, 0x88, 0x45, 0x8d, 0x38, 0x0c, 0xa2, 0xa9, 0x11, 0x2f, 0x44, 0xb4, 0x3a, 0x57, 0xb3, 0x25,
	0x18, 0xf3, 0x25, 0x18, 0x9b, 0x25, 0x90, 0x57, 0x05, 0xe4, 0x5d, 0x01, 0xf9, 0x54, 0x40, 0x66,
	0x0a, 0xc8, 0x5c, 0x01, 0xf9, 0x52, 0x40, 0xbe, 0x15, 0x18, 0x1b, 0x05, 0xe4, 0x6d, 0x05, 0xc6,
	0x6c, 0x05, 0xc6, 0x7c, 0x05, 0xc6, 0xbd, 0xdd, 0xe7, 0x92, 0xfb, 0x42, 0xa6, 0x43, 0x31, 0x11,
	0x69, 0x6f, 0x07, 0xdf, 0xf4, 0xe4, 0x27, 0x00, 0x00, 0xff, 0xff, 0xd7, 0xda, 0x08, 0x2e, 0xc4,
	0x01, 0x00, 0x00,
}

func (x RequestDataType) String() string {
	s, ok := RequestDataType_name[int32(x)]
	if ok {
		return s
	}
	return strconv.Itoa(int(x))
}
func (this *RequestData) Equal(that interface{}) bool {
	if that == nil {
		return this == nil
	}

	that1, ok := that.(*RequestData)
	if !ok {
		that2, ok := that.(RequestData)
		if ok {
			that1 = &that2
		} else {
			return false
		}
	}
	if that1 == nil {
		return this == nil
	} else if this == nil {
		return false
	}
	if this.Type != that1.Type {
		return false
	}
	if !bytes.Equal(this.Value, that1.Value) {
		return false
	}
	if this.Epoch != that1.Epoch {
		return false
	}
	if this.ChunkIndex != that1.ChunkIndex {
		return false
	}
	return true
}
func (this *RequestData) GoString() string {
	if this == nil {
		return "nil"
	}
	s := make([]string, 0, 8)
	s = append(s, "&dataRetriever.RequestData{")
	s = append(s, "Type: "+fmt.Sprintf("%#v", this.Type)+",\n")
	s = append(s, "Value: "+fmt.Sprintf("%#v", this.Value)+",\n")
	s = append(s, "Epoch: "+fmt.Sprintf("%#v", this.Epoch)+",\n")
	s = append(s, "ChunkIndex: "+fmt.Sprintf("%#v", this.ChunkIndex)+",\n")
	s = append(s, "}")
	return strings.Join(s, "")
}
func valueToGoStringRequestData(v interface{}, typ string) string {
	rv := reflect.ValueOf(v)
	if rv.IsNil() {
		return "nil"
	}
	pv := reflect.Indirect(rv).Interface()
	return fmt.Sprintf("func(v %v) *%v { return &v } ( %#v )", typ, typ, pv)
}
func (m *RequestData) Marshal() (dAtA []byte, err error) {
	size := m.Size()
	dAtA = make([]byte, size)
	n, err := m.MarshalToSizedBuffer(dAtA[:size])
	if err != nil {
		return nil, err
	}
	return dAtA[:n], nil
}

func (m *RequestData) MarshalTo(dAtA []byte) (int, error) {
	size := m.Size()
	return m.MarshalToSizedBuffer(dAtA[:size])
}

func (m *RequestData) MarshalToSizedBuffer(dAtA []byte) (int, error) {
	i := len(dAtA)
	_ = i
	var l int
	_ = l
	if m.ChunkIndex != 0 {
		i = encodeVarintRequestData(dAtA, i, uint64(m.ChunkIndex))
		i--
		dAtA[i] = 0x20
	}
	if m.Epoch != 0 {
		i = encodeVarintRequestData(dAtA, i, uint64(m.Epoch))
		i--
		dAtA[i] = 0x18
	}
	if len(m.Value) > 0 {
		i -= len(m.Value)
		copy(dAtA[i:], m.Value)
		i = encodeVarintRequestData(dAtA, i, uint64(len(m.Value)))
		i--
		dAtA[i] = 0x12
	}
	if m.Type != 0 {
		i = encodeVarintRequestData(dAtA, i, uint64(m.Type))
		i--
		dAtA[i] = 0x8
	}
	return len(dAtA) - i, nil
}

func encodeVarintRequestData(dAtA []byte, offset int, v uint64) int {
	offset -= sovRequestData(v)
	base := offset
	for v >= 1<<7 {
		dAtA[offset] = uint8(v&0x7f | 0x80)
		v >>= 7
		offset++
	}
	dAtA[offset] = uint8(v)
	return base
}
func (m *RequestData) Size() (n int) {
	if m == nil {
		return 0
	}
	var l int
	_ = l
	if m.Type != 0 {
		n += 1 + sovRequestData(uint64(m.Type))
	}
	l = len(m.Value)
	if l > 0 {
		n += 1 + l + sovRequestData(uint64(l))
	}
	if m.Epoch != 0 {
		n += 1 + sovRequestData(uint64(m.Epoch))
	}
	if m.ChunkIndex != 0 {
		n += 1 + sovRequestData(uint64(m.ChunkIndex))
	}
	return n
}

func sovRequestData(x uint64) (n int) {
	return (math_bits.Len64(x|1) + 6) / 7
}
func sozRequestData(x uint64) (n int) {
	return sovRequestData(uint64((x << 1) ^ uint64((int64(x) >> 63))))
}
func (this *RequestData) String() string {
	if this == nil {
		return "nil"
	}
	s := strings.Join([]string{`&RequestData{`,
		`Type:` + fmt.Sprintf("%v", this.Type) + `,`,
		`Value:` + fmt.Sprintf("%v", this.Value) + `,`,
		`Epoch:` + fmt.Sprintf("%v", this.Epoch) + `,`,
		`ChunkIndex:` + fmt.Sprintf("%v", this.ChunkIndex) + `,`,
		`}`,
	}, "")
	return s
}
func valueToStringRequestData(v interface{}) string {
	rv := reflect.ValueOf(v)
	if rv.IsNil() {
		return "nil"
	}
	pv := reflect.Indirect(rv).Interface()
	return fmt.Sprintf("*%v", pv)
}
func (m *RequestData) Unmarshal(dAtA []byte) error {
	l := len(dAtA)
	iNdEx := 0
	for iNdEx < l {
		preIndex := iNdEx
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return ErrIntOverflowRequestData
			}
			if iNdEx >= l {
				return io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= uint64(b&0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		fieldNum := int32(wire >> 3)
		wireType := int(wire & 0x7)
		if wireType == 4 {
			return fmt.Errorf("proto: RequestData: wiretype end group for non-group")
		}
		if fieldNum <= 0 {
			return fmt.Errorf("proto: RequestData: illegal tag %d (wire type %d)", fieldNum, wire)
		}
		switch fieldNum {
		case 1:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field Type", wireType)
			}
			m.Type = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowRequestData
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				m.Type |= RequestDataType(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
		case 2:
			if wireType != 2 {
				return fmt.Errorf("proto: wrong wireType = %d for field Value", wireType)
			}
			var byteLen int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowRequestData
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				byteLen |= int(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if byteLen < 0 {
				return ErrInvalidLengthRequestData
			}
			postIndex := iNdEx + byteLen
			if postIndex < 0 {
				return ErrInvalidLengthRequestData
			}
			if postIndex > l {
				return io.ErrUnexpectedEOF
			}
			m.Value = append(m.Value[:0], dAtA[iNdEx:postIndex]...)
			if m.Value == nil {
				m.Value = []byte{}
			}
			iNdEx = postIndex
		case 3:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field Epoch", wireType)
			}
			m.Epoch = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowRequestData
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				m.Epoch |= uint32(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
		case 4:
			if wireType != 0 {
				return fmt.Errorf("proto: wrong wireType = %d for field ChunkIndex", wireType)
			}
			m.ChunkIndex = 0
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return ErrIntOverflowRequestData
				}
				if iNdEx >= l {
					return io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				m.ChunkIndex |= uint32(b&0x7F) << shift
				if b < 0x80 {
					break
				}
			}
		default:
			iNdEx = preIndex
			skippy, err := skipRequestData(dAtA[iNdEx:])
			if err != nil {
				return err
			}
			if (skippy < 0) || (iNdEx+skippy) < 0 {
				return ErrInvalidLengthRequestData
			}
			if (iNdEx + skippy) > l {
				return io.ErrUnexpectedEOF
			}
			iNdEx += skippy
		}
	}

	if iNdEx > l {
		return io.ErrUnexpectedEOF
	}
	return nil
}
func skipRequestData(dAtA []byte) (n int, err error) {
	l := len(dAtA)
	iNdEx := 0
	depth := 0
	for iNdEx < l {
		var wire uint64
		for shift := uint(0); ; shift += 7 {
			if shift >= 64 {
				return 0, ErrIntOverflowRequestData
			}
			if iNdEx >= l {
				return 0, io.ErrUnexpectedEOF
			}
			b := dAtA[iNdEx]
			iNdEx++
			wire |= (uint64(b) & 0x7F) << shift
			if b < 0x80 {
				break
			}
		}
		wireType := int(wire & 0x7)
		switch wireType {
		case 0:
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowRequestData
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				iNdEx++
				if dAtA[iNdEx-1] < 0x80 {
					break
				}
			}
		case 1:
			iNdEx += 8
		case 2:
			var length int
			for shift := uint(0); ; shift += 7 {
				if shift >= 64 {
					return 0, ErrIntOverflowRequestData
				}
				if iNdEx >= l {
					return 0, io.ErrUnexpectedEOF
				}
				b := dAtA[iNdEx]
				iNdEx++
				length |= (int(b) & 0x7F) << shift
				if b < 0x80 {
					break
				}
			}
			if length < 0 {
				return 0, ErrInvalidLengthRequestData
			}
			iNdEx += length
		case 3:
			depth++
		case 4:
			if depth == 0 {
				return 0, ErrUnexpectedEndOfGroupRequestData
			}
			depth--
		case 5:
			iNdEx += 4
		default:
			return 0, fmt.Errorf("proto: illegal wireType %d", wireType)
		}
		if iNdEx < 0 {
			return 0, ErrInvalidLengthRequestData
		}
		if depth == 0 {
			return iNdEx, nil
		}
	}
	return 0, io.ErrUnexpectedEOF
}

var (
	ErrInvalidLengthRequestData        = fmt.Errorf("proto: negative length found during unmarshaling")
	ErrIntOverflowRequestData          = fmt.Errorf("proto: integer overflow")
	ErrUnexpectedEndOfGroupRequestData = fmt.Errorf("proto: unexpected end of group")
)
