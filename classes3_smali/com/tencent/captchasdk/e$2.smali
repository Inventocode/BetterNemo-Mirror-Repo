.class Lcom/tencent/captchasdk/e$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/captchasdk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/captchasdk/e;


# direct methods
.method constructor <init>(Lcom/tencent/captchasdk/e;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/captchasdk/e$2;->a:Lcom/tencent/captchasdk/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 6

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tcwebscheme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object p1, p0, Lcom/tencent/captchasdk/e$2;->a:Lcom/tencent/captchasdk/e;

    invoke-static {p1, v0}, Lcom/tencent/captchasdk/e;->a(Lcom/tencent/captchasdk/e;Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1

    :cond_17
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tcwebscheme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object p1, p0, Lcom/tencent/captchasdk/e$2;->a:Lcom/tencent/captchasdk/e;

    invoke-static {p1, v0}, Lcom/tencent/captchasdk/e;->a(Lcom/tencent/captchasdk/e;Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1

    :cond_17
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
