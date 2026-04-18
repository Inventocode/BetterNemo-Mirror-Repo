.class Lcom/geetest/sdk/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/h;-><init>(Landroid/content/Context;Lcom/geetest/sdk/GT3ConfigBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/GT3ConfigBean;

.field final synthetic b:Lcom/geetest/sdk/h;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/h;Lcom/geetest/sdk/GT3ConfigBean;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/h$a;->b:Lcom/geetest/sdk/h;

    iput-object p2, p0, Lcom/geetest/sdk/h$a;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/geetest/sdk/h$a;->b:Lcom/geetest/sdk/h;

    invoke-static {p1}, Lcom/geetest/sdk/h;->a(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/g;

    move-result-object p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/geetest/sdk/h$a;->b:Lcom/geetest/sdk/h;

    invoke-static {p1}, Lcom/geetest/sdk/h;->a(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/g;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 2
    iget-object p1, p0, Lcom/geetest/sdk/h$a;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 3
    iget-object p1, p0, Lcom/geetest/sdk/h$a;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/geetest/sdk/GT3BaseListener;->onClosed(I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    :goto_2b
    return-void
.end method
