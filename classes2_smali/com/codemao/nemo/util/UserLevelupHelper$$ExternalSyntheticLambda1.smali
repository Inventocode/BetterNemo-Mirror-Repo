.class public final synthetic Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;[Z[ZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda1;->f$1:[Z

    iput-object p3, p0, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda1;->f$2:[Z

    iput-object p4, p0, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda1;->f$3:Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda1;->f$1:[Z

    iget-object v2, p0, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda1;->f$2:[Z

    iget-object v3, p0, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda1;->f$3:Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/nemo/util/UserLevelupHelper;->$r8$lambda$cOJ_EQQC2JaO6KCxnBLzRBB6jIg(Ljava/util/concurrent/CountDownLatch;[Z[ZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    return-void
.end method
