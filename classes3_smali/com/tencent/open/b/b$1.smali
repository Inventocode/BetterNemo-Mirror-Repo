.class Lcom/tencent/open/b/b$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/b;->a(Lcom/tencent/open/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/b/c;

.field final synthetic b:Lcom/tencent/open/b/b;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/b;Lcom/tencent/open/b/c;)V
    .registers 3

    .line 124
    iput-object p1, p0, Lcom/tencent/open/b/b$1;->b:Lcom/tencent/open/b/b;

    iput-object p2, p0, Lcom/tencent/open/b/b$1;->a:Lcom/tencent/open/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/tencent/open/b/b$1;->b:Lcom/tencent/open/b/b;

    invoke-static {v0}, Lcom/tencent/open/b/b;->a(Lcom/tencent/open/b/b;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/b/b$1;->a:Lcom/tencent/open/b/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {}, Lcom/tencent/open/utils/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/m;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "AttaReporter"

    if-nez v0, :cond_2e

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attaReport net disconnect, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/open/b/b$1;->a:Lcom/tencent/open/b/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/tencent/open/b/b$1;->b:Lcom/tencent/open/b/b;

    invoke-static {v0}, Lcom/tencent/open/b/b;->b(Lcom/tencent/open/b/b;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_34

    goto :goto_3a

    :catch_34
    move-exception v0

    const-string v2, "Exception"

    .line 138
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3a
    return-void
.end method
