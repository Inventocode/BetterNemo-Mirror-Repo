.class Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/captchasdk/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/captchasdk/TCaptchaPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;


# direct methods
.method constructor <init>(Lcom/tencent/captchasdk/TCaptchaPopupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;->a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;->a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;

    invoke-static {v0}, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a(Lcom/tencent/captchasdk/TCaptchaPopupActivity;)Lcom/tencent/captchasdk/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    iget-object v1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;->a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;

    invoke-static {v1}, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->b(Lcom/tencent/captchasdk/TCaptchaPopupActivity;)F

    move-result v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p2

    iget-object p2, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;->a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;

    invoke-static {p2}, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->b(Lcom/tencent/captchasdk/TCaptchaPopupActivity;)F

    move-result p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;->a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;

    invoke-static {p1}, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a(Lcom/tencent/captchasdk/TCaptchaPopupActivity;)Lcom/tencent/captchasdk/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;->a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;

    invoke-static {p1}, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->a(Lcom/tencent/captchasdk/TCaptchaPopupActivity;)Lcom/tencent/captchasdk/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;->a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;

    invoke-static {p1}, Lcom/tencent/captchasdk/TCaptchaPopupActivity;->c(Lcom/tencent/captchasdk/TCaptchaPopupActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ret"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "info"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "retJson"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;->a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;->a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "retJson"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;->a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/tencent/captchasdk/TCaptchaPopupActivity$1;->a:Lcom/tencent/captchasdk/TCaptchaPopupActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
