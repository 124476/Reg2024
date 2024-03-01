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
    /// Логика взаимодействия для GlavDoctor.xaml
    /// </summary>
    public partial class GlavDoctor : Page
    {
        public GlavDoctor()
        {
            InitializeComponent();
            DoctorsData.ItemsSource = App.DB.Doctors.ToList().Where(x => x.OtdelId < 10);
        }

        private void RedactDoc_Click(object sender, RoutedEventArgs e)
        {
            Doctors doctor = DoctorsData.SelectedItem as Doctors;
            if (doctor != null)
            {
                NavigationService.Navigate(new RedactDoct(doctor));
            }
            else
            {
                MessageBox.Show("error");
            }
        }

        private void GetPacient_Click(object sender, RoutedEventArgs e)
        {
            DoctorsData.ItemsSource = App.DB.Doctors.ToList().Where(x => (x.OtdelId < 10) && (x.Surname.ToLower().Contains(Code.Text.ToLower()) | x.Otdels.Name.ToLower().Contains(Code.Text.ToLower())));
        }
    }
}
