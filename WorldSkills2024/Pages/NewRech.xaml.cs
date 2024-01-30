using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WorldSkills2024.Models;

namespace WorldSkills2024.Pages
{
    /// <summary>
    /// Логика взаимодействия для NewRech.xaml
    /// </summary>
    public partial class NewRech : Page
    {
        Rechept rechept;
        Places places;
        public NewRech(Places placess)
        {
            InitializeComponent();
            places = placess;
            rechept = new Rechept();
            DataContext = rechept;
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            if (rechept.Name != null && rechept.Format != null && rechept.Doza != null)
            {
                rechept.PlacesId = places.Id;
                App.DB.Rechept.Add(rechept);
                App.DB.SaveChanges();
                NavigationService.GoBack();
            }
            else
            {
                MessageBox.Show("Заполните все поля!");
            }
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
