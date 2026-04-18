.class public Lcom/sdk/d/c$a;
.super Lcom/sdk/d/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/d/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sdk/d/c$e<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/sdk/d/c;


# direct methods
.method public constructor <init>(Lcom/sdk/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/sdk/d/c$a;->b:Lcom/sdk/d/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sdk/d/c$e;-><init>(Lcom/sdk/d/c$a;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/c$a;->b:Lcom/sdk/d/c;

    iget-object v0, v0, Lcom/sdk/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/sdk/d/c$a;->b:Lcom/sdk/d/c;

    iget-object v2, p0, Lcom/sdk/d/c$e;->a:[Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/sdk/a/c;

    iget-object v4, v3, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    sget-object v5, Lcom/sdk/a/c$a;->e:Lcom/sdk/a/c$a;

    if-eq v4, v5, :cond_e9

    if-eqz v2, :cond_e9

    array-length v4, v2

    if-nez v4, :cond_21

    goto/16 :goto_e9

    :cond_21
    array-length v4, v2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v4, v5, :cond_3d

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sdk/a/c;->q:Ljava/lang/String;

    iput-boolean v1, v3, Lcom/sdk/a/c;->r:Z

    aget-object v4, v2, v7

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    aget-object v4, v2, v6

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/sdk/a/c;->t:Ljava/lang/Boolean;

    :cond_3d
    array-length v4, v2

    if-ne v4, v7, :cond_46

    aget-object v4, v2, v1

    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/sdk/a/c;->u:Ljava/lang/Boolean;

    :cond_46
    const/4 v4, 0x0

    :try_start_47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/sdk/a/c;->p:J

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v3, v8}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    aget-object v2, v2, v4

    check-cast v2, Lcom/sdk/a/d;

    invoke-virtual {v2}, Lcom/sdk/a/d;->b()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/sdk/a/c;->l:Ljava/lang/String;

    invoke-virtual {v2, v8, v4}, Lcom/sdk/a/d;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v8

    if-nez v8, :cond_7f

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    new-instance v5, Lcom/sdk/a/f;

    invoke-virtual {v3}, Lcom/sdk/a/c;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v4, v8, v4}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    aput-object v5, v2, v1

    invoke-virtual {v3, v2}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    goto :goto_e9

    :cond_7f
    invoke-virtual {v3, v2, v8}, Lcom/sdk/a/c;->b(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;

    move-result-object v2

    iget v8, v2, Lcom/sdk/a/f;->a:I

    if-nez v8, :cond_95

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    aput-object v2, v8, v1

    invoke-virtual {v3, v8}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    goto :goto_e9

    :cond_95
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    iget v8, v2, Lcom/sdk/a/f;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    iget-object v2, v2, Lcom/sdk/a/f;->b:Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {v3, v5}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_ac} :catch_ad

    goto :goto_e9

    :catch_ad
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sdk/n/c;->b(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "网络访问异常：\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v3, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    const-string v8, "PriorityAsyncTask"

    invoke-static {v8, v2, v5}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const v4, 0x49bb2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "网络访问异常"

    aput-object v1, v2, v7

    invoke-virtual {v3, v2}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    :cond_e9
    :goto_e9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdk/d/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
