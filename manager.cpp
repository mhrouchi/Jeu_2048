#include "manager.h"
#include <iostream>
#include <vector>

using namespace std;

int Manager::iScore=0;
int Manager::max_tile=0;
int Manager::size=4;
int i,j;

/*----------------------Constructeur inistialise le jeu ----------------------*/

    Manager::Manager(QObject *parent) : QObject(parent)
    {
        init_grille();
        grilleChanged();
    }
/*----------------------Destructeur ----------------------*/

    Manager::~Manager()
    {
    if (grille!=NULL)
        {
            for(int i=0;i<grilleSize;i++)
            {
               delete [] grille[i];
            }
            delete [] grille;
            grille=NULL;
        }
    }

/*----------------------accès à la taille de la grille----------------------*/

    int Manager::getSize()
    {
        return size;
    }

/*---------------------Fonction initialise le jeu 4*4-----------------------*/

    void Manager::init_grille()
     {
        Manager::iScore=0;
        grilleSize= this->getSize();
        grille= new int*[grilleSize];

        for(int i=0;i<grilleSize;i++)
        {
            grille[i]= new int[grilleSize];
            for(int j=0;j<grilleSize;j++)
            { grille[i][j]=0 ; }
      }

        Init_case();
        grilleChanged();
        ScoreChanged();
        ColorChanged();
        SizeChanged();

    }
/*----------------------Fonction initialise deux cases differentes avec 2 ou 4 ----------------------*/

    void Manager::Init_case()
    {
        int i1,i2,j1,j2;
        i1=rand()%grilleSize;
        j1=rand()%grilleSize;
        do{
            i2=rand()%grilleSize;
            j2=rand()%grilleSize;
        } while((j1==j2)&&(i1==i2));
        do {grille[i1][j1]=2*(rand()%2+rand()%2);} while(grille[i1][j1]==0);
        do {grille[i2][j2]=2*(rand()%2+rand()%2);} while(grille[i2][j2]==0);
    }

/*----------------------Fonction permet de verifier si l'utilisateur gagne ----------------------*/

    bool Manager::ifwin()
    {
        return (max_tile == 2048) ;
    }

/*----------------------Fonction permet de verifier si l'utilisateur perds ------------------*/

    bool Manager::iflose()
    {
        int cmpt=0;
        for(int i=0;i<grilleSize;i++)
        {
            for(int j=0;j<grilleSize;j++)
            {
                if(grille[i][j]!=0)
                    cmpt++;
            }
        }

        if (cmpt==grilleSize*grilleSize)
        return true ;
        else
        return false ;
    }


/*---------------------Fonction permet de fusionner les cases qui portent les memes chiffres -----------------------*/

  vector<int> fusionner(vector<int> v0)
  {
        int dim=v0.size();
        vector<int> w(dim);
        vector<int> v(dim);

        int j=0;

        for(int i=0;i<dim;i++)
        {
            if(v0[i]!=0){
            v[j]=v0[i];
            j++;
            }
        }

        j=0;
        int i=1;
        while(i<dim)
        {
            if(v[i-1]==v[i])
            {
                 w[j]=2*v[i-1];

                Manager::iScore=Manager::iScore+w[j];
                     if(w[j]>Manager::max_tile)
                     {
                         Manager::max_tile=w[j];
                     }

                  i=i+2;
                  j++;
            }
            else
            {
                w[j]=v[i-1];
                j++;
                i=i+1;
            }
        }

        if ((v[dim-1]!=0)&&(v[dim-1]!=v[dim-2]))
        {
            w[j]= v[dim-1];
            j++;
        }

            for(int i=j;i<dim;i++)
            {
                w[i]=0;
            }
      return w ;
    }

/*------------------------------Gestion du mouvement à gauche-------------------------------*/

  void Manager::Move_left()
  {
      vector<int> v1(grilleSize),v2(grilleSize);
      vector<vector<int>> Matrice; //matrice pour stocker les données
      bool mouvement=false;
      for(int i=0;i<grilleSize;i++)
      {
          vector<int> temp;

          for(int j=0;j<grilleSize;j++)
          {
              temp.push_back(grille[i][j]);
          }
        //stockage des données

      Matrice.push_back(temp); //stockage des données dans la matrice
      }

      for(int i=0;i<grilleSize;i++)
       {
           vector<int> temp;
           for(int j=0;j<grilleSize;j++)
           {
                 v1[j]=grille[i][j];
           }
           v2=fusionner(v1);
           for(int j=0;j<grilleSize;j++)
           {
               if(v2[j]!=v1[j])
                   mouvement=true;
           }
           for(int j=0;j<grilleSize;j++)
           {
              grille[i][j]=v2[j];
           }

           //stockage des données



      }

    if(mouvement==true)
    {
        do
        {
           i=rand()%grilleSize;
           j=rand()%grilleSize;
        }
        while (grille[i][j]!=0);
        grille[i][j]=2;

        VectMatrices.push_back(Matrice); //on stock notre matrice dans un vecteur

        grilleChanged();
        ScoreChanged();
        ColorChanged();
    }
  }

  /*-----------------------Gestion du mouvement à droite ---------------------*/

  void Manager::Move_right()
  {
      vector<int> v1(grilleSize),v2(grilleSize);
      vector<vector<int>> Matrice; //matrice pour stocker les données
      bool mouvement=false;
      for(int i=0;i<grilleSize;i++)
      {
          vector<int> temp;

          for(int j=0;j<grilleSize;j++)
          {
              temp.push_back(grille[i][j]);
          }
        //stockage des données

      Matrice.push_back(temp); //stockage des données dans la matrice
      }

      for(int i=0;i<grilleSize;i++)
      {


          for(int j=0;j<grilleSize;j++)
          {
              v1[grilleSize-1-j]=grille[i][j];

          }
          v2=fusionner(v1);
          for(int j=0;j<grilleSize;j++)
          {
              if(v2[j]!=v1[j])
                  mouvement=true;
          }
          for(int j=0;j<grilleSize;j++)
          {
              grille[i][j]=v2[grilleSize-1-j];
          }

      }
    if(mouvement==true)
    {
        do
        {
            i=rand()%grilleSize;
            j=rand()%grilleSize;
        }
        while (grille[i][j]!=0);
        grille[i][j]=2;

        VectMatrices.push_back(Matrice); //on stock notre matrice dans un vecteur

        grilleChanged();
        ScoreChanged();
        ColorChanged();
    }
}

  /*---------------------Gestion du mouvement en bas -----------------------*/

  void Manager::Move_down()
  {
      vector<int> v1(grilleSize),v2(grilleSize);
      vector<vector<int>> Matrice; //matrice pour stocker les données
      bool mouvement=false;

      for(int i=0;i<grilleSize;i++)
      {
          vector<int> temp;
          for(int j=0;j<grilleSize;j++)
         {
         temp.push_back(grille[i][j]);
         }
               //stockage des données

       Matrice.push_back(temp); //stockage des données dans la matrice
        }
      for(int i=0;i<grilleSize;i++)
      {
          vector<int> temp;
          for(int j=0;j<grilleSize;j++)
          {
              v1[grilleSize-1-j]=grille[j][i];
          }
          v2=fusionner(v1);
          for(int j=0;j<grilleSize;j++)
          {
              if(v2[j]!=v1[j])
                  mouvement=true;
          }
          for(int j=0;j<grilleSize;j++)
          {
              grille[j][i]=v2[grilleSize-1-j];
          }
          //stockage des données

      }
    if(mouvement==true)
    {
        do
        {
            i=rand()%grilleSize;
            j=rand()%grilleSize;
        }
        while (grille[i][j]!=0);
        grille[i][j]=2;

        VectMatrices.push_back(Matrice); //on stock notre matrice dans un vecteur

        grilleChanged();
        ScoreChanged();
        ColorChanged();
    }


 }

  /*-----------------------Gestion du mouvement en haut  ---------------------*/

  void Manager::Move_up()
  {
      vector<int> v1(grilleSize),v2(grilleSize);
      vector<vector<int>> Matrice; //matrice pour stocker les données
      bool mouvement=false;
      for(int i=0;i<grilleSize;i++)
      {
          vector<int> temp;

          for(int j=0;j<grilleSize;j++)
          {
              temp.push_back(grille[i][j]);
          }
        //stockage des données

      Matrice.push_back(temp); //stockage des données dans la matrice
      }
      for(int i=0;i<grilleSize;i++)
      {
          vector<int> temp;

          for(int j=0;j<grilleSize;j++)
          {
              v1[j]=grille[j][i];

          }
          v2=fusionner(v1);
          for(int j=0;j<grilleSize;j++)
          {
              if(v2[j]!=v1[j])
                  mouvement=true;
          }
          for(int j=0;j<grilleSize;j++)
          {
              grille[j][i]=v2[j];
          }
          //stockage des données

      }
    if(mouvement==true)
    {
        do
        {
             i=rand()%grilleSize;
             j=rand()%grilleSize;
        }
        while (grille[i][j]!=0);

        grille[i][j]=2;

        VectMatrices.push_back(Matrice); //on stock notre matrice dans un vecteur

        grilleChanged();
        ScoreChanged();
        ColorChanged();
    }

  }
/*-------------------------------------Fonction permet de choisir la taile de notre grille----------------------------------*/
  int Manager::setSize(int v){

      switch (v){
      case 4:
          Manager::size=4;
              break;
      case 5:
              Manager::size=5;
              break;
      case 6:
              Manager::size=6;
              break;
      case 7:
              Manager::size=7;
              break;
      case 8:
              Manager::size=8;
              break;
      }
      grilleChanged();
      return Manager::size;

  }
/*--------------------------Methode permet d'afficher la matrice sur la grille de l'interface----------------------------------*/

  QList<QString> Manager::readGrille()
  {
       ContentGrille.clear();
       for(int i=0;i<grilleSize;i++){
           for(int j=0;j<grilleSize;j++){

       ContentGrille.append( QString::number(grille[i][j]));
       }
       }
       return ContentGrille;
  }

/*-------------------------------------Methode permet d'afficher le score sur l'interface--------------------------------------*/
  QString Manager::getScore()
   {
       return(QString::number(Manager::iScore));

   }

/*---------------------------Methode permet de changer la couleur des cases selon le chiffre --------------------------------*/
  QList<QString> Manager::getColor()
  {
                 ColorGrille.clear();
                        for(int i=0;i<grilleSize;i++){
                           for(int j=0;j<grilleSize;j++)
                             {
                               switch (grille[i][j])
                                   {
                                   case 0 :
                                       ColorGrille.append( "#CCC0B4");
                                       break;
                                   case 2:
                                        ColorGrille.append("#EEE4DA");
                                       break;
                                   case 4:
                                       ColorGrille.append( "#EEDFCA");
                                       break;
                                   case 8:

                                        ColorGrille.append( "#EFB27C");
                                        break;
                                   case 16 :
                                       ColorGrille.append( "#ED8C55");
                                       break;
                                   case 32 :
                                       ColorGrille.append( "#F67C5F");
                                       break;
                                   case 64 :
                                       ColorGrille.append( "#E55C3A");
                                       break;
                                   case 128 :
                                       ColorGrille.append( "#EDCF72");
                                       break;
                                   case 256 :
                                       ColorGrille.append( "#F2D052");
                                       break;
                                   case 512 :
                                       ColorGrille.append( "#EDC850");
                                       break;
                                   case 1024 :
                                       ColorGrille.append( "#E3BA14");
                                       break;
                                   case 2048 :
                                       ColorGrille.append( "#ECC400");
                                       break;

                                   }
                               }
                           }
     return ColorGrille ;
  }
  /*-------------------------------- Methode permet d'effectuer un pas en arriere -----------------------------------*/
  void Manager::retour()
  {
      int i,j;
      supprimer();
      for(i=0;i<grilleSize;i++)
      {
          for(j=0;j<grilleSize;j++)
              grille[i][j]=VectMatrices[VectMatrices.size()-1][i][j];
      }

      grilleChanged();
      ScoreChanged();
      ColorChanged();
      VectMatrices.pop_back();
  }

  /*--------------------------------------------------------------------*/
  void Manager::supprimer()
  {
      int i,j;
      for(i=0;i<grilleSize;i++)
          for(j=0;j<grilleSize;j++)
              grille[i][j]=0;
  }

