.class Lcom/geetest/sdk/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/geetest/sdk/e$a;


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
    iput-object p1, p0, Lcom/geetest/sdk/h$d;->b:Lcom/geetest/sdk/h;

    iput-object p2, p0, Lcom/geetest/sdk/h$d;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/h$d;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    iget-object v1, p0, Lcom/geetest/sdk/h$d;->b:Lcom/geetest/sdk/h;

    invoke-static {v1}, Lcom/geetest/sdk/h;->a(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3Listener;->actionBeforeDialogShow(Landroid/app/Dialog;)V

    :cond_11
    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/h$d;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    iget-object v1, p0, Lcom/geetest/sdk/h$d;->b:Lcom/geetest/sdk/h;

    invoke-static {v1}, Lcom/geetest/sdk/h;->a(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3Listener;->actionAfterDialogShow(Landroid/app/Dialog;)V

    :cond_11
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/h$d;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3
    iget-object v1, p0, Lcom/geetest/sdk/h$d;->b:Lcom/geetest/sdk/h;

    invoke-static {v1}, Lcom/geetest/sdk/h;->a(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/g;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/geetest/sdk/GT3Listener;->onWindowFocusChanged(Landroid/app/Dialog;Z)V

    :cond_11
    return-void
.end method
