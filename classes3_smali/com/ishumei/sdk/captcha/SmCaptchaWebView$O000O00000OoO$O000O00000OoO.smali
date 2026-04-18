.class Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO$O000O00000OoO;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O0000O000000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;


# direct methods
.method constructor <init>(Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;)V
    .registers 2

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO$O000O00000OoO;->O0000O000000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO$O000O00000OoO;->O0000O000000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;

    invoke-static {v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O0000O000000oO(Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO$O000O00000OoO;->O0000O000000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;

    invoke-static {v0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O000O00000OoO(Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;)V

    return-void
.end method
