.class public Lcom/sdk/v/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/v/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:J

.field public final synthetic c:Lcom/sdk/v/a;


# direct methods
.method public constructor <init>(Lcom/sdk/v/a;J)V
    .registers 5

    iput-object p1, p0, Lcom/sdk/v/a$b;->c:Lcom/sdk/v/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sdk/v/a$b;->a:Landroid/os/Handler;

    iput-wide p2, p0, Lcom/sdk/v/a$b;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/sdk/v/a$b;->c:Lcom/sdk/v/a;

    iget-object v0, v0, Lcom/sdk/v/a;->d:Lcom/sdk/a/c;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/sdk/v/a;->f:Ljava/lang/String;

    sget-object v1, Lcom/sdk/v/a;->g:Ljava/lang/Boolean;

    const-string v2, "超时，已取消请求"

    invoke-static {v0, v2, v1}, Lcom/sdk/n/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    iget-object v0, p0, Lcom/sdk/v/a$b;->c:Lcom/sdk/v/a;

    iget-object v0, v0, Lcom/sdk/v/a;->d:Lcom/sdk/a/c;

    invoke-virtual {v0}, Lcom/sdk/a/c;->a()V

    :cond_16
    iget-object v1, p0, Lcom/sdk/v/a$b;->c:Lcom/sdk/v/a;

    invoke-static {}, Lcom/sdk/n/c;->a()Lcom/sdk/f/a;

    move-result-object v0

    iget-object v6, v0, Lcom/sdk/f/a;->c:Ljava/lang/String;

    const/4 v2, 0x1

    const v4, 0x18a8d

    const/4 v5, 0x0

    const-string v3, "超时"

    invoke-virtual/range {v1 .. v6}, Lcom/sdk/v/a;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
