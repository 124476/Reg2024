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
    /// Логика взаимодействия для OknoRegister.xaml
    /// </summary>
    public partial class OknoRegister : Page
    {
        public OknoRegister()
        {
            InitializeComponent();
        }

        private void RedactDoc_Click(object sender, RoutedEventArgs e)
        {
            Zapic zapicka = ZapickaData.SelectedItem as Zapic;
            if (zapicka != null)
            {
                NavigationService.Navigate(new Zapiska(zapicka));
            }
            else
            {
                MessageBox.Show("error");
            }
        }

        private void NewDoc_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Zapiska(null));
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            ZapickaData.ItemsSource = App.DB.Zapic.ToList();
        }

        private void DelDoc_Click(object sender, RoutedEventArgs e)
        {
            Zapic zapicka = ZapickaData.SelectedItem as Zapic;
            if (zapicka != null)
            {
                App.DB.Zapic.Remove(zapicka);
                App.DB.SaveChanges();
                ZapickaData.ItemsSource = App.DB.Zapic.ToList();
            }
            else
            {
                MessageBox.Show("error");
            }
        }
    }
}
