.class Lcom/tencent/captchasdk/TCaptchaDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/captchasdk/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/captchasdk/TCaptchaDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/captchasdk/TCaptchaDialog;


# direct methods
.method constructor <init>(Lcom/tencent/captchasdk/TCaptchaDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-static {v0}, Lcom/tencent/captchasdk/TCaptchaDialog;->b(Lcom/tencent/captchasdk/TCaptchaDialog;)Lcom/tencent/captchasdk/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    iget-object v1, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-static {v1}, Lcom/tencent/captchasdk/TCaptchaDialog;->c(Lcom/tencent/captchasdk/TCaptchaDialog;)F

    move-result v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p2

    iget-object p2, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-static {p2}, Lcom/tencent/captchasdk/TCaptchaDialog;->c(Lcom/tencent/captchasdk/TCaptchaDialog;)F

    move-result p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-static {p1}, Lcom/tencent/captchasdk/TCaptchaDialog;->b(Lcom/tencent/captchasdk/TCaptchaDialog;)Lcom/tencent/captchasdk/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-static {p1}, Lcom/tencent/captchasdk/TCaptchaDialog;->b(Lcom/tencent/captchasdk/TCaptchaDialog;)Lcom/tencent/captchasdk/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-static {p1}, Lcom/tencent/captchasdk/TCaptchaDialog;->d(Lcom/tencent/captchasdk/TCaptchaDialog;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-virtual {v0}, Lcom/tencent/captchasdk/TCaptchaDialog;->dismiss()V

    :try_start_5
    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-static {v0}, Lcom/tencent/captchasdk/TCaptchaDialog;->a(Lcom/tencent/captchasdk/TCaptchaDialog;)Lcom/tencent/captchasdk/TCaptchaVerifyListener;

    move-result-object v0

    if-eqz v0, :cond_2f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ret"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "info"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-static {p1}, Lcom/tencent/captchasdk/TCaptchaDialog;->a(Lcom/tencent/captchasdk/TCaptchaDialog;)Lcom/tencent/captchasdk/TCaptchaVerifyListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/captchasdk/TCaptchaVerifyListener;->onVerifyCallback(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-virtual {p1}, Lcom/tencent/captchasdk/TCaptchaDialog;->dismiss()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-static {v0}, Lcom/tencent/captchasdk/TCaptchaDialog;->a(Lcom/tencent/captchasdk/TCaptchaDialog;)Lcom/tencent/captchasdk/TCaptchaVerifyListener;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-static {p1}, Lcom/tencent/captchasdk/TCaptchaDialog;->a(Lcom/tencent/captchasdk/TCaptchaDialog;)Lcom/tencent/captchasdk/TCaptchaVerifyListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/tencent/captchasdk/TCaptchaVerifyListener;->onVerifyCallback(Lorg/json/JSONObject;)V

    :cond_16
    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaDialog$1;->a:Lcom/tencent/captchasdk/TCaptchaDialog;

    invoke-virtual {p1}, Lcom/tencent/captchasdk/TCaptchaDialog;->dismiss()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    return-void
.end method
