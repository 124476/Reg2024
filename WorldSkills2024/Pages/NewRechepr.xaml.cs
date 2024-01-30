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
    /// Логика взаимодействия для NewRechepr.xaml
    /// </summary>
    public partial class NewRechepr : Page
    {
        Places places;
        public NewRechepr(Places placess)
        {
            InitializeComponent();
            places = placess;
        }

        private void Del_Click(object sender, RoutedEventArgs e)
        {
            if (RecheptDat.SelectedItem is Rechept rechept)
            {
                App.DB.Rechept.Remove(rechept);
                App.DB.SaveChanges();
                Refrash();
            }
        }

        private void Got_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new NewRech(places));
        }

        private void Refrash()
        {
            RecheptDat.ItemsSource = App.DB.Rechept.Where(x => x.PlacesId == places.Id).ToList();
            
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Refrash();
        }
    }
}
