.class public final Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;
.super Ljava/lang/Object;
.source "BindInfoCheckUtils.kt"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->checkPublish(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/app/Activity;

.field final synthetic $result:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9b100SJ1-VeOs_B1VlYFxMVguqQ(Landroidx/lifecycle/MutableLiveData;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->onSuccess$lambda$0(Landroidx/lifecycle/MutableLiveData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9b8nhWWj9mG5YfPvVdPVOHzaXj4(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;ZZLandroid/view/View;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->onSuccess$lambda$2(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;ZZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F9vPRbz4p_S8aiF75SFKUCzYRLU(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;ZZLandroid/view/View;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->onSuccess$lambda$1(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;ZZLandroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$result:Landroidx/lifecycle/MutableLiveData;

    iput-object p2, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$context:Landroid/app/Activity;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onSuccess$lambda$0(Landroidx/lifecycle/MutableLiveData;Landroid/view/View;)V
    .registers 2

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onSuccess$lambda$1(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;ZZLandroid/view/View;)V
    .registers 6

    const-string p4, "$result"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x5

    .line 63
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 64
    sget-object p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    .line 66
    new-instance p4, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v0, 0x2

    invoke-direct {p4, p2, p3, v0}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 p2, 0x1

    .line 64
    invoke-virtual {p0, p1, p2, p4}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method

.method private static final onSuccess$lambda$2(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;ZZLandroid/view/View;)V
    .registers 6

    const-string p4, "$result"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$context"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x7

    .line 80
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 81
    sget-object p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    .line 83
    new-instance p4, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v0, 0x2

    invoke-direct {p4, p2, p3, v0}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    const/4 p2, 0x1

    .line 81
    invoke-virtual {p0, p1, p2, p4}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$result:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(ZZ)V
    .registers 11

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    .line 45
    sget-object p1, Lcom/codemao/nemo/constant/AppConfig;->INSTANCE:Lcom/codemao/nemo/constant/AppConfig;

    invoke-virtual {p1}, Lcom/codemao/nemo/constant/AppConfig;->publishAllPass()V

    .line 46
    iget-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$result:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_71

    :cond_14
    if-eqz p1, :cond_34

    .line 48
    iget-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$result:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$context:Landroid/app/Activity;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 49
    iget-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$result:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_71

    :cond_34
    if-eqz p2, :cond_54

    .line 57
    iget-object v0, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$result:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 58
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$context:Landroid/app/Activity;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$result:Landroidx/lifecycle/MutableLiveData;

    new-instance v7, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0, v3, p1, p2}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda2;-><init>(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;ZZ)V

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_71

    .line 74
    :cond_54
    iget-object v0, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$result:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$context:Landroid/app/Activity;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1;->$result:Landroidx/lifecycle/MutableLiveData;

    new-instance v7, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v3, p1, p2}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkPublish$1$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;ZZ)V

    invoke-virtual/range {v2 .. v7}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    :goto_71
    return-void
.end method
