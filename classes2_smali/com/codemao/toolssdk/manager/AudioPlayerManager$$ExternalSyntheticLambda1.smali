.class public final synthetic Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/codemao/toolssdk/func/ToolsMediaPlayer$ToolsMediaPlayerListener;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

.field public final synthetic f$1:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

.field public final synthetic f$2:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

.field public final synthetic f$3:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;->f$1:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;->f$2:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    iput-object p4, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;->f$3:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    iput-object p5, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onStateChange(ILjava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;->f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;->f$1:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;->f$2:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;

    iget-object v3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;->f$3:Lcom/codemao/toolssdk/func/ToolsMediaPlayer;

    iget-object v4, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    move v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->$r8$lambda$yKWh_CL30Su2ktkRWE2pM2hpdu0(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioBean;Lcom/codemao/toolssdk/func/ToolsMediaPlayer;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
