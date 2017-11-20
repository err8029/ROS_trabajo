#include "ros/ros.h"
#include "trabajo/inf_personal_usuario.h"
#include <iostream>
#include "trabajo/multiplicador.h"

using namespace std;


bool servicio(trabajo::multiplicador::Request &req, trabajo::multiplicador::Response &res)
{
    res.resultado =req.entrada + 1;
    ROS_INFO("Peticion: x = %d", (int)req.entrada);
    ROS_INFO("Respuesta: %d", (int)res.resultado);
    return true;
}

int main(int argc, char **argv)
{
    //inicializa el nodo
    ros::init(argc, argv,"nodo_matematico");
    ros::NodeHandle n;

    //registra el servicio
    ros::ServiceServer service = n.advertiseService("servicio_multiplicador",servicio);
    ROS_INFO("servicio_multiplicador registrado.");

    //nos quedamos a la espera de llamadas al servicio
    ros::spin();

    return 0;

}
