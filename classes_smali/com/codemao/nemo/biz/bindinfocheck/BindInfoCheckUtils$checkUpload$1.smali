.class public final Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;
.super Ljava/lang/Object;
.source "BindInfoCheckUtils.kt"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$CheckUserVerifiedAndAnswerFriendlyProtocolCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->checkUpload(Landroid/app/Activity;)Landroidx/lifecycle/LiveData;
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
.method public static synthetic $r8$lambda$3QGjLhBsS1_ETYfismN9s7JtNVk(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->onSuccess$lambda$2(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nl-WUbuGhGa39YaW-dzd856tiZo(Landroidx/lifecycle/MutableLiveData;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->onSuccess$lambda$0(Landroidx/lifecycle/MutableLiveData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uttUbP5tblN2n6uOCBH3U-rwLUE(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->onSuccess$lambda$1(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;Landroid/view/View;)V

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

    iput-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$result:Landroidx/lifecycle/MutableLiveData;

    iput-object p2, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$context:Landroid/app/Activity;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onSuccess$lambda$0(Landroidx/lifecycle/MutableLiveData;Landroid/view/View;)V
    .registers 2

    const-string p1, "$result"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onSuccess$lambda$1(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    const-string p2, "$result"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x5

    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 132
    sget-object p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    .line 134
    new-instance p2, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, v1}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    .line 132
    invoke-virtual {p0, p1, v1, p2}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method

.method private static final onSuccess$lambda$2(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    const-string p2, "$result"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x7

    .line 148
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 149
    sget-object p0, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    .line 151
    new-instance p2, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v0, v1}, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;-><init>(ZZI)V

    .line 149
    invoke-virtual {p0, p1, v1, p2}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startBindPhoneNumberActivity(Landroid/content/Context;ZLcom/codemao/nemo/event/FinishBindPhoneNumberEvent;)V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$result:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(ZZ)V
    .registers 9

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    .line 114
    sget-object p1, Lcom/codemao/nemo/constant/AppConfig;->INSTANCE:Lcom/codemao/nemo/constant/AppConfig;

    invoke-virtual {p1}, Lcom/codemao/nemo/constant/AppConfig;->publishAllPass()V

    .line 115
    iget-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$result:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_67

    :cond_14
    if-eqz p1, :cond_2a

    .line 117
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$context:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 117
    iget-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$result:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_67

    :cond_2a
    if-eqz p2, :cond_4a

    .line 125
    iget-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$result:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 126
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$context:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 126
    iget-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$result:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1$$ExternalSyntheticLambda2;

    invoke-direct {v5, p1, v1}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1$$ExternalSyntheticLambda2;-><init>(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    goto :goto_67

    .line 142
    :cond_4a
    iget-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$result:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 143
    invoke-static {}, Lcom/codemao/nemo/util/UserLevelupHelper;->getInstance()Lcom/codemao/nemo/util/UserLevelupHelper;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$context:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 143
    iget-object p1, p0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1;->$result:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1, v1}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils$checkUpload$1$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/MutableLiveData;Landroid/app/Activity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/util/UserLevelupHelper;->showNotSignAgreement(Landroid/app/Activity;IILjava/util/Map;Landroid/view/View$OnClickListener;)V

    :goto_67
    return-void
.end method
