.class public final Lcom/codemao/nemo/activity/login/FindPswAction;
.super Lcom/codemao/nemo/activity/login/AccountLoginAction;
.source "FindPswAction.kt"


# instance fields
.field private code:Ljava/lang/String;

.field private final isRestPswd:Z

.field private phone:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$MmzJhui8o3qdZJ5NZXXv_aSLIA8(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/FindPswAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/login/FindPswAction;->getBindCode$lambda$2(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/FindPswAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHiOm6K9D4euHZinJsiO57MbEp8(Lcom/codemao/nemo/activity/login/FindPswAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/activity/login/FindPswAction;->checkCode$lambda$4(Lcom/codemao/nemo/activity/login/FindPswAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cXuy31Bkc-nQ5tE1uGg6Rh1j3FA(Lcom/codemao/nemo/activity/login/FindPswAction;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/FindPswAction;->getBindCode$lambda$1(Lcom/codemao/nemo/activity/login/FindPswAction;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uFgUuryx961ntvOiEKUzorEV2PU(Lcom/codemao/nemo/activity/login/FindPswAction;Lcn/codemao/android/account/bean/TicketResult;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/FindPswAction;->checkCode$lambda$3(Lcom/codemao/nemo/activity/login/FindPswAction;Lcn/codemao/android/account/bean/TicketResult;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/codemao/nemo/activity/login/FindPswAction;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;-><init>()V

    iput-boolean p1, p0, Lcom/codemao/nemo/activity/login/FindPswAction;->isRestPswd:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 28
    :cond_5
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/FindPswAction;-><init>(Z)V

    return-void
.end method

.method private final checkCode()V
    .registers 4

    .line 165
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 166
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 169
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
    iput-object v0, p0, Lcom/codemao/nemo/activity/login/FindPswAction;->phone:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v1

    :cond_2b
    iput-object v1, p0, Lcom/codemao/nemo/activity/login/FindPswAction;->code:Ljava/lang/String;

    .line 171
    new-instance v0, Lcn/codemao/android/account/bean/TicketCheckoutVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/TicketCheckoutVO;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/codemao/nemo/activity/login/FindPswAction;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/bean/TicketCheckoutVO;->setCaptcha(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/codemao/nemo/activity/login/FindPswAction;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/bean/TicketCheckoutVO;->setPhone_number(Ljava/lang/String;)V

    .line 174
    sget-object v1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v2, "校验验证码"

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 175
    new-instance v1, Lcom/codemao/nemo/activity/login/FindPswAction$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/login/FindPswAction$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/login/FindPswAction;)V

    new-instance v2, Lcom/codemao/nemo/activity/login/FindPswAction$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/login/FindPswAction$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/login/FindPswAction;)V

    invoke-static {v1, v2, v0}, Lcn/codemao/android/account/CodeMaoAccount;->checkoutResetTicket(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;Lcn/codemao/android/account/bean/TicketCheckoutVO;)V

    return-void
.end method

.method private static final checkCode$lambda$3(Lcom/codemao/nemo/activity/login/FindPswAction;Lcn/codemao/android/account/bean/TicketResult;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/TicketResult;->getTicket()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s.ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/FindPswAction;->toResetPassWord(Ljava/lang/String;)V

    return-void
.end method

.method private static final checkCode$lambda$4(Lcom/codemao/nemo/activity/login/FindPswAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "验证码不正确："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    const-string v0, "AC3"

    .line 180
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "验证码输入不正确"

    if-eqz v0, :cond_33

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    goto :goto_47

    :cond_33
    const-string v0, "B_4"

    .line 181
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    goto :goto_47

    :cond_3f
    const-string p1, "s1"

    .line 182
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    :goto_47
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

    .line 145
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 146
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 149
    :cond_12
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/FindPswAction;->phone:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->isPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo p1, "请输入正确的手机号"

    .line 150
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_21
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/login/FindPswAction;->phone:Ljava/lang/String;

    new-instance v2, Lcom/codemao/nemo/activity/login/FindPswAction$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/login/FindPswAction$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/activity/login/FindPswAction;)V

    new-instance v3, Lcom/codemao/nemo/activity/login/FindPswAction$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, p0}, Lcom/codemao/nemo/activity/login/FindPswAction$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/FindPswAction;)V

    invoke-static {v0, v1, v2, v3}, Lcn/codemao/android/account/CodeMaoAccount;->getResetPasswordCaptcha(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private static final getBindCode$lambda$1(Lcom/codemao/nemo/activity/login/FindPswAction;Ljava/lang/String;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "验证码已发送"

    .line 153
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelayWithCheckmark(Ljava/lang/String;)V

    return-void
.end method

.method private static final getBindCode$lambda$2(Lkotlin/jvm/functions/Function0;Lcom/codemao/nemo/activity/login/FindPswAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "$onCancel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 155
    sget-object p0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "获取验证码失败:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    const-string p0, "AC3_1"

    .line 157
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    const-string/jumbo p0, "该手机号还未完成绑定"

    invoke-virtual {p1, p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    goto :goto_50

    :cond_3b
    const-string p0, "A_5"

    .line 158
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    const-string/jumbo p0, "请输入正确的手机号"

    invoke-virtual {p1, p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    goto :goto_50

    :cond_4a
    const-string/jumbo p0, "获取验证码失败，请重新尝试"

    .line 159
    invoke-virtual {p1, p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    :goto_50
    return-void
.end method

.method private final toResetPassWord(Ljava/lang/String;)V
    .registers 4

    .line 204
    new-instance v0, Lcom/codemao/nemo/activity/login/SetPasswordAction;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/codemao/nemo/activity/login/SetPasswordAction;-><init>(ILjava/lang/String;)V

    .line 205
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v1, "当前页改成设置密码"

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoginInputLayout;->editRequestFocuse()V

    .line 207
    :cond_17
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    if-eqz p1, :cond_23

    const-string/jumbo v1, "找回密码页"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->changePageAction(Lcom/codemao/nemo/activity/login/AccountLoginAction;Ljava/lang/String;)V

    :cond_23
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Lcn/codemao/android/account/CodeMaoAccount;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConfirmClick()V
    .registers 3

    .line 138
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v1, "点击找回密码"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->reportEvent(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 141
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/FindPswAction;->checkCode()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 126
    invoke-super {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onDestroy()V

    .line 127
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->onDestroy()V

    return-void
.end method

.method public onGetCaptchaClick(Lkotlin/jvm/functions/Function0;)V
    .registers 3
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

    const-string/jumbo v0, "获取验证码"

    .line 132
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->reportEvent(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-object v0, p0, Lcom/codemao/nemo/activity/login/FindPswAction;->phone:Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/FindPswAction;->getBindCode(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onInit()V
    .registers 6

    .line 34
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/account/CodeMaoAccount;->onCreate(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "找回密码"

    if-nez v0, :cond_18

    goto :goto_24

    :cond_18
    iget-boolean v2, p0, Lcom/codemao/nemo/activity/login/FindPswAction;->isRestPswd:Z

    if-eqz v2, :cond_20

    const-string/jumbo v2, "重置密码"

    goto :goto_21

    :cond_20
    move-object v2, v1

    :goto_21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :goto_24
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    const/high16 v3, 0x41b00000  # 22.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    :cond_30
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 41
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_4a

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0601af

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    :cond_4a
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_56

    const v3, 0x7f0e00f7

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/LoginInputLayout;->setFirstIconRes(I)V

    .line 44
    :cond_56
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_62

    const-string/jumbo v3, "手机号"

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextHint(Ljava/lang/String;)V

    .line 45
    :cond_62
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->setInputType(I)V

    .line 46
    :cond_6b
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_76

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextMaxLength(I)V

    .line 47
    :cond_76
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_80

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/LoginInputLayout;->setConfirmTextViewVisible(Z)V

    .line 49
    :cond_80
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_8c

    const v4, 0x7f0e00f4

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/view/LoginInputLayout;->setFirstIconRes(I)V

    .line 50
    :cond_8c
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_98

    const-string/jumbo v4, "验证码"

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextHint(Ljava/lang/String;)V

    .line 51
    :cond_98
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->setInputType(I)V

    .line 52
    :cond_a1
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_ab

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextMaxLength(I)V

    .line 53
    :cond_ab
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_b4

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->setConfirmTextViewVisible(Z)V

    .line 55
    :cond_b4
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomLeftTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    if-nez v0, :cond_bd

    goto :goto_c0

    :cond_bd
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :goto_c0
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomRightTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_c7

    goto :goto_ca

    :cond_c7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :goto_ca
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_d1

    goto :goto_d4

    :cond_d1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_d4
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_db

    goto :goto_e4

    :cond_db
    iget-boolean v2, p0, Lcom/codemao/nemo/activity/login/FindPswAction;->isRestPswd:Z

    if-eqz v2, :cond_e1

    const-string v1, "下一步"

    :cond_e1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_e4
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_eb

    goto :goto_ee

    :cond_eb
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    :goto_ee
    new-instance v0, Lcom/codemao/nemo/activity/login/FindPswAction$onInit$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/login/FindPswAction$onInit$textWatcher$1;-><init>(Lcom/codemao/nemo/activity/login/FindPswAction;)V

    .line 116
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v1

    if-nez v1, :cond_fa

    goto :goto_fd

    :cond_fa
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->setTextWatcher(Landroid/text/TextWatcher;)V

    .line 117
    :goto_fd
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v1

    if-nez v1, :cond_104

    goto :goto_107

    :cond_104
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->setTextWatcher(Landroid/text/TextWatcher;)V

    :goto_107
    return-void
.end method

.method public final onMainStart(Lcom/codemao/nemo/event/MainStartEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_9
    return-void
.end method

.method public final onResetSuccess(Lcom/codemao/nemo/event/ResetPasswordEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_9
    return-void
.end method
