.class Lcn/codemao/android/sketch/view/dialog/CutHelperView$4;
.super Ljava/lang/Object;
.source "CutHelperView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/dialog/CutHelperView;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$4;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 142
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "BBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 143
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$4;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->access$300(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Lcn/codemao/android/sketch/view/BlurringView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 145
    :cond_13
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$4;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-static {v0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->access$000(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$4;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->access$400(Lcn/codemao/android/sketch/view/dialog/CutHelperView;I)V

    return-void
.end method
