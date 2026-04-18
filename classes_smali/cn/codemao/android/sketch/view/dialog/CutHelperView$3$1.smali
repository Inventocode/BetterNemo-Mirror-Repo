.class Lcn/codemao/android/sketch/view/dialog/CutHelperView$3$1;
.super Ljava/lang/Object;
.source "CutHelperView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$3$1;->this$1:Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1b

    .line 115
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$3$1;->this$1:Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;

    iget-object p1, p1, Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->access$100(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$3$1;->this$1:Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;

    iget-object p1, p1, Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->access$200(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1b
    const/4 p1, 0x1

    return p1
.end method
