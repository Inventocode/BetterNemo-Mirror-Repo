.class public final Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;
.super Ljava/lang/Thread;
.source "CTAudioPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioThread"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .registers 3

    .line 66
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 67
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 68
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$AudioThread;->handler:Landroid/os/Handler;

    .line 72
    :cond_13
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
