.class public final Lcom/codemao/toolssdk/activity/WebActivity$onCreate$2;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/WebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/WebActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/WebActivity;Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$2;->this$0:Lcom/codemao/toolssdk/activity/WebActivity;

    iput-object p2, p0, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$2;->$binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

    .line 79
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 97
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$2;->$binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->progressBar:Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$2;->$binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->progressCircular:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 104
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$2;->$binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->progressBar:Lcom/codemao/toolssdk/view/progress/WebViewProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$2;->$binding:Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;

    iget-object p1, p1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityWebBinding;->progressCircular:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1c

    .line 82
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1c

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "http"

    invoke-static {v2, v5, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-ne v2, v0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    if-eqz v1, :cond_23

    .line 83
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3d

    .line 86
    :cond_23
    :try_start_23
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    iget-object p2, p0, Lcom/codemao/toolssdk/activity/WebActivity$onCreate$2;->this$0:Lcom/codemao/toolssdk/activity/WebActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3d
    return v0
.end method
