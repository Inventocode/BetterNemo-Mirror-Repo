.class Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$3;
.super Ljava/lang/Object;
.source "NewbeeGoCreatePop.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->playVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)V
    .registers 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 133
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method
