using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;
using WorldSkills2024.Models;

namespace WorldSkills2024
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static WorldSkills2024DBEntities2 DB = new WorldSkills2024DBEntities2();
        public static BitmapImage imageBit;
    }
}
