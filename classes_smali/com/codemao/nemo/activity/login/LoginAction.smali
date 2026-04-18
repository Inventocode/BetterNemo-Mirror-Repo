.class public final Lcom/codemao/nemo/activity/login/LoginAction;
.super Lcom/codemao/nemo/activity/login/AccountLoginAction;
.source "LoginAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/activity/login/LoginAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginAction.kt\ncom/codemao/nemo/activity/login/LoginAction\n+ 2 ViewClick.kt\ncom/ljwx/baseapp/extensions/ViewClickKt\n*L\n1#1,354:1\n15#2,7:355\n15#2,7:362\n*S KotlinDebug\n*F\n+ 1 LoginAction.kt\ncom/codemao/nemo/activity/login/LoginAction\n*L\n328#1:355,7\n334#1:362,7\n*E\n"
.end annotation


# static fields
.field private static final weakPassword:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private passwordDialog:Landroid/app/Dialog;

.field private serverPasswordWeak:Ljava/lang/Boolean;

.field private userPassword:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$5gKcg9AtcHRFYHZFC5HLKHbE8n0(Lcom/codemao/nemo/activity/login/LoginAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/activity/login/LoginAction;->login$lambda$4(Lcom/codemao/nemo/activity/login/LoginAction;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6VfZTBdGOwHGjMPGPZdKTVQpDjc(Lcom/codemao/nemo/activity/login/LoginAction;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->onInit$lambda$2(Lcom/codemao/nemo/activity/login/LoginAction;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1IvZTm1hbK9OMAyjQUwg5DTnHc(Lcom/codemao/nemo/activity/login/LoginAction;Lcn/codemao/android/account/bean/AccountLoginResultVO;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->login$lambda$3(Lcom/codemao/nemo/activity/login/LoginAction;Lcn/codemao/android/account/bean/AccountLoginResultVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n1Ytfmhcz-ShKbxC7JfraW3i1Ic(Lcom/codemao/nemo/activity/login/LoginAction;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->onInit$lambda$1(Lcom/codemao/nemo/activity/login/LoginAction;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 30

    new-instance v0, Lcom/codemao/nemo/activity/login/LoginAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/activity/login/LoginAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "qwe5201314"

    const-string v3, "qwe123456"

    const-string v4, "superman"

    const-string v5, "sunshine"

    const-string v6, "computer"

    const-string v7, "esx123456"

    const-string v8, "qwertyuiop123"

    const-string v9, "li123456"

    const-string v10, "asdfghjkl"

    const-string v11, "123456qwe"

    const-string v12, "trustno1"

    const-string v13, "a1234567"

    const-string v14, "abc123456"

    const-string v15, "a1111111"

    const-string v16, "swcz123456"

    const-string v17, "1234567a"

    const-string v18, "cyzx1234"

    const-string v19, "liu123456"

    const-string v20, "1q2w3e4r5t"

    const-string v21, "ab123456"

    const-string v22, "12345678a"

    const-string v23, "michelle"

    const-string v24, "123456"

    const-string v25, "starwars"

    const-string v26, "princess"

    const-string v27, "password"

    const-string v28, "123456abc"

    const-string v29, "123456789q"

    .line 84
    filled-new-array/range {v2 .. v29}, [Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/activity/login/LoginAction;->weakPassword:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkOldPassword(Lcom/codemao/nemo/activity/login/LoginAction;Z)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->checkOldPassword(Z)V

    return-void
.end method

.method public static final synthetic access$checkPolicy(Lcom/codemao/nemo/activity/login/LoginAction;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/LoginAction;->checkPolicy()V

    return-void
.end method

.method public static final synthetic access$getPasswordDialog$p(Lcom/codemao/nemo/activity/login/LoginAction;)Landroid/app/Dialog;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/activity/login/LoginAction;->passwordDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static final synthetic access$goMain(Lcom/codemao/nemo/activity/login/LoginAction;Z)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->goMain(Z)V

    return-void
.end method

.method public static final synthetic access$setData(Lcom/codemao/nemo/activity/login/LoginAction;J)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/login/LoginAction;->setData(J)V

    return-void
.end method

.method private final checkOldPassword(Z)V
    .registers 4

    .line 287
    iget-object v0, p0, Lcom/codemao/nemo/activity/login/LoginAction;->serverPasswordWeak:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 288
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v1, "弱密码提示,服务端"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 290
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->showWeakPasswordDialog(Landroid/content/Context;Z)V

    :cond_3c
    return-void

    .line 294
    :cond_3d
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^(?=.*[A-Za-z])(?=.*\\d).{8,20}$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/codemao/nemo/activity/login/LoginAction;->userPassword:Ljava/lang/String;

    if-eqz v1, :cond_90

    .line 297
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 298
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v1, "非弱密码"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->goMain(Z)V

    goto :goto_93

    .line 301
    :cond_5d
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v1, "弱密码提示"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_93

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_93

    .line 303
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->showWeakPasswordDialog(Landroid/content/Context;Z)V

    goto :goto_93

    .line 307
    :cond_90
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->goMain(Z)V

    :cond_93
    :goto_93
    return-void
.end method

.method private final checkPolicy()V
    .registers 2

    .line 189
    new-instance v0, Lcom/codemao/nemo/activity/login/LoginAction$checkPolicy$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/login/LoginAction$checkPolicy$1;-><init>(Lcom/codemao/nemo/activity/login/LoginAction;)V

    invoke-static {v0}, Lcom/codemao/nemo/http/PolicyUtils;->checkPolicy(Lcom/codemao/nemo/http/LocalNetCallBack;)V

    return-void
.end method

.method private final fetchUserRegisterInfo()V
    .registers 5

    .line 209
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/UserService;->getUserRegisterInfo()Lio/reactivex/Observable;

    move-result-object v0

    .line 210
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 211
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/login/LoginAction$fetchUserRegisterInfo$1;-><init>(Lcom/codemao/nemo/activity/login/LoginAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private final goMain(Z)V
    .registers 5

    .line 272
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    .line 273
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-nez v1, :cond_54

    const-string v0, "4"

    .line 274
    invoke-static {v0, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendLoginEvent(Ljava/lang/String;Z)V

    .line 275
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {v1}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 276
    sget v0, Lcom/codemao/nemo/event/LoginEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 277
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v1, "跳转首页"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/codemao/nemo/MainActivityV2;->startMainActivityV2(Landroid/content/Context;Z)V

    .line 280
    :cond_3a
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v0, "关闭上一级页面"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p1

    const-class v0, Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/ActivityUtils;->killActivity(Ljava/lang/Class;)V

    .line 282
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object p1

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_54
    return-void
.end method

.method private final login()V
    .registers 6

    .line 157
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 158
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 161
    :cond_12
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_5d

    .line 162
    :cond_1f
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v1

    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Lcom/codemao/nemo/view/LoginInputLayout;->getEditTextStr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2c

    goto :goto_5d

    .line 163
    :cond_2c
    new-instance v2, Lcn/codemao/android/account/bean/LoginVO;

    invoke-direct {v2}, Lcn/codemao/android/account/bean/LoginVO;-><init>()V

    const-string v3, "T5qx9_w0"

    .line 164
    invoke-virtual {v2, v3}, Lcn/codemao/android/account/bean/LoginVO;->setPid(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2, v0}, Lcn/codemao/android/account/bean/LoginVO;->setIdentity(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2, v1}, Lcn/codemao/android/account/bean/LoginVO;->setPassword(Ljava/lang/String;)V

    const-string/jumbo v2, "正在登录..."

    .line 167
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialog(Ljava/lang/String;)V

    .line 168
    sget-object v2, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v3, "触发登录"

    invoke-virtual {v2, v3}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 169
    iput-object v1, p0, Lcom/codemao/nemo/activity/login/LoginAction;->userPassword:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/activity/login/LoginAction$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/login/LoginAction$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/activity/login/LoginAction;)V

    new-instance v4, Lcom/codemao/nemo/activity/login/LoginAction$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/activity/login/LoginAction$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/login/LoginAction;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcn/codemao/android/account/CodeMaoAccount;->loginByAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private static final login$lambda$3(Lcom/codemao/nemo/activity/login/LoginAction;Lcn/codemao/android/account/bean/AccountLoginResultVO;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/AccountLoginResultVO;->getAuth()Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/AccountLoginResultVO$AuthBean;->isIs_weak_password()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction;->serverPasswordWeak:Ljava/lang/Boolean;

    .line 172
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "登录成功,服务端判断是否弱密码:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/activity/login/LoginAction;->serverPasswordWeak:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/LoginAction;->fetchUserRegisterInfo()V

    return-void
.end method

.method private static final login$lambda$4(Lcom/codemao/nemo/activity/login/LoginAction;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    .line 176
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "登录失败："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_33

    .line 177
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_31

    goto :goto_33

    :cond_31
    const/4 v1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x1

    :goto_34
    if-eqz v1, :cond_37

    goto :goto_3c

    :cond_37
    const-string v1, "s1"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3c
    const-string p2, "AC3_2"

    .line 179
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    const-string/jumbo p1, "您所输入的账号/密码错误\n或已失效，请重置密码！"

    .line 180
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getConfirmBtn()Landroid/widget/TextView;

    move-result-object p0

    if-nez p0, :cond_51

    goto :goto_5b

    :cond_51
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_5b

    :cond_55
    const-string/jumbo p1, "登录失败，请重试"

    .line 183
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->showDialogDelay(Ljava/lang/String;)V

    :goto_5b
    return-void
.end method

.method private static final onInit$lambda$1(Lcom/codemao/nemo/activity/login/LoginAction;Landroid/view/View;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-忘记密码"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p1, "忘记密码"

    .line 116
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->reportEvent(Ljava/lang/String;)V

    .line 117
    sget-object p1, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->isVisitor()Z

    move-result p0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, p0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startActivity(Landroid/content/Context;IZ)V

    return-void
.end method

.method private static final onInit$lambda$2(Lcom/codemao/nemo/activity/login/LoginAction;Landroid/view/View;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-新用户注册"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p1, "新用户注册"

    .line 124
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->reportEvent(Ljava/lang/String;)V

    .line 125
    sget-object p1, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->Companion:Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->isVisitor()Z

    move-result p0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, p0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3$Companion;->startActivity(Landroid/content/Context;IZ)V

    return-void
.end method

.method private final setCookie(Ljava/lang/String;)V
    .registers 8

    .line 248
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 249
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 250
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 251
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 252
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 253
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

    .line 254
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getAccountToken()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    :cond_34
    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getApi()Lcom/codemao/nemo/bean/ApiVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ApiVO;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 258
    sget-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_DEBUG:Z

    if-eqz v2, :cond_57

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test-authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 261
    :cond_57
    sget-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_RELEASE:Z

    if-eqz v2, :cond_70

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    .line 265
    :cond_70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "staging-authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_84
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private final setData(J)V
    .registers 5

    .line 236
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    .line 237
    invoke-static {}, Lcom/codemao/nemo/util/BcmHelper;->initPath()V

    .line 239
    new-instance v1, Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/LocalUserInfo;-><init>()V

    .line 240
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->clone(Lcn/codemao/android/account/bean/UserInfoVO;)V

    const/4 v0, 0x0

    .line 241
    invoke-static {v0}, Lcom/codemao/nemo/util/LocalUserHelper;->updateIsBBKLogin(Z)V

    .line 242
    invoke-static {v1, p1, p2}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserInfo(Lcom/codemao/nemo/bean/LocalUserInfo;J)V

    .line 243
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getAccountToken()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/login/LoginAction;->setCookie(Ljava/lang/String;)V

    return-void
.end method

.method private final showWeakPasswordDialog(Landroid/content/Context;Z)V
    .registers 9

    .line 313
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->hideDialog()V

    .line 314
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    const-string v1, "inflate(\n            Lay…          false\n        )"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_19

    .line 315
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 314
    invoke-static {v0, v2, v3}, Lcom/codemao/nemo/databinding/DialogUserWeakPasswordTipsPadBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/nemo/databinding/DialogUserWeakPasswordTipsPadBinding;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_24

    .line 319
    :cond_19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 318
    invoke-static {v0, v2, v3}, Lcom/codemao/nemo/databinding/DialogUserWeakPasswordTipsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/nemo/databinding/DialogUserWeakPasswordTipsBinding;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    :goto_24
    iget-object v1, p0, Lcom/codemao/nemo/activity/login/LoginAction;->passwordDialog:Landroid/app/Dialog;

    if-nez v1, :cond_3a

    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f13035b

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 325
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 326
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 323
    :cond_3a
    iput-object v1, p0, Lcom/codemao/nemo/activity/login/LoginAction;->passwordDialog:Landroid/app/Dialog;

    .line 328
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0758

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "binding.root.findViewById<View>(R.id.sure)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$2;

    invoke-direct {v2, p1, p0}, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$2;-><init>(Landroid/content/Context;Lcom/codemao/nemo/activity/login/LoginAction;)V

    .line 20
    new-instance p1, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    const-wide/16 v4, 0x1f4

    invoke-direct {p1, v4, v5, v3, v2}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a02a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "binding.root.findViewById<View>(R.id.forbid)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$3;

    invoke-direct {v0, p0, p2}, Lcom/codemao/nemo/activity/login/LoginAction$showWeakPasswordDialog$3;-><init>(Lcom/codemao/nemo/activity/login/LoginAction;Z)V

    .line 20
    new-instance p2, Lcom/ljwx/baseapp/extensions/SingleClickListener;

    invoke-direct {p2, v4, v5, v3, v0}, Lcom/ljwx/baseapp/extensions/SingleClickListener;-><init>(JZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction;->passwordDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_7f

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_7f
    return-void
.end method


# virtual methods
.method public onConfirmClick()V
    .registers 6

    .line 149
    sget-object v0, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v1, "点击登录"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-点击登录"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->reportEvent(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/codemao/nemo/activity/login/LoginAction;->login()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 350
    invoke-super {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->onDestroy()V

    .line 351
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onInit()V
    .registers 5

    .line 92
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_14

    :cond_e
    const-string/jumbo v1, "用户登录"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_14
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    const/high16 v2, 0x41b00000  # 22.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    :cond_20
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getContext()Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 96
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0601af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_3a
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_46

    const v1, 0x7f0e00f8

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->setFirstIconRes(I)V

    .line 99
    :cond_46
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string/jumbo v1, "手机号/用户名"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextHint(Ljava/lang/String;)V

    .line 100
    :cond_52
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    const/16 v1, 0x14

    if-eqz v0, :cond_5d

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextMaxLength(I)V

    .line 101
    :cond_5d
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_67

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->setInputType(I)V

    .line 102
    :cond_67
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->setConfirmTextViewVisible(Z)V

    .line 104
    :cond_70
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_7c

    const v3, 0x7f0e00f5

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/LoginInputLayout;->setFirstIconRes(I)V

    .line 105
    :cond_7c
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_88

    const-string/jumbo v3, "密码"

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextHint(Ljava/lang/String;)V

    .line 106
    :cond_88
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_91

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->setEditTextMaxLength(I)V

    .line 107
    :cond_91
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_9b

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->setInputType(I)V

    .line 108
    :cond_9b
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->setConfirmTextViewVisible(Z)V

    .line 110
    :cond_a4
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_ab

    goto :goto_b0

    :cond_ab
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    :goto_b0
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomLeftTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_b7

    goto :goto_ba

    :cond_b7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :goto_ba
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomLeftTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_c1

    goto :goto_c7

    :cond_c1
    const-string/jumbo v1, "忘记密码"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_c7
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomLeftTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_d5

    new-instance v1, Lcom/codemao/nemo/activity/login/LoginAction$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/login/LoginAction$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/login/LoginAction;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    :cond_d5
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomRightTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_dc

    goto :goto_e2

    :cond_dc
    const-string/jumbo v1, "新用户注册"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_e2
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomRightTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_e9

    goto :goto_ec

    :cond_e9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_ec
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getBottomRightTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_fa

    new-instance v1, Lcom/codemao/nemo/activity/login/LoginAction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/login/LoginAction$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/login/LoginAction;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_fa
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_101

    goto :goto_107

    :cond_101
    const-string/jumbo v1, "登 录"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_107
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getConfirmBtn()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_10e

    goto :goto_111

    :cond_10e
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    :goto_111
    new-instance v0, Lcom/codemao/nemo/activity/login/LoginAction$onInit$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/login/LoginAction$onInit$textWatcher$1;-><init>(Lcom/codemao/nemo/activity/login/LoginAction;)V

    .line 144
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getFirstLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v1

    if-nez v1, :cond_11d

    goto :goto_120

    :cond_11d
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->setTextWatcher(Landroid/text/TextWatcher;)V

    .line 145
    :goto_120
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/login/AccountLoginAction;->getSecondLoginLayout()Lcom/codemao/nemo/view/LoginInputLayout;

    move-result-object v1

    if-nez v1, :cond_127

    goto :goto_12a

    :cond_127
    invoke-virtual {v1, v0}, Lcom/codemao/nemo/view/LoginInputLayout;->setTextWatcher(Landroid/text/TextWatcher;)V

    :goto_12a
    return-void
.end method

.method public final onResetSuccess(Lcom/codemao/nemo/event/ResetPasswordEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 344
    sget-object p1, Lcom/codemao/nemo/evolving/DGMLog;->INSTANCE:Lcom/codemao/nemo/evolving/DGMLog;

    const-string/jumbo v0, "监听到密码设置成功"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/evolving/DGMLog;->dLogin(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 345
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->logout(Z)V

    .line 346
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/LoginAction;->passwordDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_13
    return-void
.end method
