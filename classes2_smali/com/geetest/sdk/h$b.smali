.class Lcom/geetest/sdk/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/geetest/sdk/h$b;->b:Lcom/geetest/sdk/h;

    iput-object p2, p0, Lcom/geetest/sdk/h$b;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/geetest/sdk/h$b;->b:Lcom/geetest/sdk/h;

    invoke-static {p1}, Lcom/geetest/sdk/h;->b(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/b$b;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    iget-object p1, p0, Lcom/geetest/sdk/h$b;->b:Lcom/geetest/sdk/h;

    invoke-static {p1}, Lcom/geetest/sdk/h;->b(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/b$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/geetest/sdk/b$b;->h()V

    .line 4
    :cond_11
    iget-object p1, p0, Lcom/geetest/sdk/h$b;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 5
    iget-object p1, p0, Lcom/geetest/sdk/h$b;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/geetest/sdk/GT3BaseListener;->onClosed(I)V

    :cond_23
    return-void
.end method
