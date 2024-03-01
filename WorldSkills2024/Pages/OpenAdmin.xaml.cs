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
    /// Логика взаимодействия для OpenAdmin.xaml
    /// </summary>
    public partial class OpenAdmin : Page
    {
        Doctors doctor;
        public OpenAdmin()
        {
            InitializeComponent();
            doctor = new Doctors();
            DataContext = doctor;
        }

        private void Poisk_Click(object sender, RoutedEventArgs e)
        {
            Doctors doctorr = App.DB.Doctors.FirstOrDefault(x => x.Surname == Name.Text);
            if (doctorr != null)
            {
                if (doctorr.OtdelId < 10)
                {
                    NavigationService.Navigate(new MainOkno());
                }
                else
                {
                    if (doctorr.OtdelId == 10)
                    {
                        NavigationService.Navigate(new MainAdmin());
                    }
                    else
                    {
                        if (doctorr.OtdelId == 11)
                        {
                            NavigationService.Navigate(new OknoRegister());
                        }
                        else
                        {
                            NavigationService.Navigate(new GlavDoctor());
                        }
                    }
                }
            }
            else
            {
                MessageBox.Show("Error");
            }
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
