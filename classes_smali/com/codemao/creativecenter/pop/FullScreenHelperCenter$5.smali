.class Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$5;
.super Ljava/lang/Object;
.source "FullScreenHelperCenter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->playVideo(Landroid/view/View;Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V
    .registers 2

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 221
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method
