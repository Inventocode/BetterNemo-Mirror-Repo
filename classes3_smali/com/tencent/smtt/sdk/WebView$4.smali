.class Lcom/tencent/smtt/sdk/WebView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/WebView;->setDownloadListener(Lcom/tencent/smtt/sdk/DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/DownloadListener;

.field final synthetic b:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/DownloadListener;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView$4;->b:Lcom/tencent/smtt/sdk/WebView;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView$4;->a:Lcom/tencent/smtt/sdk/DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$4;->a:Lcom/tencent/smtt/sdk/DownloadListener;

    if-nez v0, :cond_2f

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView$4;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/sdk/WebView;)Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_f

    move-object p2, p3

    goto :goto_19

    :cond_f
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView$4;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/sdk/WebView;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    :goto_19
    if-eqz p2, :cond_25

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p4, "com.tencent.mm"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_37

    :cond_25
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView$4;->b:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/sdk/WebView;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3, p3}, Lcom/tencent/smtt/sdk/stat/MttLoader;->loadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/smtt/sdk/WebView;)I

    goto :goto_37

    :cond_2f
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/smtt/sdk/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_37
    :goto_37
    return-void
.end method
