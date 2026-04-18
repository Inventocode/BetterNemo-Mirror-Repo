.class Lcn/codemao/android/sketch/view/CircleColorView$1;
.super Landroid/os/Handler;
.source "CircleColorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/CircleColorView;->setAutoDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/CircleColorView;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/CircleColorView;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcn/codemao/android/sketch/view/CircleColorView$1;->this$0:Lcn/codemao/android/sketch/view/CircleColorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 88
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 90
    iget-object p1, p0, Lcn/codemao/android/sketch/view/CircleColorView$1;->this$0:Lcn/codemao/android/sketch/view/CircleColorView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
