.class Lcom/geetest/sdk/utils/l$b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geetest/sdk/utils/l$b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/geetest/sdk/utils/l$b;


# direct methods
.method constructor <init>(Lcom/geetest/sdk/utils/l$b;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/utils/l$b$a;->a:Lcom/geetest/sdk/utils/l$b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 8
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_26

    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/geetest/sdk/utils/l$b$b;

    .line 10
    iget-object v0, p0, Lcom/geetest/sdk/utils/l$b$a;->a:Lcom/geetest/sdk/utils/l$b;

    invoke-static {v0}, Lcom/geetest/sdk/utils/l$b;->a(Lcom/geetest/sdk/utils/l$b;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-wide v2, p1, Lcom/geetest/sdk/utils/l$b$b;->a:J

    iget-object v4, p1, Lcom/geetest/sdk/utils/l$b$b;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/geetest/sdk/utils/l$b$b;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/geetest/sdk/utils/l$b;->a(Ljava/text/SimpleDateFormat;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geetest/sdk/utils/l$b;->a(Lcom/geetest/sdk/utils/l$b;Ljava/lang/String;)V

    goto :goto_2c

    :cond_26
    const/4 p1, 0x1

    if-ne v0, p1, :cond_2c

    .line 12
    invoke-static {}, Lcom/geetest/sdk/utils/l$b;->c()Z

    :cond_2c
    :goto_2c
    return-void
.end method
