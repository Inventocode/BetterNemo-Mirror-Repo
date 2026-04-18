.class Lcom/codemao/nemo/view/X5DWebView$6;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "X5DWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/X5DWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/X5DWebView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/X5DWebView;)V
    .registers 2

    .line 585
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .line 868
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 869
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 871
    :cond_13
    invoke-super {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .line 876
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 877
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 879
    :cond_13
    invoke-super {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 885
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebChromeClient;->getVisitedHistory(Lcom/tencent/smtt/sdk/ValueCallback;)V

    goto :goto_15

    .line 887
    :cond_12
    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebChromeClient;->getVisitedHistory(Lcom/tencent/smtt/sdk/ValueCallback;)V

    :goto_15
    return-void
.end method

.method public onCloseWindow(Lcom/tencent/smtt/sdk/WebView;)V
    .registers 3

    .line 672
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 673
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onCloseWindow(Lcom/tencent/smtt/sdk/WebView;)V

    goto :goto_15

    .line 675
    :cond_12
    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onCloseWindow(Lcom/tencent/smtt/sdk/WebView;)V

    :goto_15
    return-void
.end method

.method public onConsoleMessage(Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;)Z
    .registers 3

    .line 859
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 860
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onConsoleMessage(Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 862
    :cond_13
    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onConsoleMessage(Lcom/tencent/smtt/export/external/interfaces/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Lcom/tencent/smtt/sdk/WebView;ZZLandroid/os/Message;)Z
    .registers 6

    .line 654
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 655
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onCreateWindow(Lcom/tencent/smtt/sdk/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1

    .line 658
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onCreateWindow(Lcom/tencent/smtt/sdk/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;)V
    .registers 22

    move-object v0, p0

    .line 812
    iget-object v1, v0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v1}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 813
    iget-object v1, v0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v1}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/tencent/smtt/sdk/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;)V

    goto :goto_1f

    .line 816
    :cond_1c
    invoke-super/range {p0 .. p9}, Lcom/tencent/smtt/sdk/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;)V

    :goto_1f
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 2

    .line 840
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 841
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_15

    .line 843
    :cond_12
    invoke-super {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    :goto_15
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/GeolocationPermissionsCallback;)V
    .registers 4

    .line 831
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 832
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/GeolocationPermissionsCallback;)V

    goto :goto_15

    .line 834
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/GeolocationPermissionsCallback;)V

    :goto_15
    return-void
.end method

.method public onHideCustomView()V
    .registers 2

    .line 644
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 645
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onHideCustomView()V

    goto :goto_15

    .line 647
    :cond_12
    invoke-super {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onHideCustomView()V

    :goto_15
    return-void
.end method

.method public onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .registers 7

    .line 683
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$500(Lcom/codemao/nemo/view/X5DWebView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 684
    invoke-interface {p4}, Lcom/tencent/smtt/export/external/interfaces/JsResult;->confirm()V

    .line 686
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 687
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v1

    .line 691
    :cond_21
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 692
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 693
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance p3, Lcom/codemao/nemo/view/X5DWebView$6$1;

    invoke-direct {p3, p0, p4}, Lcom/codemao/nemo/view/X5DWebView$6$1;-><init>(Lcom/codemao/nemo/view/X5DWebView$6;Lcom/tencent/smtt/export/external/interfaces/JsResult;)V

    .line 694
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 703
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 704
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1
.end method

.method public onJsBeforeUnload(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .registers 6

    .line 801
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 802
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsBeforeUnload(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result p1

    return p1

    .line 804
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsBeforeUnload(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .registers 7

    .line 711
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$500(Lcom/codemao/nemo/view/X5DWebView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 712
    invoke-interface {p4}, Lcom/tencent/smtt/export/external/interfaces/JsResult;->confirm()V

    .line 714
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsConfirm(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v1

    .line 717
    :cond_21
    new-instance p1, Lcom/codemao/nemo/view/X5DWebView$6$2;

    invoke-direct {p1, p0, p4}, Lcom/codemao/nemo/view/X5DWebView$6$2;-><init>(Lcom/codemao/nemo/view/X5DWebView$6;Lcom/tencent/smtt/export/external/interfaces/JsResult;)V

    .line 729
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 730
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 731
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x104000a

    .line 732
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/high16 p3, 0x1040000

    .line 733
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v1
.end method

.method public onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .registers 14

    .line 745
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-gt v0, v2, :cond_23

    const-string v0, "_dsbridge="

    .line 747
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 748
    iget-object p1, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {p1}, Lcom/codemao/nemo/view/X5DWebView;->access$1400(Lcom/codemao/nemo/view/X5DWebView;)Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;->call(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    return v1

    .line 753
    :cond_23
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$500(Lcom/codemao/nemo/view/X5DWebView;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 754
    invoke-interface {p5}, Lcom/tencent/smtt/export/external/interfaces/JsResult;->confirm()V

    .line 757
    :cond_2e
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z

    move-result p1

    if-eqz p1, :cond_48

    return v1

    .line 760
    :cond_48
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 761
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_5f

    .line 763
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 765
    :cond_5f
    iget-object p2, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 766
    new-instance p4, Lcom/codemao/nemo/view/X5DWebView$6$3;

    invoke-direct {p4, p0, p5, p1}, Lcom/codemao/nemo/view/X5DWebView$6$3;-><init>(Lcom/codemao/nemo/view/X5DWebView$6;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;Landroid/widget/EditText;)V

    .line 778
    new-instance p5, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 779
    invoke-virtual {p5, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 780
    invoke-virtual {p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const/4 p5, 0x0

    .line 781
    invoke-virtual {p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x104000a

    .line 782
    invoke-virtual {p3, v0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const/high16 v0, 0x1040000

    .line 783
    invoke-virtual {p3, v0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 784
    invoke-virtual {p3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 785
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    const/4 v0, -0x2

    invoke-direct {p3, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 p4, 0x41800000  # 16.0f

    mul-float p4, p4, p2

    float-to-int p4, p4

    .line 789
    invoke-virtual {p3, p4, p5, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 790
    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 791
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p3, 0x41700000  # 15.0f

    mul-float p3, p3, p2

    float-to-int p3, p3

    const/high16 p4, 0x40a00000  # 5.0f

    mul-float p2, p2, p4

    float-to-int p2, p2

    sub-int p2, p3, p2

    .line 793
    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/widget/EditText;->setPadding(IIII)V

    return v1
.end method

.method public onJsTimeout()Z
    .registers 2

    .line 850
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 851
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0

    .line 853
    :cond_13
    invoke-super {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V
    .registers 4

    .line 589
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 590
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V

    goto :goto_15

    .line 592
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V

    :goto_15
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;)V
    .registers 13

    .line 823
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 824
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReachedMaxAppCacheSize(JJLcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;)V

    .line 826
    :cond_14
    invoke-super/range {p0 .. p5}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReachedMaxAppCacheSize(JJLcom/tencent/smtt/sdk/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onReceivedIcon(Lcom/tencent/smtt/sdk/WebView;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 607
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 608
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedIcon(Lcom/tencent/smtt/sdk/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_15

    .line 610
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedIcon(Lcom/tencent/smtt/sdk/WebView;Landroid/graphics/Bitmap;)V

    :goto_15
    return-void
.end method

.method public onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .registers 4

    .line 598
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 599
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    goto :goto_15

    .line 601
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public onReceivedTouchIconUrl(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Z)V
    .registers 5

    .line 616
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 617
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTouchIconUrl(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Z)V

    goto :goto_15

    .line 619
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTouchIconUrl(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Z)V

    :goto_15
    return-void
.end method

.method public onRequestFocus(Lcom/tencent/smtt/sdk/WebView;)V
    .registers 3

    .line 663
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 664
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onRequestFocus(Lcom/tencent/smtt/sdk/WebView;)V

    goto :goto_15

    .line 666
    :cond_12
    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebChromeClient;->onRequestFocus(Lcom/tencent/smtt/sdk/WebView;)V

    :goto_15
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V
    .registers 5

    .line 635
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 636
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowCustomView(Landroid/view/View;ILcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V

    goto :goto_15

    .line 638
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowCustomView(Landroid/view/View;ILcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V

    :goto_15
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V
    .registers 4

    .line 625
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 626
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V

    goto :goto_15

    .line 628
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient$CustomViewCallback;)V

    :goto_15
    return-void
.end method

.method public onShowFileChooser(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/ValueCallback;Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/WebView;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 904
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowFileChooser(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/ValueCallback;Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1

    .line 906
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->onShowFileChooser(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/ValueCallback;Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method

.method public openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/nemo/view/X5DWebView$FileChooser;

    if-eqz v0, :cond_15

    .line 914
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/X5DWebView$FileChooser;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/view/X5DWebView$FileChooser;->openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 894
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView$6;->this$0:Lcom/codemao/nemo/view/X5DWebView;

    invoke-static {v0}, Lcom/codemao/nemo/view/X5DWebView;->access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 897
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebChromeClient;->openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
