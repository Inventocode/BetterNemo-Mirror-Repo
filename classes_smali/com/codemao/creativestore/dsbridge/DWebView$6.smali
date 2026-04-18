.class Lcom/codemao/creativestore/dsbridge/DWebView$6;
.super Landroid/webkit/WebChromeClient;
.source "DWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/dsbridge/DWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/dsbridge/DWebView;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/dsbridge/DWebView;)V
    .registers 2

    .line 610
    iput-object p1, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .line 918
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 919
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 921
    :cond_13
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 2

    .line 926
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 927
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 929
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

    .line 934
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 935
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_15

    .line 937
    :cond_12
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    :goto_15
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 698
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto :goto_15

    .line 700
    :cond_12
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    :goto_15
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 900
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 901
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_15

    .line 903
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    :goto_15
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    .line 909
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 910
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 912
    :cond_13
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 6

    .line 679
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 680
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1

    .line 683
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 22

    move-object v0, p0

    .line 834
    iget-object v1, v0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v1}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 835
    iget-object v1, v0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v1}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_1f

    .line 838
    :cond_1c
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    :goto_1f
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 2

    .line 862
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 863
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_15

    .line 865
    :cond_12
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    :goto_15
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 4

    .line 853
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 854
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_15

    .line 856
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :goto_15
    return-void
.end method

.method public onHideCustomView()V
    .registers 2

    .line 669
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 670
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_15

    .line 672
    :cond_12
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :goto_15
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 7

    .line 706
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$600(Lcom/codemao/creativestore/dsbridge/DWebView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 707
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 709
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 710
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v1

    .line 714
    :cond_21
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 715
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 716
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance p3, Lcom/codemao/creativestore/dsbridge/DWebView$6$1;

    invoke-direct {p3, p0, p4}, Lcom/codemao/creativestore/dsbridge/DWebView$6$1;-><init>(Lcom/codemao/creativestore/dsbridge/DWebView$6;Landroid/webkit/JsResult;)V

    .line 717
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 726
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 727
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 823
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 824
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 826
    :cond_13
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 7

    .line 734
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$600(Lcom/codemao/creativestore/dsbridge/DWebView;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 735
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 737
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v1

    .line 740
    :cond_21
    new-instance p1, Lcom/codemao/creativestore/dsbridge/DWebView$6$2;

    invoke-direct {p1, p0, p4}, Lcom/codemao/creativestore/dsbridge/DWebView$6$2;-><init>(Lcom/codemao/creativestore/dsbridge/DWebView$6;Landroid/webkit/JsResult;)V

    .line 752
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 753
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 754
    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x104000a

    .line 755
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/high16 p3, 0x1040000

    .line 756
    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 14

    .line 767
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-gt v0, v2, :cond_23

    const-string v0, "_dsbridge="

    .line 769
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 770
    iget-object p1, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {p1}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1800(Lcom/codemao/creativestore/dsbridge/DWebView;)Lcom/codemao/creativestore/dsbridge/DWebView$InnerJavascriptInterface;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/codemao/creativestore/dsbridge/DWebView$InnerJavascriptInterface;->call(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return v1

    .line 775
    :cond_23
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$600(Lcom/codemao/creativestore/dsbridge/DWebView;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 776
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 779
    :cond_2e
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

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

    .line 782
    :cond_48
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 783
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_5f

    .line 785
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 787
    :cond_5f
    iget-object p2, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 788
    new-instance p4, Lcom/codemao/creativestore/dsbridge/DWebView$6$3;

    invoke-direct {p4, p0, p5, p1}, Lcom/codemao/creativestore/dsbridge/DWebView$6$3;-><init>(Lcom/codemao/creativestore/dsbridge/DWebView$6;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    .line 800
    new-instance p5, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 801
    invoke-virtual {p5, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 802
    invoke-virtual {p3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const/4 p5, 0x0

    .line 803
    invoke-virtual {p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x104000a

    .line 804
    invoke-virtual {p3, v0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const/high16 v0, 0x1040000

    .line 805
    invoke-virtual {p3, v0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    .line 806
    invoke-virtual {p3}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 807
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    const/4 v0, -0x2

    invoke-direct {p3, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 p4, 0x41800000  # 16.0f

    mul-float p4, p4, p2

    float-to-int p4, p4

    .line 811
    invoke-virtual {p3, p4, p5, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 812
    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 813
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p3, 0x41700000  # 15.0f

    mul-float p3, p3, p2

    float-to-int p3, p3

    const/high16 p4, 0x40a00000  # 5.0f

    mul-float p2, p2, p4

    float-to-int p2, p2

    sub-int p2, p3, p2

    .line 815
    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/widget/EditText;->setPadding(IIII)V

    return v1
.end method

.method public onJsTimeout()Z
    .registers 2

    .line 892
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 893
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0

    .line 895
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

    .line 872
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 873
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    goto :goto_15

    .line 875
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

    .line 883
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 884
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    goto :goto_15

    .line 886
    :cond_12
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    :goto_15
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    .line 614
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 615
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_15

    .line 617
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :goto_15
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 632
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 633
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_15

    .line 635
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :goto_15
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 623
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 624
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_15

    .line 626
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    .line 641
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 642
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_15

    .line 644
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :goto_15
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 3

    .line 688
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 689
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto :goto_15

    .line 691
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

    .line 660
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 661
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_15

    .line 663
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    :goto_15
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    .line 650
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 651
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_15

    .line 653
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

    .line 945
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 946
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1

    .line 948
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

    .line 955
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/creativestore/dsbridge/DWebView$FileChooser;

    if-eqz v0, :cond_15

    .line 956
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/dsbridge/DWebView$FileChooser;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/dsbridge/DWebView$FileChooser;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

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

    .line 965
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/creativestore/dsbridge/DWebView$FileChooser;

    if-eqz v0, :cond_15

    .line 966
    iget-object v0, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$1700(Lcom/codemao/creativestore/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/dsbridge/DWebView$FileChooser;

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/creativestore/dsbridge/DWebView$FileChooser;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
