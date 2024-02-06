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
using System.Windows.Shapes;
using WorldSkills2024.Models;

namespace WorldSkills2024.Windows
{
    /// <summary>
    /// Логика взаимодействия для DocumentSaw.xaml
    /// </summary>
    public partial class DocumentSaw : Window
    {
        public DocumentSaw(Pacient pacient)
        {
            InitializeComponent();
            DataContext = pacient;
        }
    }
}
