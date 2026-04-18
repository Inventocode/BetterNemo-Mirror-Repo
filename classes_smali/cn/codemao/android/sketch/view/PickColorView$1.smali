.class Lcn/codemao/android/sketch/view/PickColorView$1;
.super Ljava/lang/Object;
.source "PickColorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/PickColorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/PickColorView;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/PickColorView;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcn/codemao/android/sketch/view/PickColorView$1;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 94
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 97
    :cond_7
    iget-object p1, p0, Lcn/codemao/android/sketch/view/PickColorView$1;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/PickColorView;->access$000(Lcn/codemao/android/sketch/view/PickColorView;)Lcn/codemao/android/sketch/view/PickColorView$PickColorAction;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 98
    iget-object p1, p0, Lcn/codemao/android/sketch/view/PickColorView$1;->this$0:Lcn/codemao/android/sketch/view/PickColorView;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/PickColorView;->access$000(Lcn/codemao/android/sketch/view/PickColorView;)Lcn/codemao/android/sketch/view/PickColorView$PickColorAction;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/PickColorView$PickColorAction;->onClickStraw()V

    :cond_18
    return-void
.end method
