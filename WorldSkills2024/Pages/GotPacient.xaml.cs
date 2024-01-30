using MessagingToolkit.QRCode.Codec;
using MessagingToolkit.QRCode.Codec.Data;
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

namespace WorldSkills2024.Pages
{
    /// <summary>
    /// Логика взаимодействия для GotPacient.xaml
    /// </summary>
    public partial class GotPacient : Page
    {
        Boolean CanGos;
        public GotPacient(Boolean Gos)
        {
            InitializeComponent();
            CanGos = Gos;
        }

        private void Ok_Click(object sender, RoutedEventArgs e)
        {
            Pacient pacient = App.DB.Pacient.FirstOrDefault(x => x.Id.ToString() == GotName.Text);
            if (pacient != null)
            {
                if (CanGos)
                {
                    NavigationService.Navigate(new NewPlaces(pacient));
                }
                else
                {
                    NavigationService.Navigate(new Register(pacient));
                }
            }
            else
            {
                MessageBox.Show("Такого пациена нет!");
            }
        }

        private void No_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void QtOk_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new OpenFileDialog() { Filter = ".png, .jpg, .jpeg | *.png; *.jpg; .jpeg" };
            if (dialog.ShowDialog().GetValueOrDefault())
            {
                try
                {
                    var imageBytes = File.ReadAllBytes(dialog.FileName);
                    using (MemoryStream ms = new MemoryStream(imageBytes))
                    {
                        var imageBitmap = new BitmapImage();
                        imageBitmap.BeginInit();
                        imageBitmap.StreamSource = ms;
                        imageBitmap.CacheOption = BitmapCacheOption.OnLoad;
                        imageBitmap.EndInit();

                        using (MemoryStream memoryStream = new MemoryStream(imageBytes))
                        {
                            var bitmap = new System.Drawing.Bitmap(memoryStream);
                            QRCodeDecoder decoder = new QRCodeDecoder();
                            String id = decoder.Decode(new QRCodeBitmapImage(bitmap));
                            Pacient pacient = App.DB.Pacient.FirstOrDefault(x => x.Id.ToString() == id);
                            if (pacient != null)
                            {
                                NavigationService.Navigate(new Register(pacient));
                            }
                            else
                            {
                                MessageBox.Show("Такого пациена нет!");
                            }
                        }
                    }

                }
                catch (Exception ex) {

                }
            }
        }
    }
}
