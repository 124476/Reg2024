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
        Gospital gospital;
        public NewPlaces(Pacient pacientt)
        {
            InitializeComponent();
            pacient = pacientt;
            gospital = App.DB.Gospital.FirstOrDefault(x => x.PacientId == pacient.Id);
            if (gospital == null)
            {
                gospital = new Gospital();
            }
            List<string> strings = new List<string>();
            foreach (Otdel s in App.DB.Otdel)
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
                Yslov.SelectedItem != null && gospital.Diagnoz != null)
            {
                if (gospital.Id == 0)
                {
                    gospital.PacientId = pacient.Id;
                    App.DB.Gospital.Add(gospital);
                }
                App.DB.SaveChanges();
                NavigationService.GoBack();
            }
            else
            {
                MessageBox.Show("Заполнены не все поля!");
            }

        }

        private void No_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                App.DB.Gospital.Remove(gospital);
                App.DB.SaveChanges();
            }
            catch
            {
                
            } 
            NavigationService.GoBack();
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
