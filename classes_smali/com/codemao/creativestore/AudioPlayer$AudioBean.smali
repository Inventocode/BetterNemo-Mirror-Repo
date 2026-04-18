.class public Lcom/codemao/creativestore/AudioPlayer$AudioBean;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioBean"
.end annotation


# instance fields
.field public handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

.field public player:Landroid/media/MediaPlayer;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/media/MediaPlayer;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->url:Ljava/lang/String;

    .line 300
    iput-object p2, p0, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->player:Landroid/media/MediaPlayer;

    .line 301
    iput-object p3, p0, Lcom/codemao/creativestore/AudioPlayer$AudioBean;->handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    return-void
.end method
