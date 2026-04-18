.class Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;
.super Ljava/lang/Thread;
.source "AudioPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/manager/AudioPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioThread"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 42
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 43
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 44
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 46
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioThread;->handler:Landroid/os/Handler;

    .line 48
    :cond_13
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
