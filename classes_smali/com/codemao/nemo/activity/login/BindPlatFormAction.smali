.class public final Lcom/codemao/nemo/activity/login/BindPlatFormAction;
.super Lcom/codemao/nemo/activity/login/AccountLoginAction;
.source "BindPlatFormAction.kt"


# instance fields
.field private bindPhoneAndFinish:Ljava/lang/Boolean;

.field private code:Ljava/lang/String;

.field private event:Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

.field private isFirstLogin:Z

.field private isFromMain:Z

.field private isNeedShowPolicy:Z

.field private job:Lkotlinx/coroutines/Job;

.field private loginType:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private toVerify:Z

.field private token:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$69DW8AnbdmDg1ZEbzeVim9wEg0E(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->getBindCode$lambda$4(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CTRfFV65Qwmhwc4w69dbNDLH1YM(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->getBindCode$lambda$6(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JQQzvY_ynqa2oTpWrf11lfCTL7o(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->getBindCode$lambda$3(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KXmgqtuLXXtog6EsIHiis4nEKL8(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->doBind$lambda$8(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UNKewO8wAIib4G0Iy2suCQIw2Vg(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->getBindCode$lambda$5(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y7MNysc5bvmWHhwnzKluPySMYwE(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Lcn/codemao/android/account/bean/AuthResultVO;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->doBind$lambda$9(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Lcn/codemao/android/account/bean/AuthResultVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YEc2cJDBxDOK8ov0BiK0Pgz7zj0(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->doBind$lambda$10(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dOS4KzKnyi6UbLcRrg0Jrfge6DY(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->onInit$lambda$0(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$md6ScORB0JYwHLi8W3Kh3VCKFyo(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->onInit$lambda$2(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t6XhEHWg7PP8V3td_VLwykRtrhw(Lcom/codemao/nemo/activity/login/BindPlatFormAction;ZLcn/codemao/android/account/bean/LoginUserInfoVO;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->doBind$lambda$7(Lcom/codemao/nemo/activity/login/BindPlatFormAction;ZLcn/codemao/android/account/bean/LoginUserInfoVO;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkVerifyEvent(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Z)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->checkVerifyEvent(Z)V

    return-void
.end method

.method public static final synthetic access$getBindPhoneAndFinish$p(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)Ljava/lang/Boolean;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->bindPhoneAndFinish:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final synthetic access$getJob$p(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)Lkotlinx/coroutines/Job;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->job:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$goMain(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->goMain()V

    return-void
.end method

.method private final checkVerifyEvent(Z)V
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->event:Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    if-eqz v0, :cond_29

    if-nez v0, :cond_7

    goto :goto_9

    .line 306
    :cond_7
    iput-boolean p1, v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->isVerified:Z

    .line 307
    :goto_9
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->event:Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->INSTANCE:Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->getBindPhoneResult()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->event:Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-nez p1, :cond_29

    .line 310
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->event:Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;->type:I

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->showToastForType(I)V

    :cond_29
    return-void
.end method

.method private final doBind(Z)V
    .registers 5

    .line 238
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 239
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 242
    :cond_12
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    move-object v0, v1

    :goto_1f
    iput-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->phone:Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, v1

    :goto_2d
    iput-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->code:Ljava/lang/String;

    .line 244
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isFirstLogin:Z

    const-string/jumbo v2, "绑定中..."

    if-eqz v0, :cond_56

    if-eqz p1, :cond_41

    const-string/jumbo v0, "用户信息生成中..."

    .line 246
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialog(Ljava/lang/String;)V

    .line 247
    iput-object v1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->code:Ljava/lang/String;

    goto :goto_44

    .line 249
    :cond_41
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialog(Ljava/lang/String;)V

    .line 251
    :goto_44
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->code:Ljava/lang/String;

    new-instance v2, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda9;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Z)V

    new-instance p1, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V

    invoke-static {v0, v1, v2, p1}, Lcn/codemao/android/account/CodeMaoAccount;->activateByOauth(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    goto :goto_6a

    .line 273
    :cond_56
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialog(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->phone:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->code:Ljava/lang/String;

    new-instance v1, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V

    new-instance v2, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V

    invoke-static {p1, v0, v1, v2}, Lcn/codemao/android/account/CodeMaoAccount;->bindPhone(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    :goto_6a
    return-void
.end method

.method private static final doBind$lambda$10(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    const-string p2, "AC3"

    .line 295
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo v0, "验证码输入错误"

    if-eqz p2, :cond_1b

    .line 296
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_35

    :cond_1b
    const-string p2, "AC3_0"

    .line 297
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 298
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    const-string/jumbo p1, "该手机号已被绑定"

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 299
    :cond_2e
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_35
    return-void
.end method

.method private static final doBind$lambda$7(Lcom/codemao/nemo/activity/login/BindPlatFormAction;ZLcn/codemao/android/account/bean/LoginUserInfoVO;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Lcn/codemao/android/account/bean/LoginUserInfoVO;->getUser_info()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p2

    const-string v0, "it.getUser_info()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->setData(Lcn/codemao/android/account/bean/UserInfoVO;)V

    .line 253
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    .line 254
    iget-object p2, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->loginType:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendLoginEvent(Ljava/lang/String;Z)V

    if-nez p1, :cond_26

    .line 256
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    const-string/jumbo p2, "绑定成功"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 259
    :cond_26
    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateHasPhone(Z)V

    .line 260
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/event/BindEvent;->obtain()Lcom/codemao/nemo/event/BindEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 261
    sget-object p1, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->INSTANCE:Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/bindinfocheck/BindInfoCheckUtils;->getUpdateBindPhoneStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/event/BindEvent;->obtain()Lcom/codemao/nemo/event/BindEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 262
    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->checkVerifyEvent(Z)V

    .line 263
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->goMain()V

    return-void
.end method

.method private static final doBind$lambda$8(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    const-string p2, "AC3"

    .line 266
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo v0, "验证码输入错误"

    if-eqz p2, :cond_1b

    .line 267
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_35

    :cond_1b
    const-string p2, "AC3_0"

    .line 268
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 269
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    const-string/jumbo p1, "该手机号已被绑定"

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_35

    .line 270
    :cond_2e
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_35
    return-void
.end method

.method private static final doBind$lambda$9(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Lcn/codemao/android/account/bean/AuthResultVO;)V
    .registers 8

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    new-instance v3, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$doBind$3$1;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getBindCode(Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 191
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 194
    :cond_12
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->phone:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->isPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 195
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    const-string/jumbo v0, "请输入正确的手机号"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 198
    :cond_25
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isFirstLogin:Z

    if-eqz v0, :cond_3b

    .line 199
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->phone:Ljava/lang/String;

    new-instance v2, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda7;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V

    new-instance v3, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda4;

    invoke-direct {v3, p1, p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V

    invoke-static {v0, v1, v2, v3}, Lcn/codemao/android/account/CodeMaoAccount;->bindPhoneCaptchaByOauth(Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    goto :goto_4a

    .line 218
    :cond_3b
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->phone:Ljava/lang/String;

    .line 217
    new-instance v1, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda8;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V

    new-instance v2, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/CodeMaoAccount;->getBindPhoneCaptcha(Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    :goto_4a
    return-void
.end method

.method private static final getBindCode$lambda$3(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    const-string/jumbo p1, "验证码已发送"

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final getBindCode$lambda$4(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p3, "$onCancel"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const-string p0, "A_5"

    .line 205
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 206
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    const-string/jumbo p1, "请输入正确的手机号"

    .line 205
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_3d

    :cond_20
    const-string p0, "AC3_26"

    .line 209
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 210
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    const-string/jumbo p1, "该手机号已被绑定"

    .line 209
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_3d

    .line 213
    :cond_33
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    const-string/jumbo p1, "获取验证码失败，请重新尝试"

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3d
    return-void
.end method

.method private static final getBindCode$lambda$5(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    const-string/jumbo p1, "验证码已发送"

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final getBindCode$lambda$6(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/BindPlatFormAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p3, "$onCancel"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const-string p0, "A_5"

    .line 222
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 223
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    const-string/jumbo p1, "请输入正确的手机号"

    .line 222
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_3d

    :cond_20
    const-string p0, "AC3_0"

    .line 226
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 227
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    const-string/jumbo p1, "该手机号已被绑定"

    .line 226
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_3d

    .line 230
    :cond_33
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    const-string/jumbo p1, "获取验证码失败，请重新尝试"

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_3d
    return-void
.end method

.method private final goMain()V
    .registers 3

    .line 179
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->toVerify:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isFromMain:Z

    if-nez v0, :cond_2b

    .line 180
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {v1}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 181
    sget v0, Lcom/codemao/nemo/event/LoginEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 182
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    iget-boolean v1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isNeedShowPolicy:Z

    invoke-static {v0, v1}, Lcom/codemao/nemo/MainActivityV2;->startMainActivityV2(Landroid/content/Context;Z)V

    .line 184
    :cond_22
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/util/ActivityUtils;->killActivity(Ljava/lang/Class;)V

    .line 186
    :cond_2b
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_34
    return-void
.end method

.method private static final onInit$lambda$0(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isFirstLogin:Z

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    .line 73
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->doBind(Z)V

    goto :goto_15

    :cond_e
    const/4 p1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->checkVerifyEvent(Z)V

    .line 76
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->goMain()V

    :goto_15
    return-void
.end method

.method private static final onInit$lambda$2(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Landroid/view/View;)V
    .registers 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-以后再说"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p1, "以后再说"

    .line 108
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->reportEvent(Ljava/lang/String;)V

    .line 109
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isFirstLogin:Z

    if-eqz p1, :cond_35

    .line 110
    invoke-direct {p0, v0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->doBind(Z)V

    goto :goto_57

    .line 112
    :cond_35
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->bindPhoneAndFinish:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 113
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_57

    .line 114
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p0

    if-eqz p0, :cond_57

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_57

    .line 117
    :cond_51
    invoke-direct {p0, v3}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->checkVerifyEvent(Z)V

    .line 118
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->goMain()V

    :cond_57
    :goto_57
    return-void
.end method

.method private final setData(Lcn/codemao/android/account/bean/UserInfoVO;)V
    .registers 3

    .line 317
    invoke-static {}, Lcom/codemao/nemo/util/BcmHelper;->initPath()V

    .line 318
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_14

    .line 319
    new-instance v0, Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;-><init>()V

    .line 320
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->clone(Lcn/codemao/android/account/bean/UserInfoVO;)V

    .line 321
    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserInfo(Lcom/codemao/nemo/bean/LocalUserInfo;)V

    .line 323
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->loginType:Ljava/lang/String;

    const-string v0, "7"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    .line 324
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateIsBBKLogin(Z)V

    goto :goto_27

    :cond_23
    const/4 p1, 0x0

    .line 326
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateIsBBKLogin(Z)V

    .line 328
    :goto_27
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/SystemUtil;->setCookie(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .registers 3

    .line 337
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isFromMain:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->bindPhoneAndFinish:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-super {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    invoke-static {p1}, Lcn/codemao/android/account/CodeMaoAccount;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConfirmClick()V
    .registers 5

    .line 171
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v1, "点击绑定"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-绑定"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "绑定"

    .line 174
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->reportEvent(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, v3}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->doBind(Z)V

    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 154
    invoke-super {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onDestroy()V

    .line 155
    new-instance v0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 159
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->onDestroy()V

    return-void
.end method

.method public onGetCaptchaClick(Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onCancel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-绑定-获取验证码"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "绑定-获取验证码"

    .line 164
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->reportEvent(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    iput-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->phone:Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->getBindCode(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onInit()V
    .registers 7

    .line 57
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/account/CodeMaoAccount;->onCreate(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v2, "token"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_22
    move-object v0, v1

    :goto_23
    iput-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->token:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_38

    const-string v2, "loginType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_38
    move-object v0, v1

    :goto_39
    iput-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->loginType:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4f

    const-string v3, "isFromMain"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    :goto_50
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isFromMain:Z

    .line 63
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_65

    const-string v3, "isNeedShowPolicy"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_66

    :cond_65
    const/4 v0, 0x0

    :goto_66
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isNeedShowPolicy:Z

    .line 65
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7b

    const-string v3, "isFirstLogin"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7c

    :cond_7b
    const/4 v0, 0x0

    :goto_7c
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isFirstLogin:Z

    .line 66
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_91

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_91

    const-string v3, "toVerify"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_92

    :cond_91
    const/4 v0, 0x0

    :goto_92
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->toVerify:Z

    .line 67
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_a9

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a9

    const-string v3, "event"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    goto :goto_aa

    :cond_a9
    move-object v0, v1

    :goto_aa
    instance-of v3, v0, Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    if-eqz v3, :cond_af

    goto :goto_b0

    :cond_af
    move-object v0, v1

    :goto_b0
    iput-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->event:Lcom/codemao/nemo/event/FinishBindPhoneNumberEvent;

    .line 68
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_c8

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_c8

    const-string v1, "bind_phone_and_finish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_c8
    iput-object v1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->bindPhoneAndFinish:Ljava/lang/Boolean;

    .line 70
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getIvIcon()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_d3

    goto :goto_e3

    :cond_d3
    iget-boolean v3, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->toVerify:Z

    if-nez v3, :cond_df

    iget-boolean v3, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isFromMain:Z

    if-eqz v3, :cond_dc

    goto :goto_df

    :cond_dc
    const/16 v3, 0x8

    goto :goto_e0

    :cond_df
    :goto_df
    const/4 v3, 0x0

    :goto_e0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    :goto_e3
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getIvIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_f1

    new-instance v3, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_f1
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_f8

    goto :goto_fe

    :cond_f8
    const-string/jumbo v3, "根据相关规定，发布内容前需要实名认证"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_fe
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v3, 0x41600000  # 14.0f

    const/4 v4, 0x1

    if-eqz v0, :cond_10a

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 83
    :cond_10a
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_119

    const-string v5, "#E2D1FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    :cond_119
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_125

    const v5, 0x7f0e00f7

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/view/LoginInputLayout;->setFirstIconRes(I)V

    .line 86
    :cond_125
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_131

    const-string/jumbo v5, "手机号"

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextHint(Ljava/lang/String;)V

    .line 87
    :cond_131
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_13a

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/view/LoginInputLayout;->setInputType(I)V

    .line 88
    :cond_13a
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_145

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextMaxLength(I)V

    .line 89
    :cond_145
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_14e

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->setConfirmTextViewVisible(Z)V

    .line 91
    :cond_14e
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_15a

    const v5, 0x7f0e00f4

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/view/LoginInputLayout;->setFirstIconRes(I)V

    .line 92
    :cond_15a
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_166

    const-string/jumbo v5, "验证码"

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextHint(Ljava/lang/String;)V

    .line 93
    :cond_166
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_16f

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/view/LoginInputLayout;->setInputType(I)V

    .line 94
    :cond_16f
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_179

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextMaxLength(I)V

    .line 95
    :cond_179
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_182

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/view/LoginInputLayout;->setConfirmTextViewVisible(Z)V

    .line 97
    :cond_182
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomLeftTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_189

    goto :goto_18c

    :cond_189
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :goto_18c
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomRightTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_193

    goto :goto_196

    :cond_193
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_196
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_19d

    goto :goto_1aa

    :cond_19d
    iget-boolean v5, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->toVerify:Z

    if-nez v5, :cond_1a7

    iget-boolean v5, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->isFromMain:Z

    if-eqz v5, :cond_1a6

    goto :goto_1a7

    :cond_1a6
    const/4 v1, 0x0

    :cond_1a7
    :goto_1a7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_1aa
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1b1

    goto :goto_1b7

    :cond_1b1
    const-string/jumbo v1, "以后再说"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_1b7
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_1d1

    .line 103
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomMiddleTextView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1d1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f06013a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 105
    :cond_1d1
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1da

    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    :cond_1da
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1e8

    new-instance v1, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_1e8
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1ef

    goto :goto_1f5

    :cond_1ef
    const-string/jumbo v1, "绑 定"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_1f5
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1fc

    goto :goto_1ff

    :cond_1fc
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 124
    :goto_1ff
    new-instance v0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onInit$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onInit$textWatcher$1;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)V

    .line 143
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v1

    if-nez v1, :cond_20b

    goto :goto_20e

    :cond_20b
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->setTextWatcher(Landroid/text/TextWatcher;)V

    .line 144
    :goto_20e
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v1

    if-nez v1, :cond_215

    goto :goto_218

    :cond_215
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->setTextWatcher(Landroid/text/TextWatcher;)V

    :goto_218
    return-void
.end method

.method public final onMainStart(Lcom/codemao/nemo/event/MainStartEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_9
    return-void
.end method
