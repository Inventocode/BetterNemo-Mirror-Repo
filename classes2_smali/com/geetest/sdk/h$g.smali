.class Lcom/geetest/sdk/h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/h;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/h;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/h$g;->a:Lcom/geetest/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/geetest/sdk/h$g;->a:Lcom/geetest/sdk/h;

    invoke-static {p1}, Lcom/geetest/sdk/h;->d(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/geetest/sdk/h$g;->a:Lcom/geetest/sdk/h;

    invoke-static {p1}, Lcom/geetest/sdk/h;->d(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 2
    iget-object p1, p0, Lcom/geetest/sdk/h$g;->a:Lcom/geetest/sdk/h;

    invoke-static {p1}, Lcom/geetest/sdk/h;->d(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/GT3ConfigBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/geetest/sdk/GT3BaseListener;->onSuccess(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_28
    :goto_28
    return-void
.end method
