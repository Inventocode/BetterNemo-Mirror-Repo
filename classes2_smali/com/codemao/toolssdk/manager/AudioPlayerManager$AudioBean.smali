.class public Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;
.super Ljava/lang/Object;
.source "AudioPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/manager/AudioPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioBean"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

.field public player:Lcom/codemao/toolssdk/func/IMediaPlayer;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/codemao/toolssdk/func/IMediaPlayer;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 5

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->id:Ljava/lang/String;

    .line 475
    iput-object p2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->url:Ljava/lang/String;

    .line 476
    iput-object p3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->player:Lcom/codemao/toolssdk/func/IMediaPlayer;

    .line 477
    iput-object p4, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->listener:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    return-void
.end method


# virtual methods
.method public noNullId()Ljava/lang/String;
    .registers 2

    .line 481
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;->id:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method
