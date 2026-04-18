.class public final synthetic Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativestore/AudioPlayer;

.field public final synthetic f$1:Lcom/codemao/creativestore/AudioPlayer$AudioBean;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativestore/AudioPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativestore/AudioPlayer;

    iput-object p2, p0, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/creativestore/AudioPlayer$AudioBean;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/creativestore/AudioPlayer;

    iget-object v1, p0, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda0;->f$1:Lcom/codemao/creativestore/AudioPlayer$AudioBean;

    invoke-static {v0, v1, p1}, Lcom/codemao/creativestore/AudioPlayer;->$r8$lambda$MwQhLJwIcxcF9hSzxq9qXRuwb9w(Lcom/codemao/creativestore/AudioPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;Landroid/media/MediaPlayer;)V

    return-void
.end method
