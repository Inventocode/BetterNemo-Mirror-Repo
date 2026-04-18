.class Lcn/codemao/android/sketch/view/dialog/CutHelperView$2;
.super Ljava/lang/Object;
.source "CutHelperView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/view/dialog/CutHelperView;->playVideo(I)V
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

    .line 94
    iput-object p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$2;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 97
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$2;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->access$000(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 98
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$2;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->access$000(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->suspend()V

    .line 101
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$2;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->access$000(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 103
    iget-object p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$2;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-static {p1}, Lcn/codemao/android/sketch/view/dialog/CutHelperView;->access$000(Lcn/codemao/android/sketch/view/dialog/CutHelperView;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    const/4 p1, 0x1

    return p1
.end method
