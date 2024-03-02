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
    /// Логика взаимодействия для NewRasDoc.xaml
    /// </summary>
    public partial class NewRasDoc : Page
    {
        Doctors doctor;
        public NewRasDoc(Doctors doctors)
        {
            InitializeComponent();
            doctor = doctors;
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            if (DateStart.SelectedDate.Value > DateEnd.SelectedDate.Value){
                MessageBox.Show("error date");
            }
            else
            {
                DateTime i = DateStart.SelectedDate.Value;
                while (i <= DateEnd.SelectedDate.Value) {
                    Rapisan rapisan = new Rapisan();
                    rapisan.DoctorId = doctor.Id;
                    rapisan.Date = i;
                    TimeSpan ts = TimeSpan.Parse(RasTime.Text);
                    rapisan.Time = ts;
                    rapisan.Spech = ChecOc.IsChecked;
                    rapisan.CanUse = false;
                    rapisan.UserGot = false;
                    i = i.AddDays(1);
                    App.DB.Rapisan.Add(rapisan);
                }
                App.DB.SaveChanges();
                NavigationService.GoBack();
            }
        }
    }
}
