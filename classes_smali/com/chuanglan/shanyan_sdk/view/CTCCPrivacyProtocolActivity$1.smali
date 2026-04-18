.class Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a(Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a(Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->a(Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_23

    :cond_1e
    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity$1;->a:Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/view/CTCCPrivacyProtocolActivity;->finish()V

    :goto_23
    return-void
.end method
