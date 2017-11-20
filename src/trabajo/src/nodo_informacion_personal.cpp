#include "ros/ros.h"
#include "trabajo/inf_personal_usuario.h"
#include <iostream>
using namespace std;

/**
 * @brief EsNumero
 * @param variable
 * @return verifica que un char es un numero y devuelve un booleano
 */
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
    int i;
    int n;
    char nChar[10];
    int num_usuario=0;
    char edadChar[10];
    char idioma[20];
    char idiomas[200]="";

    ros::init(argc,argv,"nodo_informacion_personal"); //inicializa el nodo emisor
    ros::NodeHandle nodo; //creamos un objeto nodo de la clase ros
    ROS_INFO("nodo_informacion creado y registrado"); //mostramos por pantalla
    ros::Publisher Publicador_inforPers = nodo.advertise<trabajo::inf_personal_usuario>("inf_pers_topic",0);
    ros::Duration seconds_sleep(1);//tiempo a dormir en cada iteración

    //definimos el mensaje que queremos enviar del tipo mensajeTest en
    //nuestro topic:
    trabajo::inf_personal_usuario mensajeAEnviar;

    while (ros::ok())
    {
        while (num_usuario>=0)
        {
            cout<<"introduce el nombre del usuario " << num_usuario << ": ";
            cin>>mensajeAEnviar.nombre;
            cout<<"introduce la edad del usuario " << num_usuario << ": ";
            cin>>edadChar;
            while (EsNumero(edadChar)==false)
            {
                cout<<"(ERROR no es numero) introduce la edad del usuario " << num_usuario << ": ";
                cin>>edadChar;
            }
            mensajeAEnviar.edad=atoi(edadChar);
            cout<<"introduce el numero de idiomas que habla el usuario " << num_usuario <<": ";
            cin>>nChar;
            while (EsNumero(nChar)==false)
            {
                cout<<"(ERROR no es numero) introduce el numero de idiomas que habla el usuario " << num_usuario << ": ";
                cin>>nChar;
            }
            n=atoi(nChar);
            for(i=0;i<n;i++)
            {
                cout<<"escribe el idioma numero " << i << ": ";
                cin>>idioma;
                if (i==0)
                {
                    strcpy(idiomas,idioma);
                    strcat(idiomas,",");
                }
                else if (i==n-1)
                {
                    strcat(idiomas,idioma);
                }
                else
                {
                    strcat(idiomas,idioma);
                    strcat(idiomas,",");
                }
            }
            cout<<"----------------------------------- \n";
            mensajeAEnviar.idiomas = idiomas;

            //se publica el mensaje
            Publicador_inforPers.publish(mensajeAEnviar);

            ros::spinOnce();

            ROS_DEBUG("se duerme el nodo emisor durante un segundo");
            //dormimos el nodo durante un tiempo
            seconds_sleep.sleep();
            //que lo envie que compruebe los campos rellenados
            num_usuario++;
        }
    }



    return 0;
}
