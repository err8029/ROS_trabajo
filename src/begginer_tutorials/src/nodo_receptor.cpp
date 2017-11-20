#include "ros/ros.h"
#include "begginer_tutorials/mesajeTest.h"

/**
  *Se implementa un nodo que espera recibir un mensaje cuyo topic es "mensaje
  *Test_topic" del tipo begginer_tutorials::mensajeTest
  *Muestra por pantalla el mensaje recibido
  */

/**
  *Esta funcion muestra por pantalla el mensaje recibido que es del tipo mensajeTest
  * */
void functionCallback(const begginer_tutorials::mesajeTest::ConstPtr& msg)
{
    ROS_INFO("He recibido un mensaje de test con el numero: %d", msg->numero);
}

int main(int argc, char **argv)
{
    //inicializa el nodo receptor
    ros::init(argc,argv,"nodo_receptor");
    ros::NodeHandle nodoReceptor; //crea el objeto nodoReceptor
    ROS_INFO("nodo_receptor creado y registrado"); //aviso por pantalla

    //si recibimos un mensaje cuyo topic sea: "mensajeTest_topic" llamamos a la
    //funcion mostradora: functionCallback
    ros::Subscriber subscriptor = nodoReceptor.subscribe("mensajeTest_topic", 0, functionCallback);

    /** loop infinito para que no finalice la ejecucion del nodo y este atento al topic
     * llamando la functionCallback si este es cierto
     */
    ros::spin();

    return 0;
}
