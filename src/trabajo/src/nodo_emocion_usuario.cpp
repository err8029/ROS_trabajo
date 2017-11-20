#include "ros/ros.h"
#include "std_msgs/String.h"
#include <iostream>
using namespace std;

main(int argc, char **argv)
{
    ros::init(argc,argv,"nodo_emocion_usuario"); //inicializa el nodo emisor
    ros::NodeHandle nodo; //creamos un objeto nodo de la clase ros
    ROS_INFO("nodo_posicion_usuario creado y registrado"); //mostramos por pantalla

    //es necesario advertir del tipo de mensaje que vamos a enviar y como
    //lo hemos llamado (el topic). En este caso es de tipo userInfo y el
    //topic se llama user_info_topic

    ros::Publisher publicadorMensajes = nodo.advertise<std_msgs::String>("emocion_topic",0);

    //tiempo a dormir en cada iteración
    ros::Duration seconds_sleep(1);

    while (ros::ok())
    {
        //definimos el mensaje que queremos enviar del tipo mensajeTest en
        //nuestro topic:
        std_msgs::String mensajeAEnviar;
        //en el mensaje enviaremos el numero de iteracion
        cout<<"introduce la emocion a expresar: ";
        cin>>mensajeAEnviar.data;
        cout<<"----------------------------------- \n";


        //se publica el mensaje
        publicadorMensajes.publish(mensajeAEnviar);

        ros::spinOnce();

        ROS_DEBUG("se duerme el nodo emisor durante un segundo");
        //dormimos el nodo durante un tiempo
        seconds_sleep.sleep();
    }
    return 0;
}
