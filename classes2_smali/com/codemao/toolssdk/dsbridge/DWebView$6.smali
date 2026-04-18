.class Lcom/codemao/toolssdk/dsbridge/DWebView$6;
.super Landroid/webkit/WebChromeClient;
.source "DWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/dsbridge/DWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/DWebView;)V
    .registers 2

    .line 595
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 901
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 903
    :cond_13
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .line 908
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 909
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 911
    :cond_13
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 917
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_15

    .line 919
    :cond_12
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    :goto_15
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3

    .line 682
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 683
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto :goto_15

    .line 685
    :cond_12
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    :goto_15
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 882
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 883
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_15

    .line 885
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    :goto_15
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 891
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 892
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 894
    :cond_13
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6

    .line 664
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 665
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1

    .line 668
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 22

    move-object v0, p0

    .line 824
    iget-object v1, v0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 825
    iget-object v1, v0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_1f

    .line 828
    :cond_1c
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    :goto_1f
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 2

    .line 844
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 845
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_15

    .line 847
    :cond_12
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    :goto_15
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 4

    .line 835
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 836
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_15

    .line 838
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :goto_15
    return-void
.end method

.method public onHideCustomView()V
    .registers 2

    .line 654
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 655
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_15

    .line 657
    :cond_12
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :goto_15
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 7

    .line 691
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$600(Lcom/codemao/toolssdk/dsbridge/DWebView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 692
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 694
    :cond_b
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 695
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v1

    .line 699
    :cond_21
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 700
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 701
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance p3, Lcom/codemao/toolssdk/dsbridge/DWebView$6$1;

    invoke-direct {p3, p0, p4}, Lcom/codemao/toolssdk/dsbridge/DWebView$6$1;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView$6;Landroid/webkit/JsResult;)V

    .line 702
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 711
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 712
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p2, -0x1

    .line 713
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    return v1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 813
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 814
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 816
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 7

    .line 720
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$600(Lcom/codemao/toolssdk/dsbridge/DWebView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 721
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 723
    :cond_b
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v1

    .line 726
    :cond_21
    new-instance p1, Lcom/codemao/toolssdk/dsbridge/DWebView$6$2;

    invoke-direct {p1, p0, p4}, Lcom/codemao/toolssdk/dsbridge/DWebView$6$2;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView$6;Landroid/webkit/JsResult;)V

    .line 738
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 739
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 740
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x104000a

    .line 741
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/high16 p3, 0x1040000

    .line 742
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, -0x1

    .line 743
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const/high16 p3, -0x1000000

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p2, -0x2

    .line 744
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTextColor(I)V

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 14

    .line 755
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-gt v0, v2, :cond_23

    const-string v0, "_dsbridge="

    .line 757
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 758
    iget-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1800(Lcom/codemao/toolssdk/dsbridge/DWebView;)Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;->call(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return v1

    .line 763
    :cond_23
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$600(Lcom/codemao/toolssdk/dsbridge/DWebView;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 764
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 767
    :cond_2e
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    if-eqz p1, :cond_48

    return v1

    .line 770
    :cond_48
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 771
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_5f

    .line 773
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 775
    :cond_5f
    iget-object p2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 776
    new-instance p4, Lcom/codemao/toolssdk/dsbridge/DWebView$6$3;

    invoke-direct {p4, p0, p5, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$6$3;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView$6;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    .line 788
    new-instance p5, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 789
    invoke-virtual {p5, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 790
    invoke-virtual {p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const/4 p5, 0x0

    .line 791
    invoke-virtual {p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x104000a

    .line 792
    invoke-virtual {p3, v0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const/high16 v0, 0x1040000

    .line 793
    invoke-virtual {p3, v0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 794
    invoke-virtual {p3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p3

    const/4 p4, -0x1

    .line 795
    invoke-virtual {p3, p4}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 796
    invoke-virtual {p3, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 797
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 p4, 0x41800000  # 16.0f

    mul-float p4, p4, p2

    float-to-int p4, p4

    .line 801
    invoke-virtual {p3, p4, p5, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 802
    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 803
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p3, 0x41700000  # 15.0f

    mul-float p3, p3, p2

    float-to-int p3, p3

    const/high16 p4, 0x40a00000  # 5.0f

    mul-float p2, p2, p4

    float-to-int p2, p2

    sub-int p2, p3, p2

    .line 805
    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/widget/EditText;->setPadding(IIII)V

    return v1
.end method

.method public onJsTimeout()Z
    .registers 2

    .line 874
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 875
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0

    .line 877
    :cond_13
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 855
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    goto :goto_15

    .line 857
    :cond_12
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    :goto_15
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 866
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    goto :goto_15

    .line 868
    :cond_12
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    :goto_15
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    .line 599
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 600
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_15

    .line 602
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :goto_15
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 617
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 618
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_15

    .line 620
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :goto_15
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 608
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 609
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_15

    .line 611
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    .line 626
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 627
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_15

    .line 629
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :goto_15
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 3

    .line 673
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 674
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto :goto_15

    .line 676
    :cond_12
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    :goto_15
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 646
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_15

    .line 648
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    :goto_15
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    .line 635
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 636
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_15

    .line 638
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :goto_15
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 928
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1

    .line 930
    :cond_13
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 937
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/toolssdk/dsbridge/DWebView$FileChooser;

    if-eqz v0, :cond_15

    .line 938
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/dsbridge/DWebView$FileChooser;

    invoke-interface {v0, p1, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView$FileChooser;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/toolssdk/dsbridge/DWebView$FileChooser;

    if-eqz v0, :cond_15

    .line 948
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/dsbridge/DWebView$FileChooser;

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/toolssdk/dsbridge/DWebView$FileChooser;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
