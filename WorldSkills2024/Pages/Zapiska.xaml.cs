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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WorldSkills2024.Models;

namespace WorldSkills2024.Pages
{
    /// <summary>
    /// Логика взаимодействия для Zapiska.xaml
    /// </summary>
    public partial class Zapiska : Page
    {
        Zapic zapic;
        public Zapiska(Zapic zapicc)
        {
            InitializeComponent();
            zapic = zapicc;
            ComboPacient.ItemsSource = App.DB.Pacient.ToList();
            ComboDoctor.ItemsSource = App.DB.Doctors.ToList();
            if (zapic == null)
            {
                zapic = new Zapic();
                zapic.Predvar = true;
            }
            else
            {
                ComboPacient.SelectedItem = zapic.Pacient;
                ComboDoctor.SelectedItem = App.DB.Doctors.FirstOrDefault(x => x.Id == 
                App.DB.Rapisan.FirstOrDefault(y => y.Id == zapic.RaspisanId).DoctorId);

                Rapisan rapisan = App.DB.Rapisan.FirstOrDefault(x => x.Id == zapic.RaspisanId);
                rapisan.UserGot = false;
                App.DB.SaveChanges();

                int doctorId = (ComboDoctor.SelectedItem as Doctors).Id;
                ComboTime.ItemsSource = App.DB.Rapisan.Where(x => x.DoctorId == doctorId && x.UserGot == false 
                && x.Date == DatePas.SelectedDate && x.CanUse == true).ToList();
                ComboTime.SelectedItem = zapic.Rapisan;
            }
            DataContext = zapic;
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            if (ComboPacient.SelectedIndex != -1 
                && ComboDoctor.SelectedIndex != -1
                && ComboTime.SelectedIndex != -1)
            {
                if (zapic.Id == 0)
                {
                    App.DB.Zapic.Add(zapic);
                }

                zapic.Pacient = ComboPacient.SelectedItem as Pacient;
                int doctorId = (ComboDoctor.SelectedItem as Doctors).Id;

                var rasps = App.DB.Rapisan.Where(x => x.Id == -1).ToList();
                foreach (Rapisan rapisan1 in App.DB.Rapisan)
                {
                    if (rapisan1.Time.ToString() == ComboTime.Text)
                    {
                        rasps.Add(rapisan1);
                    }
                }

                zapic.RaspisanId = rasps.FirstOrDefault(x => x.DoctorId == doctorId && x.Date == DatePas.SelectedDate).Id;
                Rapisan rapisan = App.DB.Rapisan.FirstOrDefault(x => x.Id == zapic.RaspisanId);
                rapisan.UserGot = true;
                App.DB.SaveChanges();
                NavigationService.GoBack();
            }
            else
            {
                MessageBox.Show("error");
            }
        }

        private void ComboDoctor_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (DatePas.SelectedDate != null)
            {
                int doctorId = (ComboDoctor.SelectedItem as Doctors).Id;
                var TimeList = App.DB.Rapisan.Where(x => x.DoctorId == doctorId
                && x.UserGot == false && x.Date == DatePas.SelectedDate && x.CanUse == true).ToList();
                ComboTime.ItemsSource = TimeList;
            }
        }

        private void DatePicker_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            if (ComboDoctor.SelectedIndex != -1)
            {
                int doctorId = (ComboDoctor.SelectedItem as Doctors).Id;
                var TimeList = App.DB.Rapisan.Where(x => x.DoctorId == doctorId 
                && x.UserGot == false && x.Date == DatePas.SelectedDate && x.CanUse == true).ToList();
                ComboTime.ItemsSource = TimeList;
            }
        }
    }
}
