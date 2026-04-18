.class public Lcom/geetest/sdk/dialog/views/WebviewBuilder$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/dialog/views/WebviewBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;


# direct methods
.method public constructor <init>(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$b;->a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3a

    .line 2
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$b;->a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/aa;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 3
    invoke-static {}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->e()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$b;->a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-static {v1}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->c(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/model/beans/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geetest/sdk/model/beans/b;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "handleMessage-->timeout %s !"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geetest/sdk/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/geetest/sdk/dialog/views/WebviewBuilder$b;->a:Lcom/geetest/sdk/dialog/views/WebviewBuilder;

    invoke-static {p1}, Lcom/geetest/sdk/dialog/views/WebviewBuilder;->a(Lcom/geetest/sdk/dialog/views/WebviewBuilder;)Lcom/geetest/sdk/aa;

    move-result-object p1

    const-string v0, "204"

    const-string v1, "load static resource timeout !"

    invoke-virtual {p1, v0, v1}, Lcom/geetest/sdk/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return-void
.end method
