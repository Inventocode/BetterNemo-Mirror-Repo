.class Lcom/unikuwei/mianmi/account/shield/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unikuwei/mianmi/account/shield/c/a;->a(Landroid/content/Context;IILcom/unikuwei/mianmi/account/shield/c/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unikuwei/mianmi/account/shield/c/a;


# direct methods
.method constructor <init>(Lcom/unikuwei/mianmi/account/shield/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$1;->a:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/a$1;->a:Lcom/unikuwei/mianmi/account/shield/c/a;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$1;->a:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$1;->a:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;)Lcom/unikuwei/mianmi/account/shield/c/b;

    move-result-object v1

    const/16 v2, 0x2710

    const-string v3, "请求超时"

    invoke-virtual {v1, v2, v3}, Lcom/unikuwei/mianmi/account/shield/c/b;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$1;->a:Lcom/unikuwei/mianmi/account/shield/c/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;Lcom/unikuwei/mianmi/account/shield/c/b;)Lcom/unikuwei/mianmi/account/shield/c/b;

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$1;->a:Lcom/unikuwei/mianmi/account/shield/c/a;

    invoke-static {v1}, Lcom/unikuwei/mianmi/account/shield/c/a;->b(Lcom/unikuwei/mianmi/account/shield/c/a;)V

    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method
