using Microsoft.Win32;
using QRCoder;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices.ComTypes;
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
using WorldSkills2024.Models;
using static System.Net.Mime.MediaTypeNames;

namespace WorldSkills2024.Windows
{
    /// <summary>
    /// Логика взаимодействия для DocumentSogl.xaml
    /// </summary>
    public partial class DocumentSogl : Window
    {
        Pacient contextUser;
        public DocumentSogl(Pacient user)
        {
            InitializeComponent();
            contextUser = user;
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new PrintDialog();
            if (dialog.ShowDialog().GetValueOrDefault())
            {
                dialog.PrintVisual(PrintDrig, "");
            }
        }
    }
}
