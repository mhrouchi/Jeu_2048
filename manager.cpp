#include "manager.h"
#include <iostream>
#include <vector>

using namespace std;

int Manager::iScore=0;
int Manager::max_tile=0;
int Manager::size=4;
int i,j;

/*--------------------------------------------*/

    Manager::Manager(QObject *parent) : QObject(parent)
    {
        init_grille();
        grilleChanged();
    }
/*--------------------------------------------*/

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

/*--------------------------------------------*/

    int Manager::getSize()
    {
        return size;
    }

/*--------------------------------------------*/

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
/*--------------------------------------------*/

    void Manager::Init_case()
    {
        int i1,i2,j1,j2;
        i1=rand()%grilleSize;
        j1=rand()%grilleSize;
        do{
            i2=rand()%grilleSize;
            j2=rand()%grilleSize;
        } while((j1==j2)&&(i1==i2));
        do {grille[i1][j1]=rand()%2+rand()%2;} while(grille[i1][j1]==0||grille[i1][j1]==1);
        do {grille[i2][j2]=rand()%2+rand()%2;} while(grille[i2][j2]==0||grille[i2][j2]==1);
    }

/*--------------------------------------------*/

    bool Manager::ifwin()
    {
        return (max_tile == 2048) ;
    }

/*--------------------------------------------*/

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


/*--------------------------------------------*/

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



  void Manager::Move_left(){
      vector<int> v1(grilleSize),v2(grilleSize);

      for(int i=0;i<grilleSize;i++)
       {
            for(int j=0;j<grilleSize;j++)
               {
                 v1[j]=grille[i][j];
               }
           v2=fusionner(v1);
            for(int j=0;j<grilleSize;j++)
               {
              grille[i][j]=v2[j];
               }
      }


      do{
     i=rand()%grilleSize;
     j=rand()%grilleSize;}
  while (grille[i][j]!=0);
  grille[i][j]=2;

  grilleChanged();
  ScoreChanged();
  ColorChanged();



  }

  /*--------------------------------------------*/

  void Manager::Move_right(){
      vector<int> v1(grilleSize),v2(grilleSize);

      for(int i=0;i<grilleSize;i++){
          for(int j=0;j<grilleSize;j++){
              v1[grilleSize-1-j]=grille[i][j];
          }
          v2=fusionner(v1);
          for(int j=0;j<grilleSize;j++){
              grille[i][j]=v2[grilleSize-1-j];
          }
      }

      do{
         i=rand()%grilleSize;
         j=rand()%grilleSize;}
      while (grille[i][j]!=0);
      grille[i][j]=2;

      grilleChanged();
      ScoreChanged();
      ColorChanged();



  }

  /*--------------------------------------------*/

  void Manager::Move_down(){
      vector<int> v1(grilleSize),v2(grilleSize);

      for(int i=0;i<grilleSize;i++){
          for(int j=0;j<grilleSize;j++){
              v1[grilleSize-1-j]=grille[j][i];
          }
          v2=fusionner(v1);
          for(int j=0;j<grilleSize;j++){
              grille[j][i]=v2[grilleSize-1-j];
          }
      }

      do{
       i=rand()%grilleSize;
       j=rand()%grilleSize;}
      while (grille[i][j]!=0);
      grille[i][j]=2;

      grilleChanged();
      ScoreChanged();
      ColorChanged();



  }

  /*--------------------------------------------*/

  void Manager::Move_up(){
      vector<int> v1(grilleSize),v2(grilleSize);

      for(int i=0;i<grilleSize;i++){
          for(int j=0;j<grilleSize;j++){
              v1[j]=grille[j][i];
          }
          v2=fusionner(v1);
          for(int j=0;j<grilleSize;j++){
              grille[j][i]=v2[j];
          }
      }

      do{
         i=rand()%grilleSize;
         j=rand()%grilleSize;}
      while (grille[i][j]!=0);
      grille[i][j]=2;

      grilleChanged();
      ScoreChanged();
      ColorChanged();


  }

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


  QString Manager::getScore()
   {
       return(QString::number(Manager::iScore));

   }


  QList<QString> Manager::getColor()
  {
                 ColorGrille.clear();
                        for(int i=0;i<grilleSize;i++){
                           for(int j=0;j<grilleSize;j++)
                             {
                               switch (grille[i][j])
                                   {
                                   case 0 :
                                       ColorGrille.append( "#cbbeb1");
                                       break;
                                   case 2:
                                        ColorGrille.append("#eee4da");
                                       break;
                                   case 4:
                                       ColorGrille.append( "#eae0c8");
                                       break;
                                   case 8:
                                        ColorGrille.append( "#f59563");
                                        break;
                                   case 16 :
                                       ColorGrille.append( "#3399ff");
                                       break;
                                   case 32 :
                                       ColorGrille.append( "#ffa333");
                                       break;
                                   case 64 :
                                       ColorGrille.append( "#cef030");
                                       break;
                                   case 128 :
                                       ColorGrille.append( "#e8d8ce");
                                       break;
                                   case 256 :
                                       ColorGrille.append( "#990303");
                                       break;
                                   case 512 :
                                       ColorGrille.append( "#6ba5de");
                                       break;
                                   case 1024 :
                                       ColorGrille.append( "#dcad60");
                                       break;
                                   case 2048 :
                                       ColorGrille.append( "#b60022");
                                       break;

                                   }
                               }
                           }
     return ColorGrille ;
  }

