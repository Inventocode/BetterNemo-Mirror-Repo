.class public final synthetic Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda14;->f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda14;->f$2:[Z

    iput-object p4, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda14;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda14;->f$0:Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda14;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda14;->f$2:[Z

    iget-object v3, p0, Lcom/codemao/toolssdk/manager/AudioPlayerManager$$ExternalSyntheticLambda14;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->$r8$lambda$2W293ll8jcaRfOkKi0jd3FZfMjQ(Lcom/codemao/toolssdk/manager/AudioPlayerManager;Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
