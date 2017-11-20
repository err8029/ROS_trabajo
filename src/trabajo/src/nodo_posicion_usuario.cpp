#include "ros/ros.h"
#include "trabajo/pos_usuario.h"
#include <iostream>
using namespace std;

bool EsNumero(char variable[10])
{
    int numeroLetra;
    int NoEsNumero=0;

    for (numeroLetra=0;variable[numeroLetra];numeroLetra++)
    {
        if (variable[numeroLetra]<'0' || variable[numeroLetra]>'9')
        {
        NoEsNumero=1;
        }
    }
    if (NoEsNumero==0)
    {
        return true;
    }
    else
    {
        return false;
    }
}

main(int argc, char **argv)
{
    char xChar[10];
    char yChar[10];
    char zChar[10];
    ros::init(argc,argv,"nodo_emisor"); //inicializa el nodo emisor
    ros::NodeHandle nodo; //creamos un objeto nodo de la clase ros
    ROS_INFO("nodo_posicion_usuario creado y registrado"); //mostramos por pantalla

    //es necesario advertir del tipo de mensaje que vamos a enviar y como
    //lo hemos llamado (el topic). En este caso es de tipo userInfo y el
    //topic se llama user_info_topic

    ros::Publisher publicadorMensajes = nodo.advertise<trabajo::pos_usuario>("pos_usuario_topic",0);

    //tiempo a dormir en cada iteración
    ros::Duration seconds_sleep(1);

    while (ros::ok())
    {
        //definimos el mensaje que queremos enviar del tipo mensajeTest en
        //nuestro topic:
        trabajo::pos_usuario mensajeAEnviar;
        //en el mensaje enviaremos el numero de iteracion
        cout<<"introduce la coordenada x: ";
        cin>>xChar;
        while (EsNumero(xChar)==false)
        {
            cout<<"(ERROR no es numero) introduce la coordenada x: ";
            cin>>xChar;
        }
        mensajeAEnviar.x=atoi(xChar);

        cout<<"introduce la coordenada y: ";
        cin>>yChar;
        while (EsNumero(yChar)==false)
        {
            cout<<"(ERROR no es numero) introduce la coordenada y: ";
            cin>>yChar;
        }
        mensajeAEnviar.y=atoi(yChar);

        cout<<"introduce la coordenada z: ";
        cin>>zChar;
        while (EsNumero(zChar)==false)
        {
            cout<<"(ERROR no es numero) introduce la coordenada z: ";
            cin>>zChar;
        }
        mensajeAEnviar.z=atoi(zChar);
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
