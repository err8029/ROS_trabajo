#include "ros/ros.h"
#include "trabajo/inf_personal_usuario.h"
#include "trabajo/pos_usuario.h"
#include "trabajo/usuario.h"
#include <iostream>
#include <std_msgs/String.h>
using namespace std;

static int mensaje1_recibido=0;
static int mensaje2_recibido=0;
static int mensaje3_recibido=0;
static trabajo::usuario mensajeAEnviar;

class Listener
{
    private: string NumberToString (int Number)
    {
        stringstream ss;
        ss << Number;
        return ss.str();
    }
    public: void crear_mensaje_usuario(std::string var1,std::string var2,std::string var3, int num_mensaje)
    {
        trabajo::inf_personal_usuario infPersonal_mensaje;
        trabajo::pos_usuario pos_usuario_mensaje;

        if(num_mensaje==1)
        {
            ROS_INFO("mensaje de inf_personal empaquetado");
            infPersonal_mensaje.nombre=var1;
            infPersonal_mensaje.idiomas=var2;
            infPersonal_mensaje.edad=atoi(var3.c_str());
            mensajeAEnviar.infPersonal = infPersonal_mensaje;
            mensaje1_recibido = 1;
        }
        else if(num_mensaje==2)
        {
            ROS_INFO("mensaje de posicion empaquetado");
            pos_usuario_mensaje.x=atoi(var1.c_str());
            pos_usuario_mensaje.y=atoi(var2.c_str());
            pos_usuario_mensaje.z=atoi(var3.c_str());
            mensajeAEnviar.posicion = pos_usuario_mensaje;
            mensaje2_recibido = 1;
        }
        else
        {
            ROS_INFO("mensaje de emocion empaquetado");
            mensajeAEnviar.emocion = var1.c_str();
            mensaje3_recibido = 1;
        }

    }
    public: void mensaje_inf_personal(const trabajo::inf_personal_usuario::ConstPtr& msg)
    {
        ROS_INFO("|-------------------------------------|");
        ROS_INFO("[el nombre recibido es: %s]",msg->nombre.c_str());
        ROS_INFO("[los idiomas recibidos son: %s]",msg->idiomas.c_str());
        ROS_INFO("[la edad recibida es: %d]",msg->edad);
        crear_mensaje_usuario(msg->nombre.c_str(),msg->idiomas.c_str(),NumberToString(msg->edad),1);
    }
    public: void mensaje_pos(const trabajo::pos_usuario::ConstPtr& msg)
    {
        ROS_INFO("|-------------------------------------|");
        ROS_INFO("[pos_x: %d]",msg->x);
        ROS_INFO("[pos_y: %d]",msg->y);
        ROS_INFO("[pos_z: %d]",msg->z);

        crear_mensaje_usuario(NumberToString(msg->x),NumberToString(msg->y),NumberToString(msg->z),2);
    }
    public: void mensaje_emocion(const std_msgs::String::ConstPtr& msg)
    {
        ROS_INFO("|-------------------------------------|");
        ROS_INFO("[emcion: %s]",msg->data.c_str());
        crear_mensaje_usuario(msg->data.c_str(),"","",3);
    }
};
main(int argc, char **argv)
{
     //inicializa el nodo receptor
     ros::init(argc,argv,"nodo_empaquetador");
     ros::NodeHandle nodoEmpaquetador; //crea el objeto nodoReceptor
     ROS_INFO("nodo_receptor creado y registrado"); //aviso por pantalla

     Listener listener;
     ros::Subscriber Subscriptor_Empaquetador_inf = nodoEmpaquetador.subscribe("inf_pers_topic", 0, &Listener::mensaje_inf_personal, &listener);
     ros::Subscriber Subscriptor_Empaquetador_pos = nodoEmpaquetador.subscribe("pos_usuario_topic", 0, &Listener::mensaje_pos, &listener);
     ros::Subscriber Subscriptor_Empaquetador_emocion = nodoEmpaquetador.subscribe("emocion_topic", 0, &Listener::mensaje_emocion, &listener);

     ros::Publisher publicadorMensajes = nodoEmpaquetador.advertise<trabajo::usuario>("user_topic",0);
     ros::Duration seconds_sleep(1);
     while (ros::ok())
     {
     //ros::Duration seconds_sleep(1);


        if(mensaje1_recibido == 1 && mensaje2_recibido == 1 && mensaje3_recibido == 1)
        {
            publicadorMensajes.publish(mensajeAEnviar);
            ROS_INFO("|-------------------------------------|");
            ROS_INFO("|           mensaje enviado           |");
            ROS_INFO("|-------------------------------------|");
            mensaje1_recibido = 0;
            mensaje2_recibido = 0;
            mensaje3_recibido = 0;
        }
         ros::spinOnce();

         ROS_DEBUG("se duerme el nodo emisor durante un segundo");
         //dormimos el nodo durante un tiempo
         seconds_sleep.sleep();
     }
     return 0;
}
