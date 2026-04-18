.class Lcom/codemao/creativestore/AudioPlayer$AudioThread;
.super Ljava/lang/Thread;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/creativestore/AudioPlayer$1;)V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/codemao/creativestore/AudioPlayer$AudioThread;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativestore/AudioPlayer$AudioThread;)Landroid/os/Handler;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/codemao/creativestore/AudioPlayer$AudioThread;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 58
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 59
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/codemao/creativestore/AudioPlayer$AudioThread;->handler:Landroid/os/Handler;

    .line 62
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
