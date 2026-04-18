.class Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO$O0000O000000oO;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;
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

    iput-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO$O0000O000000oO;->O0000O000000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    goto :goto_e

    :cond_9
    iget-object p1, p0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO$O0000O000000oO;->O0000O000000oO:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;

    invoke-virtual {p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$O000O00000OoO;->O0000O000000oO()V

    :goto_e
    return-void
.end method
