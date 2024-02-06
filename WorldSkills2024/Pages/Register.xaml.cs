using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
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
    /// Логика взаимодействия для Register.xaml
    /// </summary>
    public partial class Register : Page
    {
        Pacient contextUser;
        public Register(Pacient pacient)
        {
            InitializeComponent();
            List<string> itemss = new List<string>() { "Мужской", "Женский"};
            Pol.ItemsSource = itemss;
            contextUser = pacient;
            if (contextUser == null)
            {
                contextUser = new Pacient();
                GotQrCode.Visibility = Visibility.Collapsed;
            }
            DataContext = contextUser;
        }

        private void Reg_Click(object sender, RoutedEventArgs e)
        {
            if (Pol.SelectedValue != null & contextUser.Name != null & contextUser.Subname != null
                & contextUser.Otechestvo != null & contextUser.Adress != null & contextUser.Phone != null
                & contextUser.Mail != null & contextUser.Polis != null & DateBorn.SelectedDate != null
                & contextUser.DateEnd != null)
            {
                if (contextUser.Id == 0) {
                    App.DB.Pacient.Add(contextUser);
                }
                App.DB.SaveChanges();
                NavigationService.Navigate(new Main());
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

        private void GotPhoto_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new OpenFileDialog() {Filter = ".png, .jpg, .jpeg | *.png; *.jpg; *.jpeg" };
            if (dialog.ShowDialog().GetValueOrDefault())
            {
                contextUser.Photo = File.ReadAllBytes(dialog.FileName);
                DataContext = null;
                DataContext = contextUser;
            }
        }

        private void GotQrCode_Click(object sender, RoutedEventArgs e)
        {
            var window = new QrCode(contextUser.Id.ToString());
            window.ShowDialog();
        }

        private void SaveDocumentMed_Click(object sender, RoutedEventArgs e)
        {
            if (contextUser.DocumentSogl != null)
            {
                var window = new DocumentSaw(contextUser);
                window.ShowDialog();
            }
            else
            {
                var window = new DocumentSogl(contextUser);
                var result = window.ShowDialog();
                if (result == true)
                {
                    MemoryStream memStream = new MemoryStream();
                    JpegBitmapEncoder encoder = new JpegBitmapEncoder();
                    encoder.Frames.Add(BitmapFrame.Create(App.imageBit));
                    encoder.Save(memStream);
                    contextUser.DocumentSogl = memStream.ToArray();
                }
            }
        }
    }
}
