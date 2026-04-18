.class Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$3;
.super Ljava/lang/Object;
.source "FullScreenHelperCenter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->playVideo(Landroid/view/View;Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 205
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->access$100(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->stopPlayback()V

    const/4 p1, 0x1

    return p1
.end method
