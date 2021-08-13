using MicroDo.ShopManager.Common;
using MicroDo.ShopManager.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace MicroDo.ShopManager.ViewModel
{
    public class MainViewModel : NotifyBase
    {
        // public UserModel UserInfo { get; set; }

        // private string _searchText;

        //public string SearchText
        //{
        //    get { return _searchText; }
        //    set { this._searchText = value; this.DoNotify(); }
        //}

        private FrameworkElement _mainContent;
        private Window mainView;

        public FrameworkElement MainContent
        {
            get { return _mainContent; }
            set { this._mainContent = value; this.DoNotify(); }
        }

        // 切换命令
        public CommandBase NavChangeCommand { get; set; }

        public MainViewModel()
        {
            this.NavChangeCommand = new CommandBase();
            this.NavChangeCommand.DoExecute = new Action<object>(DoNavChanged);
            // 按钮是否可用
            this.NavChangeCommand.DoCanExecute = new Func<object, bool>((o) => true);
            // 自动展示首页
            this.DoNavChanged("FirstPageView");
        }

        public MainViewModel(Window mainView)
        {
            this.mainView = mainView;
            this.NavChangeCommand = new CommandBase();
            this.NavChangeCommand.DoExecute = new Action<object>(DoNavChanged);
            // 按钮是否可用
            this.NavChangeCommand.DoCanExecute = new Func<object, bool>((o) => true);
            // 自动展示首页
            this.DoNavChanged("FirstPageView");
        }

        private void DoNavChanged(object obj)
        {
            // 反射取得XAML中传入的参数
            // 通过参数拿到对象，将对象设置到MainContent上面
            // 同一个程序集，可以直接取
            Type type = Type.GetType("MicroDo.ShopManager.View." + obj.ToString());
            if (!obj.ToString().Equals("FirstPageView"))
            {
                ConstructorInfo cti = type.GetConstructor(System.Type.EmptyTypes);
                this.MainContent = (FrameworkElement)cti.Invoke(null);
            }
            else
            {
                Type[] types = new Type[1];
                types[0] = typeof(MainViewModel);
                object[] param = new object[1];
                param[0] = this;
                ConstructorInfo cti = type.GetConstructor(types);
                this.MainContent = (FrameworkElement)cti.Invoke(param);
            }



        }
    }
}
