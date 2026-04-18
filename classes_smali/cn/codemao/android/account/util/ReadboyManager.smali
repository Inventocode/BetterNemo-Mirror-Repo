.class public Lcn/codemao/android/account/util/ReadboyManager;
.super Ljava/lang/Object;
.source "ReadboyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/util/ReadboyManager$Holder;
    }
.end annotation


# instance fields
.field private mAgreeProtocolIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

.field private mReadboySuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcom/readboy/personalsettingauth/data/UserInfoResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/ReadboyLoginResultVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/account/util/ReadboyManager$1;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcn/codemao/android/account/util/ReadboyManager;-><init>()V

    return-void
.end method

.method public static get()Lcn/codemao/android/account/util/ReadboyManager;
    .registers 1

    .line 46
    invoke-static {}, Lcn/codemao/android/account/util/ReadboyManager$Holder;->access$100()Lcn/codemao/android/account/util/ReadboyManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcn/codemao/android/account/util/ReadboyManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 143
    iput-object v0, p0, Lcn/codemao/android/account/util/ReadboyManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 144
    iput-object v0, p0, Lcn/codemao/android/account/util/ReadboyManager;->mReadboySuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    return-void
.end method

.method public getReadboyUid()Ljava/lang/String;
    .registers 2

    .line 122
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 123
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getReadboyUid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public getReadboyUserInfo(Landroidx/fragment/app/FragmentActivity;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcom/readboy/personalsettingauth/data/UserInfoResult;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 82
    iput-object p2, p0, Lcn/codemao/android/account/util/ReadboyManager;->mReadboySuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 83
    iput-object p3, p0, Lcn/codemao/android/account/util/ReadboyManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 85
    :try_start_4
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcn/codemao/android/account/readboy/MyRBStandardAuthActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_1a

    :catch_f
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    :goto_1a
    return-void
.end method

.method public isReadboyMachine()Z
    .registers 2

    .line 51
    invoke-static {}, Lcom/readboy/personalsettingauth/RBPersonalSettingAuthSDK;->isReadboyMachine()Z

    move-result v0

    return v0
.end method

.method public isReadboyUser()Z
    .registers 2

    .line 118
    invoke-virtual {p0}, Lcn/codemao/android/account/util/ReadboyManager;->getReadboyUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUnSupportReadboyMachine()Z
    .registers 2

    .line 55
    invoke-static {}, Lcom/readboy/personalsettingauth/RBPersonalSettingAuthSDK;->isUnSupportReadboyMachine()Z

    move-result v0

    return v0
.end method

.method public loginByReadboyUserInfo(Ljava/util/List;Lcom/readboy/personalsettingauth/data/UserInfoResult;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/readboy/personalsettingauth/data/UserInfoResult;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/ReadboyLoginResultVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcn/codemao/android/account/util/ReadboyManager;->mAgreeProtocolIds:Ljava/util/List;

    .line 64
    iput-object p3, p0, Lcn/codemao/android/account/util/ReadboyManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 65
    iput-object p4, p0, Lcn/codemao/android/account/util/ReadboyManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 67
    new-instance p3, Lcn/codemao/android/account/bean/ReadBoyLoginVO;

    invoke-direct {p3}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;-><init>()V

    .line 68
    invoke-virtual {p2}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->getUid()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->setUid(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->getSerial()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->setSerial(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->getAge()I

    move-result p4

    invoke-virtual {p3, p4}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->setAge(I)V

    .line 71
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getPID()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->setPid(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->getAvatar()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->setAvatar(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->getGender()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->setGender(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->getRealname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->setRealname(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3, p1}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->setAgreeProtocolIds(Ljava/util/List;)V

    .line 76
    invoke-virtual {p3}, Lcn/codemao/android/account/bean/ReadBoyLoginVO;->generateSign()V

    .line 77
    iget-object p1, p0, Lcn/codemao/android/account/util/ReadboyManager;->mSuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iget-object p2, p0, Lcn/codemao/android/account/util/ReadboyManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-static {p3, p1, p2}, Lcn/codemao/android/account/net/AccountRequest;->loginByReadboy(Lcn/codemao/android/account/bean/ReadBoyLoginVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .registers 4

    .line 135
    iget-object v0, p0, Lcn/codemao/android/account/util/ReadboyManager;->mFailResultListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    if-eqz v0, :cond_9

    const-string v1, "800042"

    .line 136
    invoke-interface {v0, v1, p1}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_9
    invoke-virtual {p0}, Lcn/codemao/android/account/util/ReadboyManager;->clear()V

    return-void
.end method

.method public onResult(Lcom/readboy/personalsettingauth/data/UserInfoResult;)V
    .registers 3

    if-nez p1, :cond_9

    const-string/jumbo p1, "用户信息为空"

    .line 95
    invoke-virtual {p0, p1}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_9
    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "uid 为空"

    .line 100
    invoke-virtual {p0, p1}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    return-void

    .line 104
    :cond_19
    invoke-virtual {p1}, Lcom/readboy/personalsettingauth/data/UserInfoResult;->getSerial()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string p1, "serial 为空"

    .line 105
    invoke-virtual {p0, p1}, Lcn/codemao/android/account/util/ReadboyManager;->onFailed(Ljava/lang/String;)V

    return-void

    .line 109
    :cond_29
    iget-object v0, p0, Lcn/codemao/android/account/util/ReadboyManager;->mReadboySuccessResultListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    if-eqz v0, :cond_30

    .line 110
    invoke-interface {v0, p1}, Lcn/codemao/android/account/listener/NetSuccessResultListener;->onSuccess(Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method public onSuccess()V
    .registers 1

    .line 131
    invoke-virtual {p0}, Lcn/codemao/android/account/util/ReadboyManager;->clear()V

    return-void
.end method
