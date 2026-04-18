.class Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;
.super Ljava/lang/Object;
.source "CutHelperView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 108
    iput-object p1, p0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;->this$0:Lcn/codemao/android/sketch/view/dialog/CutHelperView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 111
    new-instance v0, Lcn/codemao/android/sketch/view/dialog/CutHelperView$3$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/dialog/CutHelperView$3$1;-><init>(Lcn/codemao/android/sketch/view/dialog/CutHelperView$3;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method
