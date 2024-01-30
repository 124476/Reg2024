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
    /// Логика взаимодействия для MainOkno.xaml
    /// </summary>
    public partial class MainOkno : Page
    {
        public MainOkno()
        {
            InitializeComponent();
            PacientData.ItemsSource = App.DB.Pacient.ToList();
        }

        private void Reg_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Main());
        }

        private void GetPacient_Click(object sender, RoutedEventArgs e)
        {
            Refrash();
        }

        private void Refrash()
        {
            PacientData.ItemsSource = App.DB.Pacient.Where(x => x.Id.ToString().StartsWith(Code.Text)).ToList();
        }

        private void GotPacient_Click(object sender, RoutedEventArgs e)
        {
            if (PacientData.SelectedValue is Pacient pacient)
            NavigationService.Navigate(new Register(pacient));
        }

        private void Res_Click(object sender, RoutedEventArgs e)
        {
            if (PacientData.SelectedItem is Pacient pacient)
            NavigationService.Navigate(new NewNaprav(pacient));
        }
    }
}
