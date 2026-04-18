.class public Lcom/codemao/nemo/util/LocalUserHelper;
.super Ljava/lang/Object;
.source "LocalUserHelper.java"


# static fields
.field private static aduanAvatar:Ljava/lang/String;

.field private static aduanName:Ljava/lang/String;

.field private static localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

.field private static mAgreeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public static applyUserInfo()V
    .registers 4

    .line 432
    invoke-static {}, Lcn/codemao/android/stat/CMSpUtils;->getInstance()Lcn/codemao/android/stat/CMSpUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/LocalUserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userInfo"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CMSpUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private static clearCookie()V
    .registers 1

    .line 420
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 421
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 423
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public static getAccountToken()Ljava/lang/String;
    .registers 1

    .line 221
    :try_start_0
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 224
    :catch_5
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->initCMAccount()V

    .line 225
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAduanAvatar()Ljava/lang/String;
    .registers 1

    .line 84
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->aduanAvatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    .line 87
    :cond_b
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->aduanAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public static getAduanName()Ljava/lang/String;
    .registers 1

    .line 77
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->aduanName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "咚当家族"

    return-object v0

    .line 80
    :cond_b
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->aduanName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurUserAgreeIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->mAgreeIds:Ljava/util/List;

    if-nez v0, :cond_11

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->mAgreeIds:Ljava/util/List;

    const-string v1, "-1"

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_11
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->mAgreeIds:Ljava/util/List;

    return-object v0
.end method

.method private static getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 1

    .line 384
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->sEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_e

    .line 385
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->sEditor:Landroid/content/SharedPreferences$Editor;

    .line 387
    :cond_e
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->sEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static getUserConsumLevel()I
    .registers 1

    .line 159
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez v0, :cond_7

    .line 160
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->initUserInfo()V

    .line 163
    :cond_7
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez v0, :cond_d

    const/4 v0, -0x1

    return v0

    .line 166
    :cond_d
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getConsumeLevel()I

    move-result v0

    return v0
.end method

.method public static getUserId()J
    .registers 2

    .line 106
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez v0, :cond_7

    .line 107
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->initUserInfo()V

    .line 109
    :cond_7
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez v0, :cond_22

    .line 110
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 111
    new-instance v0, Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    .line 112
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->clone(Lcn/codemao/android/account/bean/UserInfoVO;)V

    .line 113
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    .line 116
    :cond_22
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez v0, :cond_29

    const-wide/16 v0, 0x0

    return-wide v0

    .line 119
    :cond_29
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;
    .registers 2

    .line 91
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez v0, :cond_7

    .line 92
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->initUserInfo()V

    .line 94
    :cond_7
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez v0, :cond_22

    .line 95
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 96
    new-instance v0, Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    .line 97
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getCachedUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->clone(Lcn/codemao/android/account/bean/UserInfoVO;)V

    .line 98
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    .line 101
    :cond_22
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    return-object v0
.end method

.method public static hasPhone()Z
    .registers 1

    .line 123
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez v0, :cond_7

    .line 124
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->initUserInfo()V

    .line 127
    :cond_7
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    return v0

    .line 130
    :cond_d
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->isHasPhone()Z

    move-result v0

    return v0
.end method

.method private static initCMAccount()V
    .registers 6

    .line 231
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_12

    goto :goto_41

    .line 233
    :cond_12
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v4, "dev"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v3, 0x2

    goto :goto_41

    .line 235
    :cond_22
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v4, "release"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v3, 0x0

    goto :goto_41

    .line 237
    :cond_32
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v4, "staging"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v3, 0x1

    .line 240
    :cond_41
    :goto_41
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->Builder()Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v4

    const-string v5, "T5qx9_w0"

    invoke-virtual {v0, v4, v5}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->init(Landroid/content/Context;Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    const-string v4, "101477015"

    .line 241
    invoke-virtual {v0, v4}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setQQAppKey(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    const-string v5, "wx5966b00f345eb948"

    .line 242
    invoke-virtual {v0, v5}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setWeChatAppKey(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0, v2}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setNeedBBKLogin(Z)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    const-string v2, "303425e545244852"

    .line 244
    invoke-virtual {v0, v2}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setBbkClientArgument(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    const-string v2, "f466d25758674124"

    .line 245
    invoke-virtual {v0, v2}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setBbkClientKey(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    const-string v2, "101cc001"

    .line 246
    invoke-virtual {v0, v2}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setBbkClientId(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setChannel(Ljava/lang/String;)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v1}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setInitX5(Z)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/codemao/nemo/util/AppConstants;->IS_DEBUG:Z

    .line 249
    invoke-virtual {v0, v1}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setDebug(Z)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->setEnv(I)Lcn/codemao/android/account/CodeMaoAccount$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/CodeMaoAccount$Builder;->build()V

    .line 251
    invoke-static {}, Lcn/codemao/android/share/CodeMaoShare;->newBuilder()Lcn/codemao/android/share/CodeMaoShare$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/codemao/android/share/CodeMaoShare$Builder;->setQQId(Ljava/lang/String;)Lcn/codemao/android/share/CodeMaoShare$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/codemao/android/share/CodeMaoShare$Builder;->setWechatId(Ljava/lang/String;)Lcn/codemao/android/share/CodeMaoShare$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/share/CodeMaoShare$Builder;->build()Lcn/codemao/android/share/CodeMaoShare;

    return-void
.end method

.method public static initUserInfo()V
    .registers 5

    .line 171
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userInfo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 174
    :try_start_11
    const-class v3, Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/LocalUserInfo;

    sput-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_1f

    :catch_1c
    const/4 v0, 0x0

    .line 176
    sput-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    .line 178
    :goto_1f
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_47

    .line 179
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->setUserId(Ljava/lang/String;)Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->setUserToken(Ljava/lang/String;)Lcom/codemao/creativecenter/CreativeCenterUtils;

    :cond_47
    return-void
.end method

.method public static isBBKLogin()Z
    .registers 1

    .line 141
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez v0, :cond_7

    .line 142
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->initUserInfo()V

    .line 145
    :cond_7
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return v0

    .line 148
    :cond_d
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->isBBKLogin()Z

    move-result v0

    return v0
.end method

.method public static isLogin()Z
    .registers 1

    .line 380
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isOffical()Z
    .registers 3

    .line 373
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 374
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getIs_official_certification()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public static logout(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 391
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->isFirstLogin:Z

    const-string v0, ""

    .line 392
    sput-object v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    .line 393
    new-instance v1, Lcom/codemao/nemo/util/LocalUserHelper$1;

    invoke-direct {v1}, Lcom/codemao/nemo/util/LocalUserHelper$1;-><init>()V

    new-instance v2, Lcom/codemao/nemo/util/LocalUserHelper$2;

    invoke-direct {v2}, Lcom/codemao/nemo/util/LocalUserHelper$2;-><init>()V

    invoke-static {v1, v2}, Lcn/codemao/android/account/CodeMaoAccount;->logout(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V

    .line 404
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->clear()V

    .line 405
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->clearCookie()V

    const/4 v1, 0x0

    .line 406
    sput-object v1, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    .line 407
    sput-object v0, Lcom/codemao/nemo/util/BcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    .line 408
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 409
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->logout()Lcom/codemao/creativecenter/CreativeCenterUtils;

    .line 411
    sget-object v0, Lcom/codemao/nemo/util/CMToolsUtils;->INSTANCE:Lcom/codemao/nemo/util/CMToolsUtils;

    invoke-virtual {v0}, Lcom/codemao/nemo/util/CMToolsUtils;->updateToken()V

    .line 412
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p0, :cond_52

    if-eqz v0, :cond_52

    const/4 p0, 0x2

    .line 414
    invoke-static {v0, p0}, Lcom/codemao/nemo/activity/LoginActivity;->startActivity(Landroid/content/Context;I)V

    .line 415
    invoke-static {}, Lcom/codemao/nemo/util/ActivityUtils;->get()Lcom/codemao/nemo/util/ActivityUtils;

    move-result-object p0

    const-class v0, Lcom/codemao/nemo/MainActivityV2;

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/util/ActivityUtils;->killActivity(Ljava/lang/Class;)V

    :cond_52
    return-void
.end method

.method public static obtain()Landroid/content/SharedPreferences;
    .registers 3

    .line 427
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    const-string v1, "nemo_user_db"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static setAduanAvatar(Ljava/lang/String;)V
    .registers 1

    .line 73
    sput-object p0, Lcom/codemao/nemo/util/LocalUserHelper;->aduanAvatar:Ljava/lang/String;

    return-void
.end method

.method public static setAduanName(Ljava/lang/String;)V
    .registers 1

    .line 69
    sput-object p0, Lcom/codemao/nemo/util/LocalUserHelper;->aduanName:Ljava/lang/String;

    return-void
.end method

.method public static setCurUserAgreeIds(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/account/bean/ProtocolInfo;",
            ">;)V"
        }
    .end annotation

    .line 50
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->mAgreeIds:Ljava/util/List;

    if-nez v0, :cond_10

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->mAgreeIds:Ljava/util/List;

    goto :goto_13

    .line 53
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    :goto_13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/bean/ProtocolInfo;

    .line 56
    sget-object v1, Lcom/codemao/nemo/util/LocalUserHelper;->mAgreeIds:Ljava/util/List;

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/ProtocolInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    return-void
.end method

.method public static updateAuthorLevelInfo(II)V
    .registers 3

    .line 315
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_f

    .line 316
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setAuthorLevel(I)V

    .line 317
    sget-object p0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->setAuthor_level_upgrade_hint(I)V

    .line 318
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_f
    return-void
.end method

.method public static updateConsumeLevelInfo(II)V
    .registers 3

    .line 323
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_f

    .line 324
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setConsumeLevel(I)V

    .line 325
    sget-object p0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->setConsume_level_upgrade_hint(I)V

    .line 326
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_f
    return-void
.end method

.method public static updateHasPhone(Z)V
    .registers 2

    .line 134
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_a

    .line 135
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setHasPhone(Z)V

    .line 136
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_a
    return-void
.end method

.method public static updateIsBBKLogin(Z)V
    .registers 2

    .line 152
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_a

    .line 153
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setBBKLogin(Z)V

    .line 154
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_a
    return-void
.end method

.method public static updateSmallUserAvatarFrame(Ljava/lang/String;)V
    .registers 2

    .line 338
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_a

    .line 339
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setSmall_head_frame_url(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_a
    return-void
.end method

.method public static updateUserAvatar(Ljava/lang/String;)V
    .registers 2

    .line 264
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_a

    .line 265
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setAvatar_url(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_a
    return-void
.end method

.method public static updateUserAvatarFrame(Ljava/lang/String;)V
    .registers 2

    .line 331
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_a

    .line 332
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setHead_frame_url(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_a
    return-void
.end method

.method public static updateUserDes(Ljava/lang/String;)V
    .registers 2

    .line 278
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_a

    .line 279
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setDescription(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_a
    return-void
.end method

.method public static updateUserInfo(Lcom/codemao/nemo/bean/LocalUserInfo;)V
    .registers 3

    const-wide/16 v0, 0x0

    .line 186
    invoke-static {p0, v0, v1}, Lcom/codemao/nemo/util/LocalUserHelper;->updateUserInfo(Lcom/codemao/nemo/bean/LocalUserInfo;J)V

    return-void
.end method

.method public static updateUserInfo(Lcom/codemao/nemo/bean/LocalUserInfo;J)V
    .registers 8

    .line 193
    sput-object p0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    const-string v0, ""

    if-eqz p0, :cond_28

    .line 195
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->setUserId(Ljava/lang/String;)Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p0

    .line 196
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->setUserToken(Ljava/lang/String;)Lcom/codemao/creativecenter/CreativeCenterUtils;

    .line 198
    :cond_28
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    const-wide/16 v1, 0x0

    cmp-long p0, p1, v1

    if-gtz p0, :cond_32

    return-void

    .line 204
    :cond_32
    sput-object v0, Lcom/codemao/nemo/sdk/stat/StatHelper;->userChoseTabTestType:Ljava/lang/String;

    .line 205
    sget-object p0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-nez p0, :cond_39

    return-void

    .line 208
    :cond_39
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/bean/LocalUserInfo;->setRegister_mills(J)V

    .line 209
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    .line 212
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getCurUserFirstLoginMills()J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long p2, p0, v0

    if-nez p2, :cond_6a

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/SprefUtil;->putCurUserFirstLoginMills(J)V

    .line 214
    sget-object p0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getRegister_mills()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/util/TimeUtil;->calcDayDiffWithTime(JJ)F

    move-result p0

    const/high16 p1, 0x40e00000  # 7.0f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_66

    const/4 p0, 0x1

    goto :goto_67

    :cond_66
    const/4 p0, 0x0

    .line 215
    :goto_67
    invoke-static {p0}, Lcom/codemao/nemo/util/SprefUtil;->putCurUserBeginner(Z)V

    :cond_6a
    return-void
.end method

.method public static updateUserIsOffical(I)V
    .registers 2

    .line 366
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_a

    .line 367
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setIs_official_certification(I)V

    .line 368
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_a
    return-void
.end method

.method public static updateUserLevelInfo(II)V
    .registers 4

    .line 352
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_2a

    .line 353
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAuthorLevel()I

    move-result v0

    const/4 v1, 0x0

    if-le p0, v0, :cond_15

    .line 354
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->setAuthor_level_upgrade_hint(I)V

    .line 355
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setAuthorLevel(I)V

    .line 357
    :cond_15
    sget-object p0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getConsumeLevel()I

    move-result p0

    if-le p1, p0, :cond_27

    .line 358
    sget-object p0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/bean/LocalUserInfo;->setConsume_level_upgrade_hint(I)V

    .line 359
    sget-object p0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->setConsumeLevel(I)V

    .line 361
    :cond_27
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_2a
    return-void
.end method

.method public static updateUserNickName(Ljava/lang/String;)V
    .registers 2

    .line 256
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_a

    .line 257
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setNickname(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_a
    return-void
.end method

.method public static updateUserOptionInfo(JJJ)V
    .registers 7

    .line 306
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_14

    .line 307
    invoke-virtual {v0, p2, p3}, Lcom/codemao/nemo/bean/LocalUserInfo;->setN_views(J)V

    .line 308
    sget-object p2, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {p2, p4, p5}, Lcom/codemao/nemo/bean/LocalUserInfo;->setN_re_create(J)V

    .line 309
    sget-object p2, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    invoke-virtual {p2, p0, p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->setN_likes(J)V

    .line 310
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_14
    return-void
.end method

.method public static updateUserSignature(Ljava/lang/String;)V
    .registers 2

    .line 345
    sget-object v0, Lcom/codemao/nemo/util/LocalUserHelper;->localUserInfo:Lcom/codemao/nemo/bean/LocalUserInfo;

    if-eqz v0, :cond_a

    .line 346
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/bean/LocalUserInfo;->setSignature_img_link(Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->applyUserInfo()V

    :cond_a
    return-void
.end method
