.class Lcom/codemao/creativestore/dsbridge/DWebView$6$1;
.super Ljava/lang/Object;
.source "DWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/dsbridge/DWebView$6;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativestore/dsbridge/DWebView$6;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/dsbridge/DWebView$6;Landroid/webkit/JsResult;)V
    .registers 3

    .line 717
    iput-object p1, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6$1;->this$1:Lcom/codemao/creativestore/dsbridge/DWebView$6;

    iput-object p2, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 720
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 721
    iget-object p1, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6$1;->this$1:Lcom/codemao/creativestore/dsbridge/DWebView$6;

    iget-object p1, p1, Lcom/codemao/creativestore/dsbridge/DWebView$6;->this$0:Lcom/codemao/creativestore/dsbridge/DWebView;

    invoke-static {p1}, Lcom/codemao/creativestore/dsbridge/DWebView;->access$600(Lcom/codemao/creativestore/dsbridge/DWebView;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 722
    iget-object p1, p0, Lcom/codemao/creativestore/dsbridge/DWebView$6$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    :cond_12
    return-void
.end method
