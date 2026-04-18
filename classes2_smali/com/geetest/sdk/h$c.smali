.class Lcom/geetest/sdk/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/geetest/sdk/h$c;->b:Lcom/geetest/sdk/h;

    iput-object p2, p0, Lcom/geetest/sdk/h$c;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_40

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_40

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_40

    iget-object p2, p0, Lcom/geetest/sdk/h$c;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->isUnCanceledOnTouchKeyCodeBack()Z

    move-result p2

    if-nez p2, :cond_40

    .line 2
    iget-object p2, p0, Lcom/geetest/sdk/h$c;->b:Lcom/geetest/sdk/h;

    invoke-static {p2}, Lcom/geetest/sdk/h;->b(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/b$b;

    move-result-object p2

    if-eqz p2, :cond_29

    .line 3
    iget-object p2, p0, Lcom/geetest/sdk/h$c;->b:Lcom/geetest/sdk/h;

    invoke-static {p2}, Lcom/geetest/sdk/h;->b(Lcom/geetest/sdk/h;)Lcom/geetest/sdk/b$b;

    move-result-object p2

    invoke-interface {p2}, Lcom/geetest/sdk/b$b;->h()V

    .line 5
    :cond_29
    iget-object p2, p0, Lcom/geetest/sdk/h$c;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p2

    if-eqz p2, :cond_3b

    .line 6
    iget-object p2, p0, Lcom/geetest/sdk/h$c;->a:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p2}, Lcom/geetest/sdk/GT3ConfigBean;->getListener()Lcom/geetest/sdk/GT3Listener;

    move-result-object p2

    const/4 p3, 0x3

    invoke-interface {p2, p3}, Lcom/geetest/sdk/GT3BaseListener;->onClosed(I)V

    .line 8
    :cond_3b
    iget-object p2, p0, Lcom/geetest/sdk/h$c;->b:Lcom/geetest/sdk/h;

    invoke-virtual {p2}, Lcom/geetest/sdk/h;->b()V

    :cond_40
    return p1
.end method
