.class public final Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;
.super Ljava/lang/Object;
.source "BindInfoCheckUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;

.field private static final bindPhoneResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final updateBindPhoneStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/codemao/nemo/event/BindEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->INSTANCE:Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;

    .line 29
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->updateBindPhoneStatus:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->bindPhoneResult:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkPublish(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 34
    sget-object v1, Lcom/codemao/nemo/constant/AppConfig;->INSTANCE:Lcom/codemao/nemo/constant/AppConfig;

    invoke-virtual {v1}, Lcom/codemao/nemo/constant/AppConfig;->isPublishAllPass()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-object v0

    .line 38
    :cond_1b
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v1

    const/4 v3, 0x0

    .line 42
    new-instance v4, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;

    invoke-direct {v4, v0, p1}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;-><init>(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;)V

    .line 38
    invoke-virtual {v1, p1, v3, v2, v4}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    return-object v0
.end method

.method public final checkUpload(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 103
    sget-object v1, Lcom/codemao/nemo/constant/AppConfig;->INSTANCE:Lcom/codemao/nemo/constant/AppConfig;

    invoke-virtual {v1}, Lcom/codemao/nemo/constant/AppConfig;->isPublishAllPass()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 p1, 0x1

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-object v0

    .line 107
    :cond_1b
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v1

    .line 111
    new-instance v2, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;

    invoke-direct {v2, v0, p1}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;-><init>(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;)V

    const/4 v3, 0x0

    .line 107
    invoke-virtual {v1, p1, v3, v3, v2}, Lcom/codemao/nemo/util/UserLevelupHelper;->checkUserVerifiedAndFriendlyProtocol(Landroid/content/Context;ZZLcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;)V

    return-object v0
.end method

.method public final getBindPhoneResult()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->bindPhoneResult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getUpdateBindPhoneStatus()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/codemao/nemo/event/BindEvent;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->updateBindPhoneStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
