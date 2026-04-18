.class Lcom/tencent/open/b/h$4;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/b/h;->a(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/tencent/open/b/h;


# direct methods
.method constructor <init>(Lcom/tencent/open/b/h;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 726
    iput-object p1, p0, Lcom/tencent/open/b/h$4;->c:Lcom/tencent/open/b/h;

    iput-object p2, p0, Lcom/tencent/open/b/h$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/open/b/h$4;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "openSDK_LOG.ReportManager"

    const/4 v1, 0x0

    .line 731
    :try_start_3
    invoke-static {}, Lcom/tencent/open/b/f;->a()I

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x3

    .line 734
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->httpRequest, retryCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_55

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 739
    :try_start_20
    invoke-static {}, Lcom/tencent/open/a/f;->a()Lcom/tencent/open/a/f;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/open/b/h$4;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/open/b/h$4;->b:Ljava/util/Map;

    invoke-virtual {v3, v4, v5}, Lcom/tencent/open/a/f;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/open/a/g;

    move-result-object v3

    .line 741
    invoke-interface {v3}, Lcom/tencent/open/a/g;->d()I

    move-result v3

    .line 742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->httpRequest, statusCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/net/SocketTimeoutException; {:try_start_20 .. :try_end_44} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_44} :catch_45

    goto :goto_5b

    :catch_45
    move-exception v1

    :try_start_46
    const-string v2, "-->ReportCenter httpRequest Exception:"

    .line 747
    invoke-static {v0, v2, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5b

    :catch_4c
    move-exception v3

    const-string v4, "-->ReportCenter httpRequest SocketTimeoutException:"

    .line 745
    invoke-static {v0, v4, v3}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_52} :catch_55

    if-lt v1, v2, :cond_1e

    goto :goto_5b

    :catch_55
    move-exception v1

    const-string v2, "-->httpRequest, exception in serial executor:"

    .line 753
    invoke-static {v0, v2, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5b
    return-void
.end method
