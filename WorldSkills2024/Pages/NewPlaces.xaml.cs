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
    /// Логика взаимодействия для NewPlaces.xaml
    /// </summary>
    public partial class NewPlaces : Page
    {
        Pacient pacient;
        Gospitals gospital;
        public NewPlaces(Pacient pacientt)
        {
            InitializeComponent();
            pacient = pacientt;
            gospital = App.DB.Gospitals.FirstOrDefault(x => x.PacientId == pacient.Id);
            if (gospital == null)
            {
                gospital = new Gospitals();
                Prih.Visibility = Visibility.Hidden;
                Prich.Visibility = Visibility.Hidden;
            }
            else
            {
                if (gospital.canPrich == false)
                {
                    Prih.Visibility = Visibility.Hidden;
                    Prich.Visibility = Visibility.Hidden;
                }
            }
            List<string> strings = new List<string>();
            foreach (Otdels s in App.DB.Otdels)
            {
                strings.Add(s.Name);
            }
            Otdel.ItemsSource = strings;
            DataContext = gospital;
            Yslov.ItemsSource = new List<String> { "Бюджет", "Платно" };
        }

        private void Reg_Click(object sender, RoutedEventArgs e)
        {
            if (Otdel.SelectedItem != null && gospital.Chel != null &&
                DateEnd.SelectedDate != null && DateStart.SelectedDate != null &&
                Yslov.SelectedItem != null)
            {
                if (gospital.Id == 0)
                {
                    gospital.PacientId = pacient.Id;
                    App.DB.Gospitals.Add(gospital);
                }
                gospital.canPrich = Check.IsChecked;
                if (gospital.canPrich == false)
                {
                    gospital.Prich = null;
                }
                App.DB.SaveChanges();
                NavigationService.GoBack();
            }
            else
            {
                MessageBox.Show("Заполнены не все поля!");
            }

        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void CheckBox_Checked(object sender, RoutedEventArgs e)
        {
            Prih.Visibility = Visibility.Visible;
            Prich.Visibility = Visibility.Visible;
        }

        private void CheckBox_Unchecked(object sender, RoutedEventArgs e)
        {
            Prih.Visibility = Visibility.Hidden;
            Prich.Visibility = Visibility.Hidden;
        }
    }
}
