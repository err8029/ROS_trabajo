#include "ros/ros.h"
#include "begginer_tutorials/tipo_servicio.h"

/** Funcion ofertada: servicio*/
bool servicio(begginer_tutorials::tipo_servicio::Request &req, begginer_tutorials::tipo_servicio::Response &res)
{
    res.resultado1 =req.argumento1 + 1;
    ROS_INFO("Peticion: x = %d", (int)req.argumento1);
    ROS_INFO("Respuesta: %d", (int)res.resultado1);
    return true;
}

int main(int argc, char **argv)
{
    //inicializa el nodo
    ros::init(argc, argv,"nodo_servidor");
    ros::NodeHandle n;

    //registra el servicio
    ros::ServiceServer service = n.advertiseService("nombre_servicio",servicio);
    ROS_INFO("servicio registrado.");

    //nos quedamos a la espera de llamadas al servicio
    ros::spin();

    return 0;

}

