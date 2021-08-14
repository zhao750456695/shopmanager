using MicroDo.ShopManager.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace MicroDo.ShopManager.ViewModel.goodsmanager
{
    public class GoodsManagerViewModel : NotifyBase
    {
        public CommandBase NavChangeCommand { get; set; }
        private FrameworkElement _mainContent;

        public FrameworkElement MainContent
        {
            get { return _mainContent; }
            set { this._mainContent = value; this.DoNotify(); }
        }

        public GoodsManagerViewModel()
        {
            this.NavChangeCommand = new CommandBase();
            this.NavChangeCommand.DoExecute = new Action<object>(DoNavChanged);
            // 按钮是否可用
            this.NavChangeCommand.DoCanExecute = new Func<object, bool>((o) => true);
            // 自动展示首页
            this.DoNavChanged("GoodsInfoView");
        }

        private void DoNavChanged(object obj)
        {
            // 反射取得XAML中传入的参数
            // 通过参数拿到对象，将对象设置到MainContent上面
            // 同一个程序集，可以直接取
            Type type = Type.GetType("MicroDo.ShopManager.View.goodmanager." + obj.ToString());
            ConstructorInfo cti = type.GetConstructor(System.Type.EmptyTypes);
            this.MainContent = (FrameworkElement)cti.Invoke(null);
        }
    }
}
