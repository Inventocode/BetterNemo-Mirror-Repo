.class public Lcom/codemao/nemo/activity/LoginActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "LoginActivity.java"


# instance fields
.field backImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public canClickBtn:Z

.field cbPolicy:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field private dismissLoadingRunnable:Ljava/lang/Runnable;

.field private errorString:Ljava/lang/String;

.field public fromFirst:Z

.field private isFinished:Z

.field private isFirstIn:Z

.field public isPlayVideoError:Z

.field private isVisitor:Z

.field ivAccount:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivCode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivQQ:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivWx:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field iv_cover:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llPolicy:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ll_other_way:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field private mAgreeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserInfoVO:Lcn/codemao/android/account/bean/UserInfoVO;

.field rlAccount:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlWX:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tryItOut:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvAccount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvChange:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvPolicy:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvWx:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private type:I

.field vShadow:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field video:Landroid/widget/VideoView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private wechatPop:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;


# direct methods
.method public static synthetic $r8$lambda$2BrtuIgmQOTlausyFNf-_EtTrUg(Lcom/codemao/nemo/activity/LoginActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->lambda$showForbidden$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X-vC1KpNBt5isAE7GLzoqwNwLLk(Lcom/codemao/nemo/activity/LoginActivity;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/LoginActivity;->lambda$fetchAgreeIds$4(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gnhHIooiP3rtveh9W5y_Gd6RPAY(Lcom/codemao/nemo/activity/LoginActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ui35rjzykjb_8Jy62roou96yzVM(Lcom/codemao/nemo/activity/LoginActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ylOqGSPN2o2hU79Nk2snJKlEbp0(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->lambda$new$3()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 96
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->isVisitor:Z

    .line 129
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->isFinished:Z

    const/4 v1, 0x1

    .line 130
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->isFirstIn:Z

    .line 131
    iput v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->type:I

    const-string v0, ""

    .line 185
    iput-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->errorString:Ljava/lang/String;

    .line 643
    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->dismissLoadingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->bbkLogin()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->fitPhoneSize()V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->fetchUserRegisterInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/LoginActivity;->activityUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/activity/LoginActivity;)Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/codemao/nemo/activity/LoginActivity;->wechatPop:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;ZZ)V
    .registers 4

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/LoginActivity;->getAuthInformation(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/activity/LoginActivity;Lcn/codemao/android/account/bean/AuthResultVO;ZZ)V
    .registers 4

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/LoginActivity;->checkInformation(Lcn/codemao/android/account/bean/AuthResultVO;ZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/codemao/nemo/activity/LoginActivity;Z)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->toMain(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;J)V
    .registers 4

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/activity/LoginActivity;->setData(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/codemao/nemo/activity/LoginActivity;)Z
    .registers 1

    .line 96
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/LoginActivity;->isFinished:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->checkPrivacy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->showFirstAnim()V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->showSecAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->showAnim()V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/LoginActivity;)Ljava/util/List;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/codemao/nemo/activity/LoginActivity;->mAgreeIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/codemao/nemo/activity/LoginActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->mAgreeIds:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/LoginActivity;I)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->performClick(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/codemao/nemo/activity/LoginActivity;Lcn/codemao/android/account/bean/UserInfoVO;)Lcn/codemao/android/account/bean/UserInfoVO;
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->mUserInfoVO:Lcn/codemao/android/account/bean/UserInfoVO;

    return-object p1
.end method

.method static synthetic access$800(Lcom/codemao/nemo/activity/LoginActivity;)Z
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->loginFail()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 1

    .line 96
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->hideLoading()V

    return-void
.end method

.method private activityUser(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x1

    .line 970
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->isFirstLogin:Z

    .line 971
    iget-boolean v7, p0, Lcom/codemao/nemo/activity/LoginActivity;->isVisitor:Z

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startActivity(Landroid/content/Context;IZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 972
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method private bbkLogin()V
    .registers 5

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-步步高登录"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v2

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 807
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 808
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 811
    :cond_52
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->showLoading()V

    .line 812
    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity$12;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/LoginActivity$12;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$13;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$13;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-static {p0, v0, v1}, Lcn/codemao/android/account/CodeMaoAccount;->loginByBBK(Landroid/app/Activity;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private checkInformation(Lcn/codemao/android/account/bean/AuthResultVO;ZZ)V
    .registers 5

    .line 1008
    invoke-virtual {p1}, Lcn/codemao/android/account/bean/AuthResultVO;->getPhone_number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcn/codemao/android/account/bean/AuthResultVO;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 1009
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1010
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateHasPhone(Z)V

    const/4 p1, 0x3

    .line 1011
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->isVisitor:Z

    invoke-static {p0, p1, p2, p3, v0}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startActivity(Landroid/content/Context;IZZZ)V

    .line 1012
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_35

    :cond_2e
    const/4 p1, 0x1

    .line 1014
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateHasPhone(Z)V

    .line 1015
    invoke-direct {p0, p3}, Lcom/codemao/nemo/activity/LoginActivity;->toMain(Z)V

    :goto_35
    return-void
.end method

.method private checkPolicy()Z
    .registers 2

    .line 1184
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->cbPolicy:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const-string/jumbo v0, "请同意用户服务协议和隐私协议"

    .line 1187
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0
.end method

.method private checkPrivacy(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 977
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->isFirstLogin:Z

    .line 978
    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity$19;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/LoginActivity$19;-><init>(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/codemao/nemo/http/PolicyUtils;->checkPolicy(Lcom/codemao/nemo/http/LocalNetCallBack;)V

    return-void
.end method

.method private fetchAgreeIds(I)V
    .registers 5

    .line 731
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->mAgreeIds:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 732
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->performClick(I)V

    return-void

    :cond_8
    const/4 v0, 0x1

    .line 735
    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/LoginActivity$11;-><init>(Lcom/codemao/nemo/activity/LoginActivity;I)V

    new-instance v2, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/activity/LoginActivity;I)V

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/CodeMaoAccount;->getProtocols(ZLcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private fetchUserRegisterInfo(Ljava/lang/String;)V
    .registers 6

    .line 1081
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/UserService;->getUserRegisterInfo()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    .line 1082
    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1083
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1084
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$22;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/LoginActivity$22;-><init>(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private fitPhoneSize()V
    .registers 9

    .line 251
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v2, v1

    const v3, 0x400a94d2

    mul-float v2, v2, v3

    int-to-float v4, v0

    const/high16 v5, 0x40000000  # 2.0f

    const/4 v6, 0x0

    cmpl-float v7, v2, v4

    if-lez v7, :cond_34

    float-to-int v2, v2

    sub-int v0, v2, v0

    int-to-float v0, v0

    .line 263
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 264
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 265
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 269
    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v1, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    neg-float v0, v0

    div-float/2addr v0, v5

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setTranslationY(F)V

    goto :goto_4e

    :cond_34
    div-float/2addr v4, v3

    float-to-int v2, v4

    sub-int v1, v2, v1

    int-to-float v1, v1

    .line 280
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 281
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 282
    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 283
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    neg-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setTranslationX(F)V

    :goto_4e
    return-void
.end method

.method private getAuthInformation(Ljava/lang/String;ZZ)V
    .registers 5

    .line 992
    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity$20;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/codemao/nemo/activity/LoginActivity$20;-><init>(Lcom/codemao/nemo/activity/LoginActivity;Ljava/lang/String;ZZ)V

    new-instance p1, Lcom/codemao/nemo/activity/LoginActivity$21;

    invoke-direct {p1, p0, p3}, Lcom/codemao/nemo/activity/LoginActivity$21;-><init>(Lcom/codemao/nemo/activity/LoginActivity;Z)V

    invoke-static {v0, p1}, Lcn/codemao/android/account/CodeMaoAccount;->getPrivacyInfo(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private hideLoading()V
    .registers 3

    .line 658
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->backImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 659
    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->dismissLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 661
    :cond_9
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->isFinished:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-eqz v0, :cond_14

    .line 662
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_14
    return-void
.end method

.method private initPolicy()V
    .registers 6

    .line 1136
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v1, "阅读并同意《用户协议》、《隐私政策》、《儿童隐私保护协议》"

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->tvPolicy:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1138
    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$23;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$23;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    const/4 v2, 0x5

    const/16 v3, 0xb

    const/16 v4, 0x21

    .line 1151
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1152
    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$24;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$24;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    const/16 v2, 0xc

    const/16 v3, 0x12

    .line 1165
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1166
    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$25;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$25;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    const/16 v2, 0x13

    const/16 v3, 0x1d

    .line 1179
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1180
    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->tvPolicy:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initViewSize()V
    .registers 5

    .line 203
    invoke-static {p0}, Lcom/codemao/nemo/util/ScreenUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    const v0, 0x7f0a0369

    .line 204
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 205
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->isBBK()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 206
    iget-object v2, p0, Lcom/codemao/nemo/activity/LoginActivity;->ivCode:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42400000  # 48.0f

    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    new-instance v2, Lcom/codemao/nemo/activity/LoginActivity$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/LoginActivity$1;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_49

    .line 215
    :cond_33
    iget-object v2, p0, Lcom/codemao/nemo/activity/LoginActivity;->ivCode:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42d80000  # 108.0f

    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const/16 v2, 0x8

    .line 216
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    :cond_49
    :goto_49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "fromFirst"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->fromFirst:Z

    .line 220
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setClickable(Z)V

    .line 222
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getCanPlayVideo()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 223
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$2;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_7d

    .line 236
    :cond_6b
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->iv_cover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->isPlayVideoError:Z

    .line 238
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->iv_cover:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$3;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_7d
    return-void
.end method

.method private synthetic lambda$fetchAgreeIds$4(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 754
    iget-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity;->mAgreeIds:Ljava/util/List;

    if-eqz p2, :cond_8

    .line 755
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_10

    .line 757
    :cond_8
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity;->mAgreeIds:Ljava/util/List;

    .line 759
    :goto_10
    iget-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity;->mAgreeIds:Ljava/util/List;

    const-string p3, "-1"

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->performClick(I)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .registers 2

    .line 644
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-eqz v0, :cond_7

    .line 645
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .registers 2

    const-string p1, "https://shimo.im/forms/tdpXgPKJVHVKtJx8/fill"

    .line 539
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/WebUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .registers 4

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击返回"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 556
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$showForbidden$2(Landroid/view/View;)V
    .registers 2

    const-string p1, "https://shimo.im/forms/tdpXgPKJVHVKtJx8/fill"

    .line 598
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/WebUtil;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private loginFail()Z
    .registers 3

    .line 1124
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string/jumbo v0, "登录失败"

    .line 1125
    invoke-static {p0, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1126
    invoke-static {v1}, Lcom/codemao/nemo/util/LocalUserHelper;->logout(Z)V

    const/4 v0, 0x1

    return v0

    :cond_12
    return v1
.end method

.method private performClick(I)V
    .registers 7

    sparse-switch p1, :sswitch_data_72

    goto :goto_71

    .line 781
    :sswitch_4
    invoke-static {p0}, Lcom/codemao/nemo/util/ScreenUtils;->isPad(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 782
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->scanWexinCode()V

    goto :goto_71

    .line 784
    :cond_e
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->wxLogin()V

    goto :goto_71

    .line 788
    :sswitch_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-账号登录"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 789
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 791
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->isVisitor:Z

    invoke-static {p0, v1, p1}, Lcom/codemao/nemo/activity/login/AccountLoginActivityV3;->startActivity(Landroid/content/Context;IZ)V

    goto :goto_71

    .line 778
    :sswitch_60
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->qqlogin()V

    goto :goto_71

    .line 795
    :sswitch_64
    invoke-static {p0}, Lcom/codemao/nemo/util/ScreenUtils;->isPad(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 796
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->wxLogin()V

    goto :goto_71

    .line 798
    :cond_6e
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->scanWexinCode()V

    :goto_71
    return-void

    :sswitch_data_72
    .sparse-switch
        0x7f0a0380 -> :sswitch_64
        0x7f0a03f7 -> :sswitch_60
        0x7f0a0625 -> :sswitch_12
        0x7f0a066d -> :sswitch_4
    .end sparse-switch
.end method

.method private qqlogin()V
    .registers 5

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-qq登录"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v2

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 850
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 851
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 854
    :cond_52
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->showLoading()V

    .line 855
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->mAgreeIds:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$14;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$14;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    new-instance v2, Lcom/codemao/nemo/activity/LoginActivity$15;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/LoginActivity$15;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcn/codemao/android/account/CodeMaoAccount;->loginByQQ(Landroid/app/Activity;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method

.method private scanWexinCode()V
    .registers 6

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-扫码登录"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 934
    new-instance v0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/codemao/nemo/activity/LoginActivity$18;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/LoginActivity$18;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$LoginResultListener;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->wechatPop:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    .line 959
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 961
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 962
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 963
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->wechatPop:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    .line 964
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private setCookie(Ljava/lang/String;)V
    .registers 6

    .line 1040
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1041
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 1042
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 1043
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 1044
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 1045
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "BBL-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1046
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object p1

    .line 1048
    :cond_23
    sget-object v1, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ConfigVO;->getApi()Lcom/codemao/nemo/bean/ApiVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ApiVO;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1049
    sget-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_DEBUG:Z

    if-eqz v2, :cond_46

    .line 1050
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test-authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 1051
    :cond_46
    sget-boolean v2, Lcom/codemao/nemo/util/AppConstants;->IS_RELEASE:Z

    if-eqz v2, :cond_5f

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 1054
    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "staging-authorization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :goto_73
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private setData(Ljava/lang/String;J)V
    .registers 6

    .line 1060
    invoke-static {}, Lcom/codemao/nemo/util/BcmHelper;->initPath()V

    .line 1062
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1063
    new-instance v0, Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;-><init>()V

    .line 1064
    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->mUserInfoVO:Lcn/codemao/android/account/bean/UserInfoVO;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->clone(Lcn/codemao/android/account/bean/UserInfoVO;)V

    .line 1065
    invoke-static {v0, p2, p3}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserInfo(Lcom/codemao/nemo/bean/LocalUserInfo;J)V

    :cond_16
    const-string p2, "7"

    .line 1067
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    .line 1068
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateIsBBKLogin(Z)V

    goto :goto_27

    :cond_23
    const/4 p1, 0x0

    .line 1070
    invoke-static {p1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateIsBBKLogin(Z)V

    .line 1072
    :goto_27
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->setCookie(Ljava/lang/String;)V

    return-void
.end method

.method private setErrorListener()V
    .registers 3

    .line 364
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$6;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method private showAnim()V
    .registers 25

    move-object/from16 v0, p0

    .line 423
    iget-object v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->rlAccount:Landroid/widget/LinearLayout;

    const/high16 v2, 0x428c0000  # 70.0f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 424
    iget-object v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->llPolicy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 425
    iget-object v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->ll_other_way:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 426
    iget-object v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->rlWX:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 427
    iget-object v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->tvAccount:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 428
    iget-object v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->ivAccount:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 430
    iget-object v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->ivWx:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 431
    iget-object v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->tvWx:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 433
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 435
    iget-object v3, v0, Lcom/codemao/nemo/activity/LoginActivity;->rlAccount:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    const-wide/16 v6, 0x1f4

    invoke-static {v3, v4, v5, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 436
    iget-object v8, v0, Lcom/codemao/nemo/activity/LoginActivity;->tvAccount:Landroid/widget/TextView;

    invoke-static {v8, v4, v5, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 437
    iget-object v9, v0, Lcom/codemao/nemo/activity/LoginActivity;->ivAccount:Landroid/widget/ImageView;

    invoke-static {v9, v4, v5, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 438
    iget-object v10, v0, Lcom/codemao/nemo/activity/LoginActivity;->llPolicy:Landroid/widget/LinearLayout;

    invoke-static {v10, v4, v5, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 439
    iget-object v11, v0, Lcom/codemao/nemo/activity/LoginActivity;->rlWX:Landroid/widget/LinearLayout;

    invoke-static {v11, v4, v5, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-wide/16 v12, 0x64

    .line 440
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 441
    iget-object v14, v0, Lcom/codemao/nemo/activity/LoginActivity;->ivWx:Landroid/widget/ImageView;

    invoke-static {v14, v4, v5, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 442
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 443
    iget-object v15, v0, Lcom/codemao/nemo/activity/LoginActivity;->tvWx:Landroid/widget/TextView;

    invoke-static {v15, v4, v5, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 444
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 445
    iget-object v12, v0, Lcom/codemao/nemo/activity/LoginActivity;->vShadow:Landroid/view/View;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 446
    iget-object v13, v0, Lcom/codemao/nemo/activity/LoginActivity;->ll_other_way:Landroid/view/View;

    invoke-static {v13, v4, v5, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 449
    iget-object v13, v0, Lcom/codemao/nemo/activity/LoginActivity;->rlAccount:Landroid/widget/LinearLayout;

    invoke-static {v13, v2, v4, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getTransYAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move-object/from16 v18, v1

    .line 450
    iget-object v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->tvAccount:Landroid/widget/TextView;

    invoke-static {v1, v2, v4, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getTransYAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object/from16 v19, v1

    .line 451
    iget-object v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->ivAccount:Landroid/widget/ImageView;

    invoke-static {v1, v2, v4, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getTransYAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object/from16 v20, v1

    .line 452
    iget-object v1, v0, Lcom/codemao/nemo/activity/LoginActivity;->llPolicy:Landroid/widget/LinearLayout;

    invoke-static {v1, v2, v4, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getTransYAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object/from16 v21, v15

    .line 453
    iget-object v15, v0, Lcom/codemao/nemo/activity/LoginActivity;->rlWX:Landroid/widget/LinearLayout;

    invoke-static {v15, v2, v4, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getTransYAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v23, v3

    const-wide/16 v2, 0x64

    .line 454
    invoke-virtual {v15, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    move-object/from16 v16, v14

    .line 455
    iget-object v14, v0, Lcom/codemao/nemo/activity/LoginActivity;->ivWx:Landroid/widget/ImageView;

    move-object/from16 v17, v9

    const/high16 v9, 0x428c0000  # 70.0f

    invoke-static {v14, v9, v4, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getTransYAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 456
    invoke-virtual {v15, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    move-object/from16 v22, v14

    .line 457
    iget-object v14, v0, Lcom/codemao/nemo/activity/LoginActivity;->tvWx:Landroid/widget/TextView;

    invoke-static {v14, v9, v4, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getTransYAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 458
    invoke-virtual {v15, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 459
    iget-object v2, v0, Lcom/codemao/nemo/activity/LoginActivity;->ll_other_way:Landroid/view/View;

    invoke-static {v2, v9, v4, v6, v7}, Lcom/codemao/creativecenter/utils/AnimUtil;->getTransYAnim(Landroid/view/View;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/16 v3, 0x11

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v23, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    aput-object v10, v3, v1

    const/4 v1, 0x4

    aput-object v12, v3, v1

    const/4 v1, 0x5

    aput-object v5, v3, v1

    const/4 v1, 0x6

    aput-object v2, v3, v1

    const/4 v1, 0x7

    aput-object v11, v3, v1

    const/16 v1, 0x8

    aput-object v15, v3, v1

    const/16 v1, 0x9

    aput-object v8, v3, v1

    const/16 v1, 0xa

    aput-object v17, v3, v1

    const/16 v1, 0xb

    aput-object v16, v3, v1

    const/16 v1, 0xc

    aput-object v21, v3, v1

    const/16 v1, 0xd

    aput-object v19, v3, v1

    const/16 v1, 0xe

    aput-object v20, v3, v1

    const/16 v1, 0xf

    aput-object v22, v3, v1

    const/16 v1, 0x10

    aput-object v14, v3, v1

    move-object/from16 v1, v18

    .line 461
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 469
    new-instance v2, Lcom/codemao/nemo/activity/LoginActivity$8;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/activity/LoginActivity$8;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 482
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private showFirstAnim()V
    .registers 5

    .line 330
    invoke-static {p0}, Lcom/codemao/nemo/util/ScreenUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f110014

    const-string v2, "/"

    const-string v3, "android.resource://"

    if-eqz v0, :cond_27

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    .line 333
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    :goto_40
    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 339
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$4;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 345
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->setErrorListener()V

    .line 347
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$5;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private showLoading()V
    .registers 5

    .line 650
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-nez v0, :cond_e

    .line 651
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v1, "正在登录..."

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 653
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    .line 654
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->backImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->dismissLoadingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showSecAnim()V
    .registers 5

    .line 400
    invoke-static {p0}, Lcom/codemao/nemo/util/ScreenUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f110015

    const-string v2, "/"

    const-string v3, "android.resource://"

    if-eqz v0, :cond_27

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    .line 403
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    :goto_40
    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 406
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$7;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$7;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 413
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->setErrorListener()V

    .line 416
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->showAnim()V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;I)V
    .registers 3

    .line 105
    sput p1, Lcom/codemao/nemo/event/LoginEvent;->type:I

    .line 106
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;ZI)V
    .registers 4

    .line 118
    sput p2, Lcom/codemao/nemo/event/LoginEvent;->type:I

    .line 119
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "fromFirst"

    .line 120
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private toMain(Z)V
    .registers 4

    .line 1020
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/LoginEvent;

    invoke-direct {v1}, Lcom/codemao/nemo/event/LoginEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1021
    sget v0, Lcom/codemao/nemo/event/LoginEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 1022
    invoke-static {p0, p1}, Lcom/codemao/nemo/MainActivityV2;->startMainActivityV2(Landroid/content/Context;Z)V

    .line 1024
    :cond_14
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method private wxLogin()V
    .registers 6

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-微信登录"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 893
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 894
    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 897
    :cond_52
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->showLoading()V

    .line 898
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->mAgreeIds:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$16;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$16;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    new-instance v2, Lcom/codemao/nemo/activity/LoginActivity$17;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/LoginActivity$17;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcn/codemao/android/account/CodeMaoAccount;->loginByWeChat(Landroid/content/Context;Ljava/util/List;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 196
    invoke-static {p0}, Lcom/codemao/nemo/util/ScreenUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d004e

    return v0

    :cond_a
    const v0, 0x7f0d004d

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "登录页"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1029
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2b5d

    if-eq p1, v0, :cond_b

    const/16 v0, 0x2776

    if-ne p1, v0, :cond_e

    .line 1031
    :cond_b
    invoke-static {p1, p2, p3}, Lcn/codemao/android/account/CodeMaoAccount;->onActivityResult(IILandroid/content/Intent;)V

    :cond_e
    const/16 p1, 0x63

    if-ne p2, p1, :cond_15

    .line 1034
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    :cond_15
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 487
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 488
    invoke-static {p0}, Lcn/codemao/android/account/CodeMaoAccount;->bindBBK(Landroid/app/Activity;)V

    .line 489
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->rlAccount:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 490
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->vShadow:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 491
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->ll_other_way:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 492
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->rlWX:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 493
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->tvAccount:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 494
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->ivAccount:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 495
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->tvWx:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 496
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->ivWx:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 497
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->llPolicy:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 498
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->initPolicy()V

    .line 499
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 500
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->type:I

    .line 501
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "errorString"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->errorString:Ljava/lang/String;

    .line 502
    sget p1, Lcom/codemao/nemo/event/LoginEvent;->type:I

    const/4 v0, 0x2

    if-ne v0, p1, :cond_63

    .line 503
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/util/ActivityUtils;->popAllActivityExceptOne()V

    .line 505
    :cond_63
    sget-boolean p1, Lcom/codemao/nemo/util/AppConstants;->IS_RELEASE:Z

    const/16 v2, 0x8

    if-nez p1, :cond_7e

    sget-boolean p1, Lcom/codemao/nemo/util/AppConstants;->IS_STAGING:Z

    if-eqz p1, :cond_6e

    goto :goto_7e

    .line 509
    :cond_6e
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->tvChange:Landroid/widget/TextView;

    new-instance v3, Lcom/codemao/nemo/activity/LoginActivity$9;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/LoginActivity$9;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->tvChange:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_83

    .line 506
    :cond_7e
    :goto_7e
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->tvChange:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    :goto_83
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    if-eqz p1, :cond_aa

    .line 519
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->mUserInfoVO:Lcn/codemao/android/account/bean/UserInfoVO;

    .line 520
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    if-eqz p1, :cond_a6

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->isBBKLogin()Z

    move-result p1

    if-eqz p1, :cond_a6

    const-wide/16 v3, 0x0

    const-string p1, "7"

    .line 521
    invoke-direct {p0, p1, v3, v4}, Lcom/codemao/nemo/activity/LoginActivity;->setData(Ljava/lang/String;J)V

    .line 523
    :cond_a6
    invoke-direct {p0, v1}, Lcom/codemao/nemo/activity/LoginActivity;->toMain(Z)V

    goto :goto_c5

    .line 525
    :cond_aa
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/MainApplication;->getOutJumUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_c2

    const-string/jumbo p1, "请先完成登录"

    .line 526
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 527
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/codemao/nemo/MainApplication;->setOutJumUri(Landroid/net/Uri;)V

    .line 529
    :cond_c2
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->initViewSize()V

    .line 533
    :goto_c5
    iget p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->type:I

    if-ne p1, v0, :cond_107

    .line 534
    new-instance p1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    .line 535
    invoke-virtual {p1, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightTextVisible(Z)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string v0, ""

    .line 536
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    .line 537
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->errorString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f12016e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_ee

    :cond_ec
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->errorString:Ljava/lang/String;

    :goto_ee
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string/jumbo v0, "我要申诉"

    .line 538
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    .line 539
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 540
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 543
    :cond_107
    sget p1, Lcom/codemao/nemo/event/LoginEvent;->type:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_120

    const-string/jumbo p1, "登录页（游客）"

    .line 544
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 545
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->isVisitor:Z

    .line 546
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->backImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->tryItOut:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_132

    .line 549
    :cond_120
    iput-boolean v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->isVisitor:Z

    const-string/jumbo p1, "登录页"

    .line 550
    invoke-virtual {p0, p1}, Lcom/giu/xzz/BaseActivity;->setViewName(Ljava/lang/String;)V

    .line 551
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->backImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->tryItOut:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    :goto_132
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity;->backImageView:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    sget-object p1, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->INSTANCE:Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;

    invoke-virtual {p1, p0}, Lcom/codemao/nemo/biz/user/kidsdialog/KidsFourteenDialog;->showSelectFourteen(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const/4 v0, 0x1

    .line 605
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->isFinished:Z

    .line 606
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 607
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->onDestroy()V

    .line 608
    invoke-static {p0}, Lcn/codemao/android/account/CodeMaoAccount;->unbindBBK(Landroid/app/Activity;)V

    .line 609
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-eqz v0, :cond_17

    .line 610
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 612
    :cond_17
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->backImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_20

    .line 613
    iget-object v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->dismissLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 624
    :cond_20
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_27

    .line 625
    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 628
    :cond_27
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-eqz v0, :cond_2e

    .line 629
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 632
    :cond_2e
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->wechatPop:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    if-eqz v0, :cond_35

    .line 633
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 635
    :cond_35
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onMainStart(Lcom/codemao/nemo/event/MainStartEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1119
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 704
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->onPause()V

    .line 706
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->isPlayVideoError:Z

    if-nez v1, :cond_e

    .line 707
    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 712
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->iv_cover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onResume()V
    .registers 5

    .line 668
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onResume()V

    .line 676
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Lcom/codemao/nemo/activity/LoginActivity;->isPlayVideoError:Z

    if-nez v1, :cond_13

    .line 677
    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 678
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 686
    :cond_13
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->isFirstIn:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->isPlayVideoError:Z

    if-nez v0, :cond_27

    .line 687
    iget-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->iv_cover:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$10;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$10;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27
    const/4 v0, 0x0

    .line 696
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->isFirstIn:Z

    return-void
.end method

.method public onTryItOutClicked(Landroid/view/View;)V
    .registers 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 721
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->checkPolicy()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 724
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string/jumbo v0, "登录页-点击体验一下"

    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 725
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击体验一下"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 727
    invoke-direct {p0, v1}, Lcom/codemao/nemo/activity/LoginActivity;->toMain(Z)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 768
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->canClickBtn:Z

    if-nez v0, :cond_5

    return-void

    .line 769
    :cond_5
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->checkPolicy()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 772
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/LoginActivity;->fetchAgreeIds(I)V

    return-void
.end method

.method public showForbidden()V
    .registers 4

    .line 592
    invoke-direct {p0}, Lcom/codemao/nemo/activity/LoginActivity;->hideLoading()V

    .line 593
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 594
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightTextVisible(Z)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, ""

    .line 595
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    .line 596
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "我要申诉"

    .line 597
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/activity/LoginActivity;)V

    .line 598
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/LoginActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 599
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
