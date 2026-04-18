.class public Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/sdk/captcha/SmCaptchaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmOption"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private captchaHtml:Ljava/lang/String;

.field private cdnHost:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private extData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extOption:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private https:Z

.field private mode:Ljava/lang/String;

.field private organization:Ljava/lang/String;

.field private retry:I

.field private timeout:I

.field private tipMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://castatic.fengkongcloud.com/pr/v1.0.3/index.html"

    iput-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->captchaHtml:Ljava/lang/String;

    const-string v0, "slide"

    iput-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->mode:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->https:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->retry:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->timeout:I

    return-void
.end method

.method private getCdnCaptchaHtml()Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->captchaHtml:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->captchaHtml:Ljava/lang/String;

    return-object v0

    :cond_16
    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->captchaHtml:Ljava/lang/String;

    iget-object v2, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->cdnHost:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_2d

    :cond_25
    const-string v1, "https://"

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->appId:Ljava/lang/String;

    return-object v0
.end method

.method getCaptchaHtml()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->cdnHost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->captchaHtml:Ljava/lang/String;

    return-object v0

    :cond_b
    invoke-direct {p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->getCdnCaptchaHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->extData:Ljava/util/Map;

    return-object v0
.end method

.method public getExtOption()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->extOption:Ljava/util/Map;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->organization:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()I
    .registers 2

    iget v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->retry:I

    return v0
.end method

.method public getTimeout()I
    .registers 2

    iget v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->timeout:I

    return v0
.end method

.method public getTipMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->tipMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isHttps()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->https:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->appId:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->channel:Ljava/lang/String;

    return-void
.end method

.method public setHttps(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->https:Z

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->mode:Ljava/lang/String;

    return-void
.end method

.method public setOrganization(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->organization:Ljava/lang/String;

    return-void
.end method

.method public setRetry(I)V
    .registers 2

    iput p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->retry:I

    return-void
.end method

.method public setTipMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->tipMessage:Ljava/lang/String;

    return-void
.end method
