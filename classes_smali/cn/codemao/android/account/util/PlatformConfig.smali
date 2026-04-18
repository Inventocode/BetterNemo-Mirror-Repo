.class public Lcn/codemao/android/account/util/PlatformConfig;
.super Ljava/lang/Object;
.source "PlatformConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/util/PlatformConfig$ActivityLifecycleImpl;
    }
.end annotation


# static fields
.field public static final ACTIVITY_LIFECYCLE:Lcn/codemao/android/account/util/PlatformConfig$ActivityLifecycleImpl;

.field private static final BBK_CLIENT_ARGUMENT:Ljava/lang/String; = "bbk_client_argument"

.field private static final BBK_CLIENT_ID:Ljava/lang/String; = "bbk_client_id"

.field private static final BBK_CLIENT_KEY:Ljava/lang/String; = "bbk_client_key"

.field public static final CHANNEL:Ljava/lang/String; = "channel"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field private static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field private static final HW_APP_ID:Ljava/lang/String; = "hw_app_id"

.field private static final ONE_KEY_LOGO_PATH:Ljava/lang/String; = "one_key_logo_path"

.field private static final ONE_KEY_PROTOCOL:Ljava/lang/String; = "one_key_protocol"

.field private static final ONE_KEY_TIME_OUT_MILL:Ljava/lang/String; = "one_key_time_out_mill"

.field private static final OPPO_CLIENT_KEY:Ljava/lang/String; = "oppo_client_key"

.field private static final OPPO_SECRET_KEY:Ljava/lang/String; = "oppo_secret_key"

.field public static final OS:Ljava/lang/String; = "os"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phoneNumber"

.field private static final PID:Ljava/lang/String; = "pid"

.field private static final QQ_APP_ID:Ljava/lang/String; = "qq_app_id"

.field private static final READBOY_APP_ID:Ljava/lang/String; = "readboy_app_id"

.field private static final READBOY_APP_SEC:Ljava/lang/String; = "readboy_app_sec"

.field private static final READBOY_USER_ID:Ljava/lang/String; = "readboy_user_id"

.field private static final SHANYAN_APP_ID:Ljava/lang/String; = "shanyan_app_id"

.field private static final SHANYAN_APP_KEY:Ljava/lang/String; = "shanyan_app_key"

.field private static final SHANYAN_APP_TYPE:Ljava/lang/String; = "shanyan_app_type"

.field private static final TOKEN_INFO:Ljava/lang/String; = "token_info"

.field private static final TOKEN_TIME:Ljava/lang/String; = "token_time"

.field private static final TOKEN_VALUE:Ljava/lang/String; = "token_value"

.field private static final UMENG_ID:Ljava/lang/String; = "umeng_id"

.field private static final USER_INFO:Ljava/lang/String; = "user_info"

.field private static final WECHAT_APP_ID:Ljava/lang/String; = "wechat_app_id"

.field private static final baseCaptchaDevUrl:Ljava/lang/String; = "dev-open-service.codemao.cn"

.field private static final baseCaptchaFormalUrl:Ljava/lang/String; = "open-service.codemao.cn"

.field private static final baseCaptchaPreUrl:Ljava/lang/String; = "staging-open-service.codemao.cn"

.field private static final baseCaptchaTestUrl:Ljava/lang/String; = "test-open-service.codemao.cn"

.field public static baseCaptchaUrl:Ljava/lang/String; = null

.field private static final baseDevUrl:Ljava/lang/String; = "https://backend-dev.codemao.cn/"

.field private static final baseFormalUrl:Ljava/lang/String; = "https://api.codemao.cn/"

.field private static final basePreUrl:Ljava/lang/String; = "https://backend-test.codemao.cn/"

.field private static final baseTestUrl:Ljava/lang/String; = "https://test-api.codemao.cn/"

.field private static baseUrl:Ljava/lang/String; = "https://api.codemao.cn/"

.field private static final captchaTail:Ljava/lang/String; = "tiger/captcha/graph/geetest/register_slide?id=66ed9e1ac4951bc5a910dfd9d7522bbe"

.field private static captchaURL:Ljava/lang/String; = "https://api.codemao.cn/tiger/captcha/graph/geetest/register_slide?id=66ed9e1ac4951bc5a910dfd9d7522bbe"

.field private static isShowLog:Z = true

.field private static sAccountFailListener:Lcn/codemao/android/account/listener/AccountFailListener;

.field private static sContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$8qGJUgh9a_OJvr2rv2M7-QFZDds(Lcn/codemao/android/account/bean/TokenRenewalVO;)V
    .registers 1

    invoke-static {p0}, Lcn/codemao/android/account/util/PlatformConfig;->lambda$isTokenPassed$0(Lcn/codemao/android/account/bean/TokenRenewalVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KaSAvoMrWWvUISSpfoOnFrzuZTY(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/codemao/android/account/util/PlatformConfig;->lambda$isTokenPassed$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rp0Dpdioaj0IO1NACpHPqpz7jp4(Lcn/codemao/android/account/bean/TokenRenewalVO;)V
    .registers 1

    invoke-static {p0}, Lcn/codemao/android/account/util/PlatformConfig;->lambda$tokenRenewal$2(Lcn/codemao/android/account/bean/TokenRenewalVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$boR5ZkxDGTl838Frtsei4RYBk9w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcn/codemao/android/account/util/PlatformConfig;->lambda$tokenRenewal$3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lcn/codemao/android/account/util/PlatformConfig$ActivityLifecycleImpl;

    invoke-direct {v0}, Lcn/codemao/android/account/util/PlatformConfig$ActivityLifecycleImpl;-><init>()V

    sput-object v0, Lcn/codemao/android/account/util/PlatformConfig;->ACTIVITY_LIFECYCLE:Lcn/codemao/android/account/util/PlatformConfig$ActivityLifecycleImpl;

    const-string v0, "open-service.codemao.cn"

    .line 84
    sput-object v0, Lcn/codemao/android/account/util/PlatformConfig;->baseCaptchaUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "不能被实例化"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clear()V
    .registers 4

    .line 396
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "user_info"

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 397
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "token_value"

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "token_info"

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 399
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "phoneNumber"

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 400
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "email"

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "readboy_user_id"

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 403
    new-instance v0, Lcn/codemao/android/account/cookiejar/PersistentCookieJar;

    new-instance v1, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;

    invoke-direct {v1}, Lcn/codemao/android/account/cookiejar/cache/SetCookieCache;-><init>()V

    new-instance v2, Lcn/codemao/android/account/cookiejar/persistence/SharedPrefsCookiePersistor;

    sget-object v3, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/codemao/android/account/cookiejar/persistence/SharedPrefsCookiePersistor;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/account/cookiejar/PersistentCookieJar;-><init>(Lcn/codemao/android/account/cookiejar/cache/CookieCache;Lcn/codemao/android/account/cookiejar/persistence/CookiePersistor;)V

    .line 405
    invoke-interface {v0}, Lcn/codemao/android/account/cookiejar/ClearableCookieJar;->clear()V

    .line 406
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getQqAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 407
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getQqAppId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 408
    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 409
    sget-object v1, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    .line 411
    :cond_5f
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->clearTokenTime()V

    return-void
.end method

.method public static clearDebugKey()V
    .registers 2

    .line 415
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "qq_app_id"

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "wechat_app_id"

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 417
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "pid"

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static clearTokenTime()V
    .registers 2

    .line 455
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "token_time"

    invoke-static {v0, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getAccountFailListener()Lcn/codemao/android/account/listener/AccountFailListener;
    .registers 1

    .line 129
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sAccountFailListener:Lcn/codemao/android/account/listener/AccountFailListener;

    return-object v0
.end method

.method public static getBbkClientArgument()Ljava/lang/String;
    .registers 3

    .line 241
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "bbk_client_argument"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBbkClientId()Ljava/lang/String;
    .registers 3

    .line 204
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "bbk_client_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBbkClientKey()Ljava/lang/String;
    .registers 3

    .line 231
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "bbk_client_key"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannel()Ljava/lang/String;
    .registers 3

    .line 144
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "channel"

    const-string v2, "codemao"

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCodemaoUrl()Ljava/lang/String;
    .registers 1

    .line 111
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 2

    .line 93
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    return-object v0

    .line 94
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call init!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getEmail()Ljava/lang/String;
    .registers 3

    .line 330
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "email"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnvironment()I
    .registers 3

    .line 183
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "environment"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGeetTestUrl()Ljava/lang/String;
    .registers 1

    .line 107
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->captchaURL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOS()Ljava/lang/String;
    .registers 3

    .line 152
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "os"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOnekeyAppType()Ljava/lang/String;
    .registers 3

    .line 261
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    sget-object v1, Lcn/codemao/android/account/CodeMaoAccount$AppType;->NORMAL:Lcn/codemao/android/account/CodeMaoAccount$AppType;

    iget-object v1, v1, Lcn/codemao/android/account/CodeMaoAccount$AppType;->name:Ljava/lang/String;

    const-string v2, "shanyan_app_type"

    invoke-static {v0, v2, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOnekeyProtocolMap()Ljava/util/LinkedHashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 273
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "one_key_protocol"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    return-object v2

    .line 277
    :cond_12
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 279
    :try_start_17
    const-class v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_20

    return-object v0

    :catch_20
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public static getOnekeyShanyanAppId()Ljava/lang/String;
    .registers 3

    .line 257
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "shanyan_app_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPID()Ljava/lang/String;
    .registers 3

    .line 187
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    sget-object v1, Lcn/codemao/android/account/CodeMaoAccount;->APPID_RESULT:Ljava/lang/String;

    const-string v2, "pid"

    invoke-static {v0, v2, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber()Ljava/lang/String;
    .registers 3

    .line 322
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "phoneNumber"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getQqAppId()Ljava/lang/String;
    .registers 3

    .line 199
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    sget-object v1, Lcn/codemao/android/account/CodeMaoAccount;->QqAppID_RESULT:Ljava/lang/String;

    const-string v2, "qq_app_id"

    invoke-static {v0, v2, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadboyAppId()Ljava/lang/String;
    .registers 3

    .line 221
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "readboy_app_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadboyAppSec()Ljava/lang/String;
    .registers 3

    .line 225
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "readboy_app_sec"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadboyUid()Ljava/lang/String;
    .registers 3

    .line 308
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "readboy_user_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenInfo()Lcn/codemao/android/account/bean/TokenRenewalVO;
    .registers 4

    .line 382
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 383
    sget-object v1, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v2, "token_info"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_17
    const-class v2, Lcn/codemao/android/account/bean/TokenRenewalVO;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/bean/TokenRenewalVO;

    return-object v0
.end method

.method public static getTokenTime()J
    .registers 4

    .line 334
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "token_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/codemao/android/account/util/PreferencesUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTokenValue()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 362
    :try_start_1
    sget-object v1, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v2, "token_value"

    invoke-static {v1, v2, v0}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v1}, Lcn/codemao/android/account/util/PlatformConfig;->isNormalToken(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    .line 366
    :cond_10
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b

    return-object v2

    :catch_1b
    move-exception v1

    .line 369
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getUmengId()Ljava/lang/String;
    .registers 3

    .line 191
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "umeng_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserInfo()Lcn/codemao/android/account/bean/UserInfoVO;
    .registers 4

    .line 345
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 346
    sget-object v1, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v2, "user_info"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x0

    return-object v0

    .line 350
    :cond_17
    const-class v2, Lcn/codemao/android/account/bean/UserInfoVO;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/account/bean/UserInfoVO;

    return-object v0
.end method

.method public static getWechatAppId()Ljava/lang/String;
    .registers 3

    .line 304
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    sget-object v1, Lcn/codemao/android/account/CodeMaoAccount;->WechatAppId_RESULT:Ljava/lang/String;

    const-string v2, "wechat_app_id"

    invoke-static {v0, v2, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    const-string v0, "context can not be null!"

    .line 116
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static initHttpControl(Ljava/util/HashMap;Lokhttp3/Interceptor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Interceptor;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-static {}, Lcn/codemao/android/account/net/HttpControl;->getInstance()Lcn/codemao/android/account/net/HttpControl;

    move-result-object v0

    sget-object v1, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    sget-boolean v2, Lcn/codemao/android/account/util/PlatformConfig;->isShowLog:Z

    invoke-virtual {v0, v1, v2, p0, p1}, Lcn/codemao/android/account/net/HttpControl;->init(Landroid/content/Context;ZLjava/util/HashMap;Lokhttp3/Interceptor;)V

    return-void
.end method

.method private static isNormalToken(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Bearer "

    .line 545
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTokenPassed()Z
    .registers 8

    .line 428
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getTokenTime()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_31

    .line 429
    invoke-static {}, Lcn/codemao/android/account/util/TimeUtil;->getCurrentTime()J

    move-result-wide v0

    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getTokenTime()J

    move-result-wide v5

    cmp-long v7, v0, v5

    if-gez v7, :cond_44

    .line 431
    new-instance v0, Lcn/codemao/android/account/bean/TokenRenewalVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/TokenRenewalVO;-><init>()V

    .line 432
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getTokenTime()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcn/codemao/android/account/bean/TokenRenewalVO;->setExpired_at(J)V

    .line 433
    invoke-virtual {v0, v3, v4}, Lcn/codemao/android/account/bean/TokenRenewalVO;->setRefresh_expire(J)V

    .line 434
    invoke-static {v0}, Lcn/codemao/android/account/util/PlatformConfig;->setTokenInfo(Lcn/codemao/android/account/bean/TokenRenewalVO;)V

    .line 435
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda2;->INSTANCE:Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda2;

    sget-object v1, Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda0;->INSTANCE:Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, Lcn/codemao/android/account/net/AccountRequest;->tokenRenewal(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return v2

    .line 440
    :cond_31
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->tokenRenewal()Lcn/codemao/android/account/bean/TokenRenewalVO;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 441
    invoke-static {}, Lcn/codemao/android/account/util/TimeUtil;->getCurrentTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/TokenRenewalVO;->getExpired_at()J

    move-result-wide v0

    cmp-long v5, v3, v0

    if-gez v5, :cond_44

    return v2

    .line 444
    :cond_44
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic lambda$isTokenPassed$0(Lcn/codemao/android/account/bean/TokenRenewalVO;)V
    .registers 1

    .line 435
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->clearTokenTime()V

    return-void
.end method

.method private static synthetic lambda$isTokenPassed$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private static synthetic lambda$tokenRenewal$2(Lcn/codemao/android/account/bean/TokenRenewalVO;)V
    .registers 1

    return-void
.end method

.method private static synthetic lambda$tokenRenewal$3(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static setAccountFailListener(Lcn/codemao/android/account/listener/AccountFailListener;)V
    .registers 1

    .line 125
    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->sAccountFailListener:Lcn/codemao/android/account/listener/AccountFailListener;

    return-void
.end method

.method public static setBbkClientArgument(Ljava/lang/String;)V
    .registers 3

    .line 245
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "bbk_client_argument"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBbkClientId(Ljava/lang/String;)V
    .registers 3

    .line 208
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "bbk_client_id"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBbkClientKey(Ljava/lang/String;)V
    .registers 3

    .line 235
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "bbk_client_key"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .registers 3

    .line 140
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, "codemao"

    :cond_a
    const-string v1, "channel"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1

    .line 99
    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static setEmail(Ljava/lang/String;)V
    .registers 3

    .line 326
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "email"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setEnvironment(I)V
    .registers 3

    .line 160
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "environment"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz p0, :cond_2e

    const/4 v0, 0x1

    if-eq p0, v0, :cond_25

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    goto :goto_36

    :cond_13
    const-string p0, "https://test-api.codemao.cn/"

    .line 167
    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->baseUrl:Ljava/lang/String;

    const-string p0, "test-open-service.codemao.cn"

    .line 168
    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->baseCaptchaUrl:Ljava/lang/String;

    goto :goto_36

    :cond_1c
    const-string p0, "https://backend-dev.codemao.cn/"

    .line 163
    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->baseUrl:Ljava/lang/String;

    const-string p0, "dev-open-service.codemao.cn"

    .line 164
    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->baseCaptchaUrl:Ljava/lang/String;

    goto :goto_36

    :cond_25
    const-string p0, "https://backend-test.codemao.cn/"

    .line 171
    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->baseUrl:Ljava/lang/String;

    const-string p0, "staging-open-service.codemao.cn"

    .line 172
    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->baseCaptchaUrl:Ljava/lang/String;

    goto :goto_36

    :cond_2e
    const-string p0, "https://api.codemao.cn/"

    .line 175
    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->baseUrl:Ljava/lang/String;

    const-string p0, "open-service.codemao.cn"

    .line 176
    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->baseCaptchaUrl:Ljava/lang/String;

    .line 179
    :goto_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tiger/captcha/graph/geetest/register_slide?id=66ed9e1ac4951bc5a910dfd9d7522bbe"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/codemao/android/account/util/PlatformConfig;->captchaURL:Ljava/lang/String;

    return-void
.end method

.method public static setIsShowLog(Z)V
    .registers 1

    .line 103
    sput-boolean p0, Lcn/codemao/android/account/util/PlatformConfig;->isShowLog:Z

    return-void
.end method

.method public static setOS(Ljava/lang/String;)V
    .registers 3

    .line 148
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p0, ""

    :cond_a
    const-string v1, "os"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOnekeyAppType(Ljava/lang/String;)V
    .registers 3

    .line 253
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "shanyan_app_type"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOnekeyProtocolMap(Ljava/util/LinkedHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 289
    :cond_3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 290
    sget-object v1, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "one_key_protocol"

    invoke-static {v1, v0, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOnekeyShanyanAppId(Ljava/lang/String;)V
    .registers 3

    .line 249
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "shanyan_app_id"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPhoneNumber(Ljava/lang/String;)V
    .registers 3

    .line 318
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "phoneNumber"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPid(Ljava/lang/String;)V
    .registers 3

    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 135
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "pid"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-boolean p0, Lcn/codemao/android/account/util/PlatformConfig;->isShowLog:Z

    invoke-static {p0}, Lcn/codemao/android/account/util/LogUtils;->setIsShowLog(Z)V

    return-void

    .line 134
    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "pid can not be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setQqAppId(Ljava/lang/String;)V
    .registers 3

    .line 195
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "qq_app_id"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setReadboyAppId(Ljava/lang/String;)V
    .registers 3

    .line 212
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "readboy_app_id"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setReadboyAppSec(Ljava/lang/String;)V
    .registers 3

    .line 216
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "readboy_app_sec"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setReadboyUid(Ljava/lang/String;)V
    .registers 3

    .line 313
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "readboy_user_id"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTokenInfo(Lcn/codemao/android/account/bean/TokenRenewalVO;)V
    .registers 4

    .line 376
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "token_info"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setTokenValue(Ljava/lang/String;)V
    .registers 3

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 356
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 357
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "token_value"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUmengId(Ljava/lang/String;)V
    .registers 3

    .line 121
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "umeng_id"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserInfo(Lcn/codemao/android/account/bean/UserInfoVO;)Lcn/codemao/android/account/bean/UserInfoVO;
    .registers 4

    .line 338
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_info"

    invoke-static {v0, v2, v1}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static setWechatAppKey(Ljava/lang/String;)V
    .registers 3

    .line 294
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 296
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const-string v1, "wechat_app_id"

    invoke-static {v0, v1, p0}, Lcn/codemao/android/account/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lcn/codemao/android/account/util/PlatformConfig;->sContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    .line 300
    invoke-interface {v0, p0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    return-void

    .line 295
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "wechatAppId can not be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static tokenRenewal()Lcn/codemao/android/account/bean/TokenRenewalVO;
    .registers 6

    .line 462
    invoke-static {}, Lcn/codemao/android/account/util/PlatformConfig;->getTokenInfo()Lcn/codemao/android/account/bean/TokenRenewalVO;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 466
    :cond_8
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/TokenRenewalVO;->getExpired_at()J

    move-result-wide v2

    invoke-virtual {v0}, Lcn/codemao/android/account/bean/TokenRenewalVO;->getRefresh_expire()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcn/codemao/android/account/util/TimeUtil;->inTime(JJ)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 467
    sget-object v1, Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda3;->INSTANCE:Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda3;

    sget-object v2, Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda1;->INSTANCE:Lcn/codemao/android/account/util/PlatformConfig$$ExternalSyntheticLambda1;

    invoke-static {v1, v2}, Lcn/codemao/android/account/net/AccountRequest;->tokenRenewal(Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    goto :goto_29

    .line 470
    :cond_1e
    invoke-virtual {v0}, Lcn/codemao/android/account/bean/TokenRenewalVO;->getExpired_at()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/codemao/android/account/util/TimeUtil;->outTime(J)Z

    move-result v2

    if-eqz v2, :cond_29

    return-object v1

    :cond_29
    :goto_29
    return-object v0
.end method
