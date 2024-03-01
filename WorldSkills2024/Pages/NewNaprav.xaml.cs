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
using WorldSkills2024.Windows;

namespace WorldSkills2024.Pages
{
    /// <summary>
    /// Логика взаимодействия для NewNaprav.xaml
    /// </summary>
    public partial class NewNaprav : Page
    {
        Places places;
        public NewNaprav(Pacient pacient)
        {
            InitializeComponent();
            places = App.DB.Places.FirstOrDefault(x => x.PacientId == pacient.Id);
            if (places == null)
            {
                places = new Places();
                places.PacientId = pacient.Id;
            }
            DataContext = places;
            List<string> strings = new List<string>();
            foreach (Doctors doctor in App.DB.Doctors)
            {
                strings.Add(doctor.Name);
            }
            Doctor.ItemsSource = strings;

            List<string> stringss = new List<string>();
            foreach (Meropriations doctor in App.DB.Meropriations)
            {
                stringss.Add(doctor.Name);
            }
            Merop.ItemsSource = stringss;
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            if (places.ResultId != null && Date.SelectedDate != null && Doctor.SelectedItem != null 
                && Merop.SelectedItem != null && places.Recomidation != null)
            {
                if (places.Id == 0)
                {
                    App.DB.Places.Add(places);
                }
                places.TipId = Merop.SelectedIndex;
                places.DoctorId = Doctor.SelectedIndex;
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

        private void Rechept_Click(object sender, RoutedEventArgs e)
        {
            if (places.Id == 0)
            {
                App.DB.Places.Add(places);
            }
            App.DB.SaveChanges();
            NavigationService.Navigate(new NewRechepr(places));
        }
    }
}
