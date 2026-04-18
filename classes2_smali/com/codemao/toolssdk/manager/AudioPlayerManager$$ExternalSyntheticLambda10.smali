.class public final synthetic Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;->f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;->f$4:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;->f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda10;->f$4:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->$r8$lambda$w3LMl2PIUf79Ap8GP-rdKkzKQiM(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    return-void
.end method
