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

namespace WorldSkills2024.Pages
{
    /// <summary>
    /// Логика взаимодействия для Main.xaml
    /// </summary>
    public partial class Main : Page
    {
        public Main()
        {
            InitializeComponent();
        }

        private void Reg_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Register(null));
        }

        private void GotPacient_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new GotPacient(false));
        }

        private void Gos_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new GotPacient(true));
        }

        private void Produ_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new OpenDoctor());
        }
    }
}
