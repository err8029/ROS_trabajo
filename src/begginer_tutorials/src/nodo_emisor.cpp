#include "ros/ros.h"
#include "begginer_tutorials/mesajeTest.h"

/**
 * Este nodo llamado nodo_emisor emite mensajes "mensajeTest_topic" del tipo
 * begginer_tutorials::mensajeTest
 * */

int main(int argc, char **argv)
{
    ros::init(argc,argv,"nodo_emisor"); //inicializa el nodo emisor
    ros::NodeHandle nodo; //creamos un objeto nodo de la clase ros
    ROS_INFO("nodo_emisor creado y registrado"); //mostramos por pantalla

    //es necesario advertir del tipo de mensaje que vamos a enviar y como
    //lo hemos llamado (el topic). En este caso es de tipo userInfo y el
    //topic se llama user_info_topic

    ros::Publisher publicadorMensajes = nodo.advertise<begginer_tutorials::mesajeTest>("mensajeTest_topic",0);

    //tiempo a dormir en cada iteración
    ros::Duration seconds_sleep(1);

    //ejecuta continuamente hasta interrupción manual (ctrl+c)
    int contador = 0;
    while (ros::ok())
    {
        //definimos el mensaje que queremos enviar del tipo mensajeTest en
        //nuestro topic:
        begginer_tutorials::mesajeTest mensajeAEnviar;
        //en el mensaje enviaremos el numero de iteracion
        mensajeAEnviar.numero = contador;

        //se publica el mensaje
        publicadorMensajes.publish(mensajeAEnviar);

        //en este programa no es necesario un spinOnce pero si tubiera una
        //funcion de callback (funcion fuera del main) es imprescindible para
        //que se ejecute

        ros::spinOnce();

        ROS_DEBUG("se duerme el nodo emisor durante un segundo");
        //dormimos el nodo durante un tiempo
        seconds_sleep.sleep();

        //incrementamos el contador
        contador++;
    }
}
