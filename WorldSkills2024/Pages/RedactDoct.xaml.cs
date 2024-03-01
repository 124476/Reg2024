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
    /// Логика взаимодействия для RedactDoct.xaml
    /// </summary>
    public partial class RedactDoct : Page
    {
        Doctors doctor;
        public RedactDoct(Doctors doc)
        {
            InitializeComponent();
            doctor = doc;

            DataContext = doctor;

            Refrash();
        }

        private void Del_Click(object sender, RoutedEventArgs e)
        {
            Rapisan rapisan = DatesDoctor.SelectedItem as Rapisan;
            if (rapisan != null)
            {
                App.DB.Rapisan.Remove(rapisan);
                App.DB.SaveChanges();

                Refrash();
            }
            else
            {
                MessageBox.Show("error");
            }
        }

        private void NewRas_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new NewRasDoc(doctor));
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Refrash();
        }

        private void Refrash()
        {
            DatesDoctor.ItemsSource = App.DB.Rapisan.Where(x => x.DoctorId == doctor.Id).OrderBy(x => x.Date).ToList();
        }

        private void OkRas_Click(object sender, RoutedEventArgs e)
        {
            foreach (Rapisan rapisan in App.DB.Rapisan.Where(x => x.DoctorId == doctor.Id))
            {
                rapisan.CanUse = true;
            }
            App.DB.SaveChanges();
            MessageBox.Show("Утверждено!");
        }
    }
}
