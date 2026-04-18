.class Lcn/codemao/android/sketch/view/menu/OperateMenu$1;
.super Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;
.source "OperateMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/menu/OperateMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/menu/OperateMenu;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$1;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-direct {p0}, Lcn/codemao/android/sketch/view/VerticalSeekBar$SlideChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStop(Lcn/codemao/android/sketch/view/VerticalSeekBar;I)V
    .registers 3

    const/4 p1, 0x4

    if-ge p2, p1, :cond_4

    const/4 p2, 0x4

    .line 108
    :cond_4
    iget-object p1, p0, Lcn/codemao/android/sketch/view/menu/OperateMenu$1;->this$0:Lcn/codemao/android/sketch/view/menu/OperateMenu;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/menu/OperateMenu;->access$000(Lcn/codemao/android/sketch/view/menu/OperateMenu;)Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1, p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->changePaineWidth(I)V

    return-void
.end method
