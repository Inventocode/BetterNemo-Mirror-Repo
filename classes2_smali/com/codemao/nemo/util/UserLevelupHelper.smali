.class public Lcom/codemao/nemo/util/UserLevelupHelper;
.super Ljava/lang/Object;
.source "UserLevelupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/UserLevelupHelper$SingletonInner;,
        Lcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;,
        Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;,
        Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;
    }
.end annotation


# instance fields
.field public authorLevelDess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public authorLevelDetailTops:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public authorLevelNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public authorLevelSignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public consumLevelNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public consumeLevelFrameIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private goAgreementPop:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

.field private levelDetailPop:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

.field private levelUpGuidePop:Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;

.field private levelUpPop:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

.field private mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field private timerService_:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static synthetic $r8$lambda$OkxaeB3kF5kRuABX4gjmEvqq2Qc([Z[ZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/util/UserLevelupHelper;->lambda$checkUserVerifiedAndFriendlyProtocol$0([Z[ZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZeRwd2qB2eXLeRASXRglRSKUBFQ(Lcom/codemao/nemo/util/UserLevelupHelper;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/util/UserLevelupHelper;->lambda$showNotSignAgreement$2(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cOJ_EQQC2JaO6KCxnBLzRBB6jIg(Ljava/util/concurrent/CountDownLatch;[Z[ZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/util/UserLevelupHelper;->lambda$checkUserVerifiedAndFriendlyProtocol$1(Ljava/util/concurrent/CountDownLatch;[Z[ZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->consumeLevelFrameIds:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->consumeLevelFrameIds:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0804e1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->consumeLevelFrameIds:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0804e3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->consumeLevelFrameIds:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0804e5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelSignIds:Ljava/util/HashMap;

    .line 77
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelSignIds:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelSignIds:Ljava/util/HashMap;

    const v6, 0x7f0804d9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelSignIds:Ljava/util/HashMap;

    const v6, 0x7f0804da

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelSignIds:Ljava/util/HashMap;

    const v6, 0x7f0804db

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelSignIds:Ljava/util/HashMap;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f0804dc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDetailTops:Ljava/util/HashMap;

    .line 84
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDetailTops:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDetailTops:Ljava/util/HashMap;

    const v7, 0x7f0804f9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDetailTops:Ljava/util/HashMap;

    const v7, 0x7f0804fa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDetailTops:Ljava/util/HashMap;

    const v7, 0x7f0804fb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDetailTops:Ljava/util/HashMap;

    const v7, 0x7f0804fc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->consumLevelNames:Ljava/util/HashMap;

    const-string v7, "普通玩家"

    .line 91
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->consumLevelNames:Ljava/util/HashMap;

    const-string v7, "铜牌玩家"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->consumLevelNames:Ljava/util/HashMap;

    const-string v7, "银牌玩家"

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->consumLevelNames:Ljava/util/HashMap;

    const-string v7, "金牌玩家"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelNames:Ljava/util/HashMap;

    const-string v7, "准创作者"

    .line 97
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelNames:Ljava/util/HashMap;

    const-string v7, "积木小白"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelNames:Ljava/util/HashMap;

    const-string v7, "潜力新星"

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelNames:Ljava/util/HashMap;

    const-string v7, "进阶高手"

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelNames:Ljava/util/HashMap;

    const-string v7, "编程大佬"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelNames:Ljava/util/HashMap;

    const-string v7, "源码传说"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDess:Ljava/util/HashMap;

    const-string v7, ""

    .line 105
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDess:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDess:Ljava/util/HashMap;

    const-string v1, "初入源码世界的\n初级训练师"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDess:Ljava/util/HashMap;

    const-string v1, "在源码世界崭露头角的\n中级训练师"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDess:Ljava/util/HashMap;

    const-string v1, "编程技能出神入化的\n高级训练师"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->authorLevelDess:Ljava/util/HashMap;

    const-string v1, "触及源码世界之巅的\n传说训练师"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/util/UserLevelupHelper$1;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Lcom/codemao/nemo/util/UserLevelupHelper;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/codemao/nemo/util/UserLevelupHelper;Lcom/codemao/nemo/dialog/pop/UserLevelupPop;)Lcom/codemao/nemo/dialog/pop/UserLevelupPop;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelUpPop:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    return-object p1
.end method

.method static synthetic access$202(Lcom/codemao/nemo/util/UserLevelupHelper;Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;)Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelDetailPop:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    return-object p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/util/UserLevelupHelper;IIZZ)V
    .registers 5

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/util/UserLevelupHelper;->updateLevel(IIZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/util/UserLevelupHelper;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/codemao/nemo/util/UserLevelupHelper;->hideLoading()V

    return-void
.end method

.method static synthetic access$502(Lcom/codemao/nemo/util/UserLevelupHelper;Lcom/codemao/nemo/dialog/pop/GoAgreementPop;)Lcom/codemao/nemo/dialog/pop/GoAgreementPop;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->goAgreementPop:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    return-object p1
.end method

.method static synthetic access$602(Lcom/codemao/nemo/util/UserLevelupHelper;Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;)Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelUpGuidePop:Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;

    return-object p1
.end method

.method private checkoutUserLevelInfo(Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;Z)V
    .registers 6

    .line 292
    const-class v0, Lcom/codemao/nemo/retrofit/api/UserService;

    if-eqz p2, :cond_15

    .line 293
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/retrofit/api/UserService;

    const-string v0, "PUBLISH"

    .line 294
    invoke-interface {p2, v0}, Lcom/codemao/nemo/retrofit/api/UserService;->getUserLevelInfoPublish(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    goto :goto_23

    .line 296
    :cond_15
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/retrofit/api/UserService;

    .line 297
    invoke-interface {p2}, Lcom/codemao/nemo/retrofit/api/UserService;->getUserLevelInfo()Lio/reactivex/Observable;

    move-result-object p2

    :goto_23
    const-wide/16 v0, 0x1e

    .line 299
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p2

    .line 300
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/codemao/nemo/util/UserLevelupHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/util/UserLevelupHelper$5;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;)V

    .line 301
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;
    .registers 1

    .line 114
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper$SingletonInner;->access$000()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    return-object v0
.end method

.method private hideLoading()V
    .registers 2

    .line 489
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->mDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-eqz v0, :cond_7

    .line 490
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method private isInCreateCenter(Landroid/app/Activity;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 287
    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/activity/NewBcmActivityV2;

    if-nez v1, :cond_18

    instance-of v1, p1, Lcom/codemao/creativecenter/activity/MaterialActivity;

    if-nez v1, :cond_18

    instance-of v1, p1, Lcn/codemao/android/sketch/SketchActivity2;

    if-nez v1, :cond_18

    instance-of v1, p1, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    if-nez v1, :cond_18

    instance-of p1, p1, Lcom/codemao/creativecenter/activity/RecordSoundActivity;

    if-eqz p1, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private isNeedShowUserLevelUp(Landroid/app/Activity;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 277
    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/activity/LoginActivity;

    if-nez v1, :cond_1f

    instance-of v1, p1, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    if-nez v1, :cond_1f

    instance-of v1, p1, Lcom/codemao/nemo/activity/UserInfoSettingActivity;

    if-nez v1, :cond_1f

    invoke-direct {p0, p1}, Lcom/codemao/nemo/util/UserLevelupHelper;->isInCreateCenter(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1f

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x1

    return p1

    :cond_1f
    :goto_1f
    return v0
.end method

.method private static synthetic lambda$checkUserVerifiedAndFriendlyProtocol$0([Z[ZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 408
    aget-boolean p0, p0, v0

    .line 409
    aget-boolean p1, p1, v0

    .line 410
    invoke-interface {p2, p1, p0}, Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;->onSuccess(ZZ)V

    return-void
.end method

.method private static synthetic lambda$checkUserVerifiedAndFriendlyProtocol$1(Ljava/util/concurrent/CountDownLatch;[Z[ZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V
    .registers 7

    const-wide/16 v0, 0x1e

    .line 405
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 407
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p0

    new-instance v0, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda2;-><init>([Z[ZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_26

    .line 413
    :cond_1b
    invoke-interface {p3}, Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;->onError()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    move-exception p0

    .line 417
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    invoke-interface {p3}, Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;->onError()V

    :goto_26
    return-void
.end method

.method private synthetic lambda$showNotSignAgreement$2(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 514
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 516
    :cond_5
    iget-object p1, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->goAgreementPop:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    if-eqz p1, :cond_c

    .line 517
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_c
    return-void
.end method

.method private updateLevel(IIZZ)V
    .registers 16

    if-nez p3, :cond_5

    if-nez p4, :cond_5

    return-void

    .line 192
    :cond_5
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/UserLevelupHelper;->isNeedShowUserLevelUp(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_90

    const/4 v0, 0x1

    if-eqz p3, :cond_51

    .line 194
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p3

    if-eqz p3, :cond_40

    .line 195
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAuthorLevel()I

    move-result p3

    if-gt p1, p3, :cond_3b

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAuthorLevel()I

    move-result p3

    if-ne p3, p1, :cond_40

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAuthor_level_upgrade_hint()I

    move-result p3

    if-eq p3, v0, :cond_40

    .line 197
    :cond_3b
    invoke-static {p1, v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateAuthorLevelInfo(II)V

    const/4 p3, 0x1

    goto :goto_41

    :cond_40
    const/4 p3, 0x0

    .line 200
    :goto_41
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_52

    const-string v2, "AUTHOR"

    .line 201
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/util/UserLevelupHelper;->postLevelupShow(Ljava/lang/String;)V

    goto :goto_52

    :cond_51
    const/4 p3, 0x0

    :cond_52
    :goto_52
    if-eqz p4, :cond_8e

    .line 205
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p4

    if-eqz p4, :cond_7c

    .line 206
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/codemao/nemo/bean/LocalUserInfo;->getConsumeLevel()I

    move-result p4

    if-gt p2, p4, :cond_78

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/codemao/nemo/bean/LocalUserInfo;->getConsumeLevel()I

    move-result p4

    if-ne p4, p2, :cond_7c

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/codemao/nemo/bean/LocalUserInfo;->getConsume_level_upgrade_hint()I

    move-result p4

    if-eq p4, v0, :cond_7c

    .line 208
    :cond_78
    invoke-static {p2, v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateConsumeLevelInfo(II)V

    const/4 v1, 0x1

    .line 211
    :cond_7c
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p4

    invoke-virtual {p4}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p4

    if-eqz p4, :cond_8b

    const-string p4, "CONSUME"

    .line 212
    invoke-virtual {p0, p4}, Lcom/codemao/nemo/util/UserLevelupHelper;->postLevelupShow(Ljava/lang/String;)V

    :cond_8b
    move v7, p3

    move v8, v1

    goto :goto_92

    :cond_8e
    move v7, p3

    goto :goto_91

    :cond_90
    const/4 v7, 0x0

    :goto_91
    const/4 v8, 0x0

    .line 216
    :goto_92
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_ad

    .line 217
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/codemao/nemo/util/UserLevelupHelper;->showLevelUp(Landroid/content/Context;IIIZZLcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;Landroid/view/View$OnClickListener;)V

    :cond_ad
    return-void
.end method


# virtual methods
.method public checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V
    .registers 11

    .line 366
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v2, 0x1

    new-array v3, v2, [Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v4

    new-array v5, v2, [Z

    aput-boolean v4, v5, v4

    if-eqz p2, :cond_13

    const/4 v1, 0x1

    .line 370
    :cond_13
    new-instance p2, Lcom/codemao/nemo/util/UserLevelupHelper$6;

    invoke-direct {p2, p0, v3, v0, p1}, Lcom/codemao/nemo/util/UserLevelupHelper$6;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;[ZLjava/util/concurrent/CountDownLatch;Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-static {p1, v1, p2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->isVerified(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;ILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    .line 389
    new-instance p1, Lcom/codemao/nemo/util/UserLevelupHelper$7;

    invoke-direct {p1, p0, v5, v0}, Lcom/codemao/nemo/util/UserLevelupHelper$7;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;[ZLjava/util/concurrent/CountDownLatch;)V

    .line 401
    invoke-direct {p0, p1, p3}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkoutUserLevelInfo(Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserLevelCallBack;Z)V

    .line 403
    new-instance p1, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, v5, v3, p4}, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CountDownLatch;[Z[ZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    invoke-static {p1}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getUserLevelInfo()V
    .registers 3

    .line 244
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 245
    :cond_7
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    .line 246
    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/UserService;->getUserLevelInfo()Lio/reactivex/Observable;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/util/UserLevelupHelper$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/util/UserLevelupHelper$4;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;)V

    .line 248
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public postLevelupShow(Ljava/lang/String;)V
    .registers 4

    .line 222
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    new-instance v1, Lcom/codemao/nemo/bean/PostShowLevel;

    invoke-direct {v1, p1}, Lcom/codemao/nemo/bean/PostShowLevel;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-interface {v0, v1}, Lcom/codemao/nemo/retrofit/api/UserService;->postLevelUpdateShow(Lcom/codemao/nemo/bean/PostShowLevel;)Lio/reactivex/Observable;

    move-result-object p1

    .line 224
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/util/UserLevelupHelper$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/util/UserLevelupHelper$3;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;)V

    .line 225
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public postLogin()V
    .registers 5

    .line 425
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    .line 426
    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/UserService;->postLogin()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    .line 427
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 428
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/util/UserLevelupHelper$8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/util/UserLevelupHelper$8;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;)V

    .line 429
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public postOver30()V
    .registers 7

    .line 453
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 455
    :cond_7
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getPostTime()J

    move-result-wide v0

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 457
    sget v4, Lcom/codemao/nemo/util/TimeUtil;->TIME_MSECOND:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/codemao/nemo/util/TimeUtil;->isSameDay(JJI)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 460
    :cond_18
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    .line 461
    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/UserService;->postOnlineOver30()Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v4, 0x1e

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 462
    invoke-virtual {v0, v4, v5, v1}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 463
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/util/UserLevelupHelper$9;

    invoke-direct {v1, p0, v2, v3}, Lcom/codemao/nemo/util/UserLevelupHelper$9;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;J)V

    .line 464
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public showGuide(ILandroid/app/Activity;)V
    .registers 4

    .line 590
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelUpGuidePop:Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;

    if-nez v0, :cond_b

    .line 591
    new-instance v0, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;

    invoke-direct {v0, p2}, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelUpGuidePop:Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;

    .line 593
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelUpGuidePop:Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;->setType(I)V

    .line 594
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/codemao/nemo/util/UserLevelupHelper$12;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/util/UserLevelupHelper$12;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;)V

    .line 595
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->setPopupCallback(Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 606
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 607
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 608
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelUpGuidePop:Lcom/codemao/nemo/dialog/pop/LevelUpGuidePop;

    .line 609
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 610
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public showLevelDetail(ILandroid/content/Context;)V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelDetailPop:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    if-eqz v0, :cond_a

    .line 161
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelDetailPop:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    .line 164
    :cond_a
    new-instance v0, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    invoke-direct {v0, p2}, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelDetailPop:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    .line 165
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;->setLeveInfo(I)V

    .line 166
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/codemao/nemo/util/UserLevelupHelper$2;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/util/UserLevelupHelper$2;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;)V

    .line 167
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->setPopupCallback(Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 178
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 180
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelDetailPop:Lcom/codemao/nemo/dialog/pop/UserLevelDetailPop;

    .line 181
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public showLevelUp(Landroid/content/Context;IIIZZLcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;Landroid/view/View$OnClickListener;)V
    .registers 16

    if-nez p5, :cond_5

    if-nez p6, :cond_5

    return-void

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelUpPop:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    if-eqz v0, :cond_f

    .line 129
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelUpPop:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    .line 132
    :cond_f
    new-instance v0, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelUpPop:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    if-eqz p8, :cond_1b

    .line 134
    invoke-virtual {v0, p8}, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->setConfirmListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_1b
    iget-object v1, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelUpPop:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/codemao/nemo/dialog/pop/UserLevelupPop;->setLevelInfo(IIIZZ)V

    .line 137
    new-instance p2, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p2, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/codemao/nemo/util/UserLevelupHelper$1;

    invoke-direct {p1, p0, p7}, Lcom/codemao/nemo/util/UserLevelupHelper$1;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;Lcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;)V

    .line 138
    invoke-virtual {p2, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->setPopupCallback(Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 152
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 153
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->levelUpPop:Lcom/codemao/nemo/dialog/pop/UserLevelupPop;

    .line 154
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->goAgreementPop:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 502
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->goAgreementPop:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    if-eqz v0, :cond_15

    .line 503
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->goAgreementPop:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    :cond_15
    const/4 v0, 0x1

    if-eq p2, v0, :cond_25

    if-eqz p1, :cond_24

    .line 507
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eq p1, v0, :cond_25

    :cond_24
    return-void

    .line 511
    :cond_25
    new-instance v0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;-><init>(Landroid/content/Context;IILjava/util/Map;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->goAgreementPop:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    .line 512
    new-instance p2, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p5}, Lcom/codemao/nemo/util/UserLevelupHelper$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    .line 520
    new-instance p2, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {p2, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/codemao/nemo/util/UserLevelupHelper$10;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/util/UserLevelupHelper$10;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;)V

    .line 521
    invoke-virtual {p2, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->setPopupCallback(Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 533
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 534
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 535
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->goAgreementPop:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    .line 536
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 537
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method public startCountDown()V
    .registers 9

    .line 541
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->timerService_:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_5

    return-void

    .line 544
    :cond_5
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->putOnlineTimeStart()V

    .line 545
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->timerService_:Ljava/util/concurrent/ScheduledExecutorService;

    .line 546
    new-instance v2, Lcom/codemao/nemo/util/UserLevelupHelper$11;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/util/UserLevelupHelper$11;-><init>(Lcom/codemao/nemo/util/UserLevelupHelper;)V

    const-wide/16 v3, 0x3c

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public stopCountDown()V
    .registers 12

    .line 554
    iget-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->timerService_:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_5

    return-void

    .line 557
    :cond_5
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lcom/codemao/nemo/util/UserLevelupHelper;->timerService_:Ljava/util/concurrent/ScheduledExecutorService;

    .line 559
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getOnlineTimeStart()J

    move-result-wide v0

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 561
    sget v4, Lcom/codemao/nemo/util/TimeUtil;->TIME_MSECOND:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/codemao/nemo/util/TimeUtil;->isSameDay(JJI)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_3f

    sub-long v7, v2, v0

    const-wide/32 v9, 0xea60

    cmp-long v4, v7, v9

    if-gtz v4, :cond_42

    cmp-long v4, v7, v5

    if-ltz v4, :cond_42

    .line 563
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getOnlineTime()J

    move-result-wide v4

    add-long/2addr v9, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v8, v9, v6

    if-lez v8, :cond_39

    .line 565
    invoke-virtual {p0}, Lcom/codemao/nemo/util/UserLevelupHelper;->postOver30()V

    :cond_39
    add-long/2addr v4, v2

    sub-long/2addr v4, v0

    .line 567
    invoke-static {v4, v5}, Lcom/codemao/nemo/util/SprefUtil;->putOnlineTime(J)V

    goto :goto_42

    .line 570
    :cond_3f
    invoke-static {v5, v6}, Lcom/codemao/nemo/util/SprefUtil;->putOnlineTime(J)V

    :cond_42
    :goto_42
    return-void
.end method

.method public updateOnlineTime()V
    .registers 6

    .line 575
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getOnlineTimeStart()J

    move-result-wide v0

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 577
    sget v4, Lcom/codemao/nemo/util/TimeUtil;->TIME_MSECOND:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/codemao/nemo/util/TimeUtil;->isSameDay(JJI)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 578
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getOnlineTime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v4, v0, v2

    if-lez v4, :cond_22

    .line 580
    invoke-virtual {p0}, Lcom/codemao/nemo/util/UserLevelupHelper;->postOver30()V

    .line 582
    :cond_22
    invoke-static {v0, v1}, Lcom/codemao/nemo/util/SprefUtil;->putOnlineTime(J)V

    goto :goto_2e

    .line 584
    :cond_26
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->putOnlineTimeStart()V

    const-wide/16 v0, 0x0

    .line 585
    invoke-static {v0, v1}, Lcom/codemao/nemo/util/SprefUtil;->putOnlineTime(J)V

    :goto_2e
    return-void
.end method
