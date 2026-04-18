.class public final Lcom/codemao/nemo/activity/login/SetPasswordAction;
.super Lcom/codemao/nemo/activity/login/AccountLoginAction;
.source "SetPasswordAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/activity/login/SetPasswordAction$Companion;
    }
.end annotation


# instance fields
.field private token:Ljava/lang/String;

.field private type:I


# direct methods
.method public static synthetic $r8$lambda$25q0ysFzCowU0PASZeaKSR2jNGw(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->setPassword$lambda$5$lambda$4(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AJuGJ3JjNFlrvOWXgt3fDc98UKw(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->setPassword$lambda$5(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OLo6hm1gY6xYOOAX_WB5rVLlk9Q(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->setPassword$lambda$3$lambda$2(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RKtMNfNe8rAcAzG7oPQwzKEuAG8(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->setPassword$lambda$1(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gRPGqyY7FYrbTNB8Ddkww4FU7Q8(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->setPassword$lambda$3(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h_9J8g8oPcYsKVei_so55Wz2pqA(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->setPassword$lambda$0(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/activity/login/SetPasswordAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/activity/login/SetPasswordAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;-><init>()V

    iput p1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/SetPasswordAction;-><init>(I)V

    .line 49
    iput-object p2, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction;->token:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setData(Lcom/codemao/nemo/activity/login/SetPasswordAction;J)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->setData(J)V

    return-void
.end method

.method private final fetchUserRegisterInfo()V
    .registers 5

    .line 178
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/UserService;->getUserRegisterInfo()Lio/reactivex/Observable;

    move-result-object v0

    .line 179
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction$fetchUserRegisterInfo$1;-><init>(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private final setCookie(Ljava/lang/String;)V
    .registers 8

    .line 244
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 245
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 246
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 247
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 248
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 249
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MODEL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "BBL-"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 250
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getAccountToken()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    :cond_34
    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getApi()Lcom/codemao/nemo/bean/ApiVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ApiVO;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 253
    sget-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_DEBUG:Z

    if-eqz v2, :cond_57

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test-authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 255
    :cond_57
    sget-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_RELEASE:Z

    if-eqz v2, :cond_70

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 258
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "staging-authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_84
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private final setData(J)V
    .registers 5

    .line 223
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/codemao/nemo/util/BcmHelper;->initPath()V

    .line 225
    new-instance v1, Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;-><init>()V

    .line 226
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->clone(Lcn/codemao/android/account/bean/UserInfoVO;)V

    const/4 v0, 0x0

    .line 227
    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateIsBBKLogin(Z)V

    .line 229
    invoke-static {v1, p1, p2}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserInfo(Lcom/codemao/nemo/bean/LocalUserInfo;J)V

    .line 230
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getAccountToken()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->setCookie(Ljava/lang/String;)V

    return-void
.end method

.method private final setPassword()V
    .registers 5

    .line 100
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 101
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 104
    :cond_12
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_91

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    goto/16 :goto_91

    .line 105
    :cond_20
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v1

    if-eqz v1, :cond_91

    invoke-virtual {v1}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    goto :goto_91

    .line 106
    :cond_2d
    sget-object v2, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v3, "设置密码时，本地先校验"

    invoke-virtual {v2, v3}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_8b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_45

    goto :goto_8b

    .line 111
    :cond_45
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v0, "两次输入的密码不一致哦"

    .line 112
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    return-void

    :cond_51
    const-string/jumbo v2, "密码设置中..."

    .line 115
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialog(Ljava/lang/String;)V

    .line 116
    iget v2, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction;->type:I

    if-eqz v2, :cond_7d

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5f

    goto :goto_7d

    .line 140
    :cond_5f
    new-instance v2, Lcn/codemao/android/account/bean/ResetPasswordVO;

    invoke-direct {v2}, Lcn/codemao/android/account/bean/ResetPasswordVO;-><init>()V

    .line 141
    iget-object v3, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/codemao/android/account/bean/ResetPasswordVO;->setTicket(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2, v1}, Lcn/codemao/android/account/bean/ResetPasswordVO;->setPassword(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2, v0}, Lcn/codemao/android/account/bean/ResetPasswordVO;->setConfirm_password(Ljava/lang/String;)V

    .line 144
    new-instance v0, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V

    new-instance v1, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/CodeMaoAccount;->resetPassword(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/ResetPasswordVO;)V

    goto :goto_8a

    .line 117
    :cond_7d
    :goto_7d
    new-instance v2, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V

    new-instance v3, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V

    invoke-static {v1, v0, v2, v3}, Lcn/codemao/android/account/CodeMaoAccount;->setDefaultPassword(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    :goto_8a
    return-void

    :cond_8b
    :goto_8b
    const-string/jumbo v0, "密码必须为 8~20 位，且包含字母及数字"

    .line 108
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    :cond_91
    :goto_91
    return-void
.end method

.method private static final setPassword$lambda$0(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;)V
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v0, "密码设置成功1"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 119
    iget p1, p0, Lcom/codemao/nemo/activity/login/SetPasswordAction;->type:I

    if-nez p1, :cond_15

    .line 120
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->fetchUserRegisterInfo()V

    goto :goto_18

    .line 122
    :cond_15
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->toMain()V

    :goto_18
    return-void
.end method

.method private static final setPassword$lambda$1(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "密码设置失败1："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    const-string v0, "AC3_53"

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "密码必须为8~20位，且包含字母及数字"

    if-eqz v0, :cond_36

    .line 128
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    goto :goto_4a

    :cond_36
    const-string v0, "AC3_54"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 134
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    goto :goto_4a

    :cond_42
    const-string p1, "s1"

    .line 136
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    :goto_4a
    return-void
.end method

.method private static final setPassword$lambda$3(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v0, "密码设置成功2"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    .line 147
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_24

    const v0, 0x7f120259

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelayWithCheckmark(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/event/ResetPasswordEvent;->obtain()Lcom/codemao/nemo/event/ResetPasswordEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object p1

    if-eqz p1, :cond_43

    new-instance v0, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_43
    return-void
.end method

.method private static final setPassword$lambda$3$lambda$2(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_e
    return-void
.end method

.method private static final setPassword$lambda$5(Lcom/codemao/nemo/activity/login/SetPasswordAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "密码设置失败2："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    const-string v0, "AC_39"

    .line 153
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string/jumbo p1, "手机验证已失效，请重新完成验证"

    .line 154
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object p1

    if-eqz p1, :cond_6c

    new-instance p2, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V

    const-wide/16 v0, 0x320

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6c

    :cond_46
    const-string v0, "AC3_53"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string/jumbo p1, "密码必须为8~20位，且包含字母及数字"

    .line 158
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    goto :goto_6c

    :cond_55
    const-string v0, "AC3_54"

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    const-string/jumbo p1, "当前密码为弱密码"

    .line 164
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    goto :goto_6c

    :cond_64
    const-string p1, "s1"

    .line 166
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method private static final setPassword$lambda$5$lambda$4(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_e
    return-void
.end method

.method private final toMain()V
    .registers 3

    .line 234
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {v1}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 235
    sget v0, Lcom/codemao/nemo/event/LoginEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 236
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/MainActivityV2;->startMainActivityV2(Landroid/content/Context;Z)V

    .line 238
    :cond_1d
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/util/ActivityUtils;->killActivity(Ljava/lang/Class;)V

    .line 239
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_2f
    return-void
.end method


# virtual methods
.method public onConfirmClick()V
    .registers 3

    .line 94
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v1, "点击设置密码"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    const-string/jumbo v0, "点击确定"

    .line 95
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->reportEvent(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction;->setPassword()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 88
    invoke-super {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onDestroy()V

    .line 89
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->onDestroy()V

    .line 90
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onInit()V
    .registers 6

    .line 53
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_13

    const v1, 0x7f0e00f5

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->setFirstIconRes(I)V

    .line 56
    :cond_13
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string/jumbo v1, "须为8~20位，且包含字母及数字"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextHint(Ljava/lang/String;)V

    .line 57
    :cond_1f
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    const/16 v1, 0x14

    if-eqz v0, :cond_2a

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextMaxLength(I)V

    .line 58
    :cond_2a
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_34

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->setInputType(I)V

    .line 59
    :cond_34
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3e

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/LoginInputLayout;->setConfirmTextViewVisible(Z)V

    .line 61
    :cond_3e
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_4a

    const v4, 0x7f0e00f6

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/view/LoginInputLayout;->setFirstIconRes(I)V

    .line 62
    :cond_4a
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_56

    const-string/jumbo v4, "请再次输入新密码"

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextHint(Ljava/lang/String;)V

    .line 63
    :cond_56
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextMaxLength(I)V

    .line 64
    :cond_5f
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->setInputType(I)V

    .line 65
    :cond_68
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_71

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/LoginInputLayout;->setConfirmTextViewVisible(Z)V

    .line 67
    :cond_71
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_78

    goto :goto_7e

    :cond_78
    const-string/jumbo v1, "确 定"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_7e
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_85

    goto :goto_88

    :cond_85
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 70
    :goto_88
    new-instance v0, Lcom/codemao/nemo/activity/login/SetPasswordAction$onInit$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/login/SetPasswordAction$onInit$textWatcher$1;-><init>(Lcom/codemao/nemo/activity/login/SetPasswordAction;)V

    .line 83
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v1

    if-nez v1, :cond_94

    goto :goto_97

    :cond_94
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->setTextWatcher(Landroid/text/TextWatcher;)V

    .line 84
    :goto_97
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v1

    if-nez v1, :cond_9e

    goto :goto_a1

    :cond_9e
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->setTextWatcher(Landroid/text/TextWatcher;)V

    :goto_a1
    return-void
.end method

.method public final onMainStart(Lcom/codemao/nemo/event/MainStartEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_9
    return-void
.end method
