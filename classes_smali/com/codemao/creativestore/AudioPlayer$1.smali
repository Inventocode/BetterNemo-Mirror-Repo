.class Lcom/codemao/creativestore/AudioPlayer$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/AudioPlayer;->addStopAction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/AudioPlayer;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/AudioPlayer;Ljava/lang/String;)V
    .registers 3

    .line 75
    iput-object p1, p0, Lcom/codemao/creativestore/AudioPlayer$1;->this$0:Lcom/codemao/creativestore/AudioPlayer;

    iput-object p2, p0, Lcom/codemao/creativestore/AudioPlayer$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer$1;->this$0:Lcom/codemao/creativestore/AudioPlayer;

    iget-object v1, p0, Lcom/codemao/creativestore/AudioPlayer$1;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/codemao/creativestore/AudioPlayer;->access$200(Lcom/codemao/creativestore/AudioPlayer;Ljava/lang/String;)V

    return-void
.end method
