.class public Lcom/ishumei/sdk/captcha/SmCaptchaWebView;
.super Landroid/webkit/WebView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;,
        Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;
    }
.end annotation


# static fields
.field public static SMCAPTCHA_SDK_NOLISTENER:I = 0x3ec

.field public static SMCAPTCHA_SDK_OPTION_EMPTY:I = 0x3e9

.field public static SMCAPTCHA_SDK_OPTION_NOAPPID:I = 0x3eb

.field public static SMCAPTCHA_SDK_OPTION_NOORG:I = 0x3ea

.field public static SMCAPTCHA_SUCCESS:I = 0x0

.field public static SMCAPTCHA_WV_NETWORK_ERROR:I = 0x3ed

.field public static SMCAPTCHA_WV_RESULT_ERROR:I = 0x3ee


# instance fields
.field private compatHijackUrl:Ljava/lang/String;

.field private interceptUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;

.field private option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

.field private retry:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->interceptUrls:Ljava/util/Set;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->retry:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->interceptUrls:Ljava/util/Set;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->retry:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->interceptUrls:Ljava/util/Set;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->retry:I

    return-void
.end method

.method static synthetic access$000(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;Landroid/webkit/WebView;Landroid/net/Uri;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->dispatchPersonalSchemeUrl(Landroid/webkit/WebView;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->compatHijackUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->compatHijackUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->shouldIntercept(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->onError(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;)I
    .registers 1

    iget p0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->retry:I

    return p0
.end method

.method private dispatchPersonalSchemeUrl(Landroid/webkit/WebView;Landroid/net/Uri;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shumei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onresult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string p1, "data"

    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_1e
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "method"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onError"

    invoke-static {p1, v0}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string p1, "code"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->onError(I)V

    goto :goto_7c

    :cond_3b
    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string p1, "rid"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pass"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->onSuccess(Ljava/lang/String;Z)V

    goto :goto_7c

    :cond_53
    const-string p2, "onReady"

    invoke-static {p1, p2}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7c

    invoke-direct {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->onReady()V
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_5e} :catch_5f

    goto :goto_7c

    :catch_5f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    sget p1, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->SMCAPTCHA_WV_RESULT_ERROR:I

    invoke-direct {p0, p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->onError(I)V

    goto :goto_7c

    :cond_69
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const-string v0, "requestnativeparams"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7c

    invoke-direct {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->getInjectJSdeliverNativeParams()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_7c
    :goto_7c
    const/4 p1, 0x1

    return p1

    :cond_7e
    const/4 p1, 0x0

    return p1
.end method

.method private getInjectJSdeliverNativeParams()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "organization"

    :try_start_7
    iget-object v2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getOrganization()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_145

    const-string v1, "appId"

    :try_start_12
    iget-object v2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_145

    const-string v1, "channel"

    :try_start_1d
    iget-object v2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_145

    const-string v1, "mode"

    :try_start_28
    iget-object v2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_145

    const-string v1, "https"

    :try_start_33
    iget-object v2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->isHttps()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getExtOption()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getExtOption()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    :cond_6e
    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a0

    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_97

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_97} :catch_145

    :cond_97
    const-string v2, "domains"

    :try_start_99
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getExtData()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_d3

    iget-object v2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getExtData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    :cond_d3
    iget-object v2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O000O00000oO(Ljava/lang/String;)Z

    move-result v2
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_dd} :catch_145

    if-eqz v2, :cond_ea

    const-string v2, "deviceId"

    :try_start_e1
    iget-object v3, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v3}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ea
    const-string v2, "os"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sdkver"

    const-string v3, "1.2.2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getTipMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11e

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_10e} :catch_145

    const-string v2, "sliderPlaceholder"

    :try_start_110
    iget-object v3, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v3}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getTipMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tipsMessage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11e
    invoke-static {v0}, Lcom/ishumei/sdk/captcha/O000O0000O0oO;->O0000O000000oO(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_126} :catch_145

    const-string v1, "\'"

    const-string v2, "\\\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:deliverNativeParams(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_145
    const-string v0, ""

    return-object v0
.end method

.method private initIntercept()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->interceptUrls:Ljava/util/Set;

    const-string v1, "d09c9ed089ced09c909199"

    invoke-static {v1}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->interceptUrls:Ljava/util/Set;

    const-string v1, "d09c9ed089ced08d9a98968c8b9a8d"

    invoke-static {v1}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->interceptUrls:Ljava/util/Set;

    const-string v1, "d09c9ed089ced099899a8d969986"

    invoke-static {v1}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O0000O000000oO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_21

    :catch_21
    return-void
.end method

.method private initStyle()V
    .registers 5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method private onError(I)V
    .registers 3

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->listener:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;->onError(I)V

    :cond_7
    return-void
.end method

.method private onReady()V
    .registers 2

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->listener:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;->onReady()V

    :cond_7
    return-void
.end method

.method private onSuccess(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->listener:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;->onSuccess(Ljava/lang/CharSequence;Z)V

    :cond_7
    return-void
.end method

.method private shouldIntercept(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->interceptUrls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_22
    return v1
.end method


# virtual methods
.method public initWithOption(Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;)I
    .registers 5

    if-nez p1, :cond_5

    sget p1, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->SMCAPTCHA_SDK_OPTION_EMPTY:I

    return p1

    :cond_5
    invoke-virtual {p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getOrganization()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O000O00000OoO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget p1, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->SMCAPTCHA_SDK_OPTION_NOORG:I

    return p1

    :cond_12
    invoke-virtual {p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ishumei/sdk/captcha/O000O00000oO;->O000O00000OoO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget p1, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->SMCAPTCHA_SDK_OPTION_NOAPPID:I

    return p1

    :cond_1f
    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    if-nez p2, :cond_26

    sget p1, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->SMCAPTCHA_SDK_NOLISTENER:I

    return p1

    :cond_26
    invoke-direct {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->initIntercept()V

    invoke-virtual {p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    const-string v0, "slide"

    invoke-virtual {p1, v0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->setMode(Ljava/lang/String;)V

    :cond_34
    invoke-virtual {p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getCaptchaHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->setHttps(Z)V

    iput-object p2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->listener:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;

    invoke-direct {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->initStyle()V

    new-instance p2, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;

    invoke-direct {p2, p0, p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;-><init>(Lcom/ishumei/sdk/captcha/SmCaptchaWebView;Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;)V

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getCaptchaHtml()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ishumei/sdk/captcha/O0000O000000oO;->O0000O000000oO(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->reloadCaptcha()V

    sget p1, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->SMCAPTCHA_SUCCESS:I

    return p1
.end method

.method public loadDefaultHtml()V
    .registers 4

    invoke-static {}, Lcom/ishumei/sdk/captcha/O0000O000000oO;->O0000O000000oO()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reloadCaptcha()V
    .registers 2

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->option:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-virtual {v0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getCaptchaHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->retry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->retry:I

    return-void
.end method
