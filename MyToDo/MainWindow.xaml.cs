using MyToDo.Model;
using Newtonsoft.Json;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace MyToDo
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private ObservableCollection<ToDo> todoList = new System.Collections.ObjectModel.ObservableCollection<ToDo>();
        private string _fileName = "todos.json";

        public MainWindow()
        {
            InitializeComponent();
            listboxToDos.ItemsSource = todoList;
            Fill();
        }

        private void Move_Window(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }

        private void buttonMinimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void buttonClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void textboxList_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                Write();
            }
        }

        private void checkBox_Changed(object sender, RoutedEventArgs e)
        {
            Write();
        }

        private void buttonAdd_Click(object sender, RoutedEventArgs e)
        {
            textboxInput.Text = "";
            textboxInput.Visibility = Visibility.Visible;
            textboxInput.Focus();
        }

        private void buttonRemove_Click(object sender, RoutedEventArgs e)
        {
            if (todoList.Count == 0)
                return;

            int index = listboxToDos.SelectedIndex;
            todoList.RemoveAt(index);

            index--;
            listboxToDos.SelectedIndex = index;
            listboxToDos.Focus();

            Write();
        }

        private void buttonSave_Click(object sender, RoutedEventArgs e)
        {
            Write();
        }

        private void textboxInput_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                int id = 0;

                if (todoList.Count > 0)
                    id = todoList.Max(p => p.ID) + 1;

                todoList.Add(new ToDo() { ID = id, Content = textboxInput.Text, IsDone = false });
                textboxInput.Visibility = Visibility.Hidden;

                Write();
            }
            if (e.Key == Key.Escape)
                textboxInput.Visibility = Visibility.Hidden;
        }

        private void listboxToDos_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int id = 0;

            if (todoList.Count > 0)
                id = todoList.Max(p => p.ID) + 1;

            todoList.Add(new ToDo() { ID = id, Content = textboxInput.Text, IsDone = false });
            textboxInput.Visibility = Visibility.Hidden;
        }

        private void Fill()
        {
            if (!File.Exists(_fileName))
                return;

            var jsonData = File.ReadAllText(_fileName);
            todoList = JsonConvert.DeserializeObject<ObservableCollection<ToDo>>(jsonData);

            listboxToDos.ItemsSource = todoList;
            listboxToDos.Focus();
        }

        private void Write()
        {
            JsonSerializer serializer = new JsonSerializer();
            serializer.Formatting = Formatting.Indented;

            using (StreamWriter sw = new StreamWriter(_fileName))
            using (JsonWriter writer = new JsonTextWriter(sw))
            {
                serializer.Serialize(writer, todoList);
            }
        }

    }
}
