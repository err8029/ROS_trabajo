#include "ros/ros.h"
#include "trabajo/usuario.h"
#include "trabajo/multiplicador.h"

void functionCallback(const trabajo::usuario::ConstPtr& msg)
{
    ROS_INFO("-------------------------------------------------------");
    ROS_INFO("[el nombre es: %s]",msg->infPersonal.nombre.c_str());
    ROS_INFO("[la edad es: %d]",msg->infPersonal.edad);
    ROS_INFO("[los idiomas son: %s]",msg->infPersonal.idiomas.c_str());
    ROS_INFO("-------------------------------------------------------");
    ROS_INFO("[la x es: %d]",msg->posicion.x);
    ROS_INFO("[la y es: %d]",msg->posicion.y);
    ROS_INFO("[la z es: %d]",msg->posicion.z);
    ROS_INFO("-------------------------------------------------------");
    ROS_INFO("[la emocion es: %s]",msg->emocion.c_str());
}

int main(int argc, char **argv)
{
    //inicializa el nodo receptor
    ros::init(argc,argv,"nodo_dialogo");
    ros::NodeHandle nodoDialogo; //crea el objeto nodoReceptor
    ROS_INFO("nodo_dialogo creado y registrado"); //aviso por pantalla

    //si recibimos un mensaje cuyo topic sea: "mensajeTest_topic" llamamos a la
    //funcion mostradora: functionCallback
    ros::Subscriber subscriptor = nodoDialogo.subscribe("user_topic", 0, functionCallback);

    ros::ServiceClient client = nodoDialogo.serviceClient<trabajo::multiplicador>("servicio_multiplicador");
    trabajo::multiplicador srv;
    srv.request.entrada = 2; //le damos un valor de prueba

    if (client.call(srv))
    {
        ROS_INFO("respuesta del servicio: %d", (int)srv.response.resultado);
    }
    else
    {
        ROS_ERROR("Fallo al llamar al servicio: nombre_servicio");
        return 1;
    }

    /** loop infinito para que no finalice la ejecucion del nodo y este atento al topic
     * llamando la functionCallback si este es cierto
     */
    ros::spin();

    return 0;
}
