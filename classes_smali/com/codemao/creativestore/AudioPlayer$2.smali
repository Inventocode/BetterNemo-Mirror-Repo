.class Lcom/codemao/creativestore/AudioPlayer$2;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/AudioPlayer;->addPlayAction(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/AudioPlayer;

.field final synthetic val$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/AudioPlayer;Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4

    .line 90
    iput-object p1, p0, Lcom/codemao/creativestore/AudioPlayer$2;->this$0:Lcom/codemao/creativestore/AudioPlayer;

    iput-object p2, p0, Lcom/codemao/creativestore/AudioPlayer$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativestore/AudioPlayer$2;->val$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 93
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 94
    new-instance v1, Lcom/codemao/creativestore/AudioPlayer$AudioBean;

    iget-object v2, p0, Lcom/codemao/creativestore/AudioPlayer$2;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/codemao/creativestore/AudioPlayer$2;->val$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {v1, v2, v0, v3}, Lcom/codemao/creativestore/AudioPlayer$AudioBean;-><init>(Ljava/lang/String;Landroid/media/MediaPlayer;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    .line 95
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer$2;->this$0:Lcom/codemao/creativestore/AudioPlayer;

    invoke-static {v0}, Lcom/codemao/creativestore/AudioPlayer;->access$300(Lcom/codemao/creativestore/AudioPlayer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer$2;->this$0:Lcom/codemao/creativestore/AudioPlayer;

    invoke-static {v0, v1}, Lcom/codemao/creativestore/AudioPlayer;->access$400(Lcom/codemao/creativestore/AudioPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V

    return-void
.end method
