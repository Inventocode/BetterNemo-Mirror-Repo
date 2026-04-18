.class public final synthetic Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaPlayer$OnCompletionListener;

.field public final synthetic f$1:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaPlayer$OnCompletionListener;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaPlayer;

    invoke-static {v0, v1, p1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->$r8$lambda$q_LuURKSqIk-Yzw_KX6xSTawXpo(Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    return-void
.end method
