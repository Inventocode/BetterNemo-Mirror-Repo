.class Lcn/codemao/android/sketch/view/menu/ColorMenu$3;
.super Ljava/lang/Object;
.source "ColorMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/menu/ColorMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/menu/ColorMenu;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$3;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 132
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 136
    :cond_7
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$3;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->access$300(Lcn/codemao/android/sketch/view/menu/ColorMenu;)Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->conformFigureEditList()V

    .line 138
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$3;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->access$400(Lcn/codemao/android/sketch/view/menu/ColorMenu;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 139
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$3;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->getColorPop()Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 140
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/ColorMenu$3;->this$0:Lcn/codemao/android/sketch/view/menu/ColorMenu;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/menu/ColorMenu;->getColorPop()Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2d
    return-void
.end method
