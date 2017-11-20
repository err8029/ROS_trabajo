// Generated by gencpp from file trabajo/multiplicador.msg
// DO NOT EDIT!


#ifndef TRABAJO_MESSAGE_MULTIPLICADOR_H
#define TRABAJO_MESSAGE_MULTIPLICADOR_H

#include <ros/service_traits.h>


#include <trabajo/multiplicadorRequest.h>
#include <trabajo/multiplicadorResponse.h>


namespace trabajo
{

struct multiplicador
{

typedef multiplicadorRequest Request;
typedef multiplicadorResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct multiplicador
} // namespace trabajo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::trabajo::multiplicador > {
  static const char* value()
  {
    return "d1d48bd1a6a0e98317f90b1d6ea7b6fa";
  }

  static const char* value(const ::trabajo::multiplicador&) { return value(); }
};

template<>
struct DataType< ::trabajo::multiplicador > {
  static const char* value()
  {
    return "trabajo/multiplicador";
  }

  static const char* value(const ::trabajo::multiplicador&) { return value(); }
};


// service_traits::MD5Sum< ::trabajo::multiplicadorRequest> should match 
// service_traits::MD5Sum< ::trabajo::multiplicador > 
template<>
struct MD5Sum< ::trabajo::multiplicadorRequest>
{
  static const char* value()
  {
    return MD5Sum< ::trabajo::multiplicador >::value();
  }
  static const char* value(const ::trabajo::multiplicadorRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::trabajo::multiplicadorRequest> should match 
// service_traits::DataType< ::trabajo::multiplicador > 
template<>
struct DataType< ::trabajo::multiplicadorRequest>
{
  static const char* value()
  {
    return DataType< ::trabajo::multiplicador >::value();
  }
  static const char* value(const ::trabajo::multiplicadorRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::trabajo::multiplicadorResponse> should match 
// service_traits::MD5Sum< ::trabajo::multiplicador > 
template<>
struct MD5Sum< ::trabajo::multiplicadorResponse>
{
  static const char* value()
  {
    return MD5Sum< ::trabajo::multiplicador >::value();
  }
  static const char* value(const ::trabajo::multiplicadorResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::trabajo::multiplicadorResponse> should match 
// service_traits::DataType< ::trabajo::multiplicador > 
template<>
struct DataType< ::trabajo::multiplicadorResponse>
{
  static const char* value()
  {
    return DataType< ::trabajo::multiplicador >::value();
  }
  static const char* value(const ::trabajo::multiplicadorResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TRABAJO_MESSAGE_MULTIPLICADOR_H