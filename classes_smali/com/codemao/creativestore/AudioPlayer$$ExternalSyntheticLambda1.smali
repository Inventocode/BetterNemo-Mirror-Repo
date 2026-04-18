.class public final synthetic Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/creativestore/AudioPlayer;

.field public final synthetic f$1:Landroid/media/MediaPlayer;

.field public final synthetic f$2:Lcom/codemao/creativestore/AudioPlayer$AudioBean;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/creativestore/AudioPlayer;Landroid/media/MediaPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/creativestore/AudioPlayer;

    iput-object p2, p0, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda1;->f$2:Lcom/codemao/creativestore/AudioPlayer$AudioBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/creativestore/AudioPlayer;

    iget-object v1, p0, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/codemao/creativestore/AudioPlayer$$ExternalSyntheticLambda1;->f$2:Lcom/codemao/creativestore/AudioPlayer$AudioBean;

    invoke-static {v0, v1, v2}, Lcom/codemao/creativestore/AudioPlayer;->$r8$lambda$ud3ZULUMrSXMW2OqBK_1iWzMIOQ(Lcom/codemao/creativestore/AudioPlayer;Landroid/media/MediaPlayer;Lcom/codemao/creativestore/AudioPlayer$AudioBean;)V

    return-void
.end method
