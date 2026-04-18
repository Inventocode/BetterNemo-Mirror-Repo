.class public Lcom/sdk/q/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 13

    const-string v0, "access_limit_time"

    invoke-static {p0, v0}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    if-nez v1, :cond_15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return v4

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/32 v7, 0x927c0

    const-wide/16 v9, 0x0

    const-string v1, "access_limit_count"

    cmp-long v11, v5, v7

    if-lez v11, :cond_35

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return v4

    :cond_35
    invoke-static {p0, v1}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_43

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return v4

    :cond_43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long p0, v0, v2

    if-gtz p0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v4, 0x0

    :goto_4f
    return v4
.end method

.method public static b(Landroid/content/Context;)V
    .registers 6

    const-string v0, "access_limit_count"

    invoke-static {p0, v0}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_b

    const-wide/16 v1, 0x0

    goto :goto_12

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    :goto_12
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
