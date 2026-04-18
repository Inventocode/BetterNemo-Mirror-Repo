.class public final Lcn/codemao/android/account/CodeMaoAccount$Builder;
.super Ljava/lang/Object;
.source "CodeMaoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/account/CodeMaoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bbkClientArgument:Ljava/lang/String;

.field private bbkClientId:Ljava/lang/String;

.field private bbkClientKey:Ljava/lang/String;

.field private hwAppId:Ljava/lang/String;

.field private isUserOnekeyLogin:Z

.field private mAccountFailListener:Lcn/codemao/android/account/listener/AccountFailListener;

.field private mChannel:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnv:I

.field private mInitX5:Z

.field private mInterceptor:Lokhttp3/Interceptor;

.field private mIsDebug:Z

.field private mPid:Ljava/lang/String;

.field private mQqAppID:Ljava/lang/String;

.field private mUmengId:Ljava/lang/String;

.field private mWechatAppId:Ljava/lang/String;

.field private needBBK:Z

.field private readboyAppId:Ljava/lang/String;

.field private readboyAppSec:Ljava/lang/String;

.field private requestHeaderArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4FbpWo_QCWnaNnzfj9YnBoL_IEI(Lcn/codemao/android/account/bean/AuthResultVO;)V
    .registers 1

    invoke-static {p0}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->lambda$build$2(Lcn/codemao/android/account/bean/AuthResultVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FAyczSBgeKTEzFBJ6hZZ4nyQQEg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->lambda$build$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SdJqzBsEDG5ZiJklGeeljlqFEcU(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->lambda$build$3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YS2r5xxke6bt5PD9YyH_YHlGlS4(Lcn/codemao/android/account/bean/UserInfoVO;)V
    .registers 1

    invoke-static {p0}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->lambda$build$0(Lcn/codemao/android/account/bean/UserInfoVO;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mInitX5:Z

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->needBBK:Z

    return-void
.end method

.method private static synthetic lambda$build$0(Lcn/codemao/android/account/bean/UserInfoVO;)V
    .registers 1

    return-void
.end method

.method private static synthetic lambda$build$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private static synthetic lambda$build$2(Lcn/codemao/android/account/bean/AuthResultVO;)V
    .registers 1

    return-void
.end method

.method private static synthetic lambda$build$3(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method


# virtual methods
.method public addInterceptor(Lokhttp3/Interceptor;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 273
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mInterceptor:Lokhttp3/Interceptor;

    return-object p0
.end method

.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 5

    .line 264
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->requestHeaderArray:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 265
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->requestHeaderArray:Ljava/util/HashMap;

    .line 267
    :cond_c
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->requestHeaderArray:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()V
    .registers 4

    .line 284
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->init(Landroid/content/Context;)V

    .line 285
    invoke-static {}, Lcn/codemao/android/account/util/UniqueId;->getInstance()Lcn/codemao/android/account/util/UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/util/UniqueId;->init()V

    .line 286
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getEnvironment()I

    move-result v0

    .line 287
    iget v1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mEnv:I

    if-eq v1, v0, :cond_17

    .line 288
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->clear()V

    .line 291
    :cond_17
    iget v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mEnv:I

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setEnvironment(I)V

    .line 292
    iget-boolean v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mIsDebug:Z

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setIsShowLog(Z)V

    .line 293
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mPid:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setPid(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mPid:Ljava/lang/String;

    sput-object v0, Lcn/codemao/android/account/CodeMaoAccount;->APPID_RESULT:Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->requestHeaderArray:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mInterceptor:Lokhttp3/Interceptor;

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/PlatformConfig;->initHttpControl(Ljava/util/HashMap;Lokhttp3/Interceptor;)V

    .line 296
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mQqAppID:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setQqAppId(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mQqAppID:Ljava/lang/String;

    sput-object v0, Lcn/codemao/android/account/CodeMaoAccount;->QqAppID_RESULT:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setChannel(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mWechatAppId:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setWechatAppKey(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mWechatAppId:Ljava/lang/String;

    sput-object v0, Lcn/codemao/android/account/CodeMaoAccount;->WechatAppId_RESULT:Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->bbkClientId:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setBbkClientId(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->bbkClientKey:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setBbkClientKey(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->readboyAppSec:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setReadboyAppSec(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->readboyAppId:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setReadboyAppId(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->bbkClientArgument:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setBbkClientArgument(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mUmengId:Ljava/lang/String;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setUmengId(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mAccountFailListener:Lcn/codemao/android/account/listener/AccountFailListener;

    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setAccountFailListener(Lcn/codemao/android/account/listener/AccountFailListener;)V

    .line 311
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 313
    sget-object v0, Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda3;->INSTANCE:Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda3;

    sget-object v1, Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda0;->INSTANCE:Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcn/codemao/android/account/CodeMaoAccount;->getUserInfoProfile(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 316
    sget-object v0, Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda2;->INSTANCE:Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda2;

    sget-object v1, Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda1;->INSTANCE:Lcn/codemao/android/account/CodeMaoAccount$Builder$$ExternalSyntheticLambda1;

    invoke-static {v0, v1}, Lcn/codemao/android/account/CodeMaoAccount;->getPrivacyInfo(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    :cond_7f
    const/4 v0, 0x1

    .line 322
    invoke-static {v0}, Lcom/tencent/tauth/Tencent;->setIsPermissionGranted(Z)V

    .line 325
    iget-boolean v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->needBBK:Z

    if-eqz v0, :cond_97

    .line 326
    new-instance v0, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;

    invoke-direct {v0}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;-><init>()V

    iget-boolean v1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mIsDebug:Z

    .line 327
    invoke-virtual {v0, v1}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;->setDebug(Z)Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mContext:Landroid/content/Context;

    .line 328
    invoke-virtual {v0, v1}, Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth$Builder;->build(Landroid/content/Context;)Lcom/eebbk/bfc/account/auth/client/BfcAccountAuth;

    .line 333
    :cond_97
    iget-object v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->readboyAppId:Ljava/lang/String;

    iget-object v2, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->readboyAppSec:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/readboy/personalsettingauth/RBPersonalSettingAuthSDK;->initRBAuthConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createOnekeyLoginBuilder()Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;
    .registers 2

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->isUserOnekeyLogin:Z

    .line 239
    new-instance v0, Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/CodeMaoAccount$OnekeyLoginBuilder;-><init>(Lcn/codemao/android/account/CodeMaoAccount$Builder;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 3

    .line 278
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mContext:Landroid/content/Context;

    .line 279
    iput-object p2, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mPid:Ljava/lang/String;

    return-object p0
.end method

.method public setAccountFailListener(Lcn/codemao/android/account/listener/AccountFailListener;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 213
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mAccountFailListener:Lcn/codemao/android/account/listener/AccountFailListener;

    return-object p0
.end method

.method public setBbkClientArgument(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 207
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->bbkClientArgument:Ljava/lang/String;

    return-object p0
.end method

.method public setBbkClientId(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 180
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->bbkClientId:Ljava/lang/String;

    return-object p0
.end method

.method public setBbkClientKey(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 191
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->bbkClientKey:Ljava/lang/String;

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 259
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mChannel:Ljava/lang/String;

    return-object p0
.end method

.method public setDebug(Z)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 227
    iput-boolean p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mIsDebug:Z

    return-object p0
.end method

.method public setEnv(I)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 222
    iput p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mEnv:I

    return-object p0
.end method

.method public setInitX5(Z)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 248
    iput-boolean p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mInitX5:Z

    return-object p0
.end method

.method public setIsPadDevice(Z)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 3

    .line 185
    invoke-static {}, Lcn/codemao/android/account/util/ConfigManager;->getInstance()Lcn/codemao/android/account/util/ConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/codemao/android/account/util/ConfigManager;->setIsPad(Z)V

    return-object p0
.end method

.method public setNeedBBKLogin(Z)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 253
    iput-boolean p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->needBBK:Z

    return-object p0
.end method

.method public setQQAppKey(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 243
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mQqAppID:Ljava/lang/String;

    return-object p0
.end method

.method public setReadboyAppId(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 197
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->readboyAppId:Ljava/lang/String;

    return-object p0
.end method

.method public setUmengId(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 172
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mUmengId:Ljava/lang/String;

    return-object p0
.end method

.method public setWeChatAppKey(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 232
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->mWechatAppId:Ljava/lang/String;

    return-object p0
.end method

.method public setreadboyAppSec(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;
    .registers 2

    .line 202
    iput-object p1, p0, Lcn/codemao/android/account/CodeMaoAccount$Builder;->readboyAppSec:Ljava/lang/String;

    return-object p0
.end method
