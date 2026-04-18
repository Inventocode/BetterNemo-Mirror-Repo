.class Lcom/codemao/nemo/util/UserLevelupHelper$6;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserLevelupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$isVerified:[Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/UserLevelupHelper;[ZLjava/util/concurrent/CountDownLatch;Landroid/content/Context;)V
    .registers 5

    .line 370
    iput-object p2, p0, Lcom/codemao/nemo/util/UserLevelupHelper$6;->val$isVerified:[Z

    iput-object p3, p0, Lcom/codemao/nemo/util/UserLevelupHelper$6;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/codemao/nemo/util/UserLevelupHelper$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 379
    iget-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$6;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 380
    iget-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$6;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$6;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuc(Ljava/lang/Boolean;)V
    .registers 4

    .line 373
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$6;->val$isVerified:[Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 374
    iget-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$6;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 370
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/util/UserLevelupHelper$6;->onSuc(Ljava/lang/Boolean;)V

    return-void
.end method
