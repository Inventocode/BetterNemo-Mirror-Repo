.class Lcom/cmic/sso/sdk/view/c$3;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/view/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/view/c;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/view/c;)V
    .registers 2

    iput-object p1, p0, Lcom/cmic/sso/sdk/view/c$3;->a:Lcom/cmic/sso/sdk/view/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/c$3;->a:Lcom/cmic/sso/sdk/view/c;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/c;->a(Lcom/cmic/sso/sdk/view/c;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
