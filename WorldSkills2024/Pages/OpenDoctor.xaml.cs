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
    /// Логика взаимодействия для OpenDoctor.xaml
    /// </summary>
    public partial class OpenDoctor : Page
    {
        public OpenDoctor()
        {
            InitializeComponent();
        }

        private void Poisk_Click(object sender, RoutedEventArgs e)
        {
            Doctor doctor = App.DB.Doctor.FirstOrDefault(x => x.Name == Name.Text && x.Password == Password.Text);
            if (doctor != null)
            {
                NavigationService.Navigate(new MainOkno());
            }
            else
            {
                MessageBox.Show("Неверный логин или пароль!");
            }
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
