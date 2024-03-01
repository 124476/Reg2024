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
    /// Логика взаимодействия для MainAdmin.xaml
    /// </summary>
    public partial class MainAdmin : Page
    {
        public MainAdmin()
        {
            InitializeComponent();
        }

        private void PacNav_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new MainOkno());
        }

        private void RegNav_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new OknoRegister());
        }

        private void GlaNav_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new GlavDoctor());
        }
    }
}
