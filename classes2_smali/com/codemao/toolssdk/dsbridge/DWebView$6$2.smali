.class Lcom/codemao/toolssdk/dsbridge/DWebView$6$2;
.super Ljava/lang/Object;
.source "DWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/dsbridge/DWebView$6;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/toolssdk/dsbridge/DWebView$6;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/DWebView$6;Landroid/webkit/JsResult;)V
    .registers 3

    .line 726
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6$2;->this$1:Lcom/codemao/toolssdk/dsbridge/DWebView$6;

    iput-object p2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 729
    iget-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6$2;->this$1:Lcom/codemao/toolssdk/dsbridge/DWebView$6;

    iget-object p1, p1, Lcom/codemao/toolssdk/dsbridge/DWebView$6;->this$0:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-static {p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$600(Lcom/codemao/toolssdk/dsbridge/DWebView;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, -0x1

    if-ne p2, p1, :cond_13

    .line 731
    iget-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    goto :goto_18

    .line 733
    :cond_13
    iget-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView$6$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    :cond_18
    :goto_18
    return-void
.end method
