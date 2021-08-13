using MicroDo.ShopManager.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
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

namespace MicroDo.ShopManager.View
{
    /// <summary>
    /// FirstPageView.xaml 的交互逻辑
    /// </summary>
    public partial class FirstPageView : UserControl
    {
        public FirstPageView()
        {
            InitializeComponent();
        }

        private MainViewModel model;

        public FirstPageView(MainViewModel model)
        {
            InitializeComponent();
            this.model = model;
        }

        // 商品信息
        private void goodsInfoBtn_click(object sender, RoutedEventArgs e)
        {
            Window w = ((ContentControl)this.Parent).Parent as Window;
            Type type = Type.GetType("MicroDo.ShopManager.View.GoodsManager");
            ConstructorInfo cti = type.GetConstructor(System.Type.EmptyTypes);
            this.model.MainContent = (FrameworkElement)cti.Invoke(null);
        }
    }
}
