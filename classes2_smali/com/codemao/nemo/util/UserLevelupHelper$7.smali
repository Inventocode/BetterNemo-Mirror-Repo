.class Lcom/codemao/nemo/util/UserLevelupHelper$7;
.super Ljava/lang/Object;
.source "UserLevelupHelper.java"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$isAnswerFriendlyProtocol:[Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/UserLevelupHelper;[ZLjava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 389
    iput-object p2, p0, Lcom/codemao/nemo/util/UserLevelupHelper$7;->val$isAnswerFriendlyProtocol:[Z

    iput-object p3, p0, Lcom/codemao/nemo/util/UserLevelupHelper$7;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public answerFriendlyProtocolStatus(Z)V
    .registers 4

    .line 392
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$7;->val$isAnswerFriendlyProtocol:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 393
    iget-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$7;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onError()V
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$7;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
