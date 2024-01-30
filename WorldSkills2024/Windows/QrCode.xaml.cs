using MessagingToolkit.QRCode.Codec;
using Microsoft.Win32;
using QRCoder;
using System;
using System.Collections.Generic;
using System.Drawing;
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
using System.Windows.Shapes;

namespace WorldSkills2024.Windows
{
    /// <summary>
    /// Логика взаимодействия для QrCode.xaml
    /// </summary>
    public partial class QrCode : Window
    {
        public QrCode(String id)
        {
            InitializeComponent();
            string soucer_xl = id;
            QRCodeEncoder ecorder = new QRCodeEncoder();
            Bitmap bitmap = ecorder.Encode(soucer_xl);
            using (MemoryStream ms = new MemoryStream())
            {
                bitmap.Save(ms, System.Drawing.Imaging.ImageFormat.Bmp);
                ms.Position = 0;
                BitmapImage bitmapImage = new BitmapImage();
                bitmapImage.BeginInit();
                bitmapImage.StreamSource = ms;
                bitmapImage.CacheOption = BitmapCacheOption.OnLoad;
                bitmapImage.EndInit();
                IQr.Source = bitmapImage;
            }
        }

        private void Printt_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new SaveFileDialog() { Filter = ".png, .jpg, .jpeg | *.png; *.jpg; *.jpeg" };
            if (dialog.ShowDialog().GetValueOrDefault())
            {
                var file = File.Create(dialog.FileName);
                file.Close();
                BitmapSource bitmapSource = (BitmapSource)IQr.Source;
                JpegBitmapEncoder encoder = new JpegBitmapEncoder();
                encoder.Frames.Add(BitmapFrame.Create(bitmapSource));
                using (MemoryStream ms = new MemoryStream())
                {
                    encoder.Save(ms);
                    File.WriteAllBytes(dialog.FileName, ms.ToArray());
                }
            }
        }
    }
}
