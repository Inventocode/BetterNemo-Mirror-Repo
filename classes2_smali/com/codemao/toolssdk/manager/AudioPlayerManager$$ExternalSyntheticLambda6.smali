.class public final synthetic Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda6;->f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda6;->f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;

    invoke-static {v0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->$r8$lambda$PR99RWLju7SKyOY9dAraIFptsuQ(Lcom/codemao/toolssdk/manager/AudioPlayerManager$AudioPlayCompleteListener;)V

    return-void
.end method
