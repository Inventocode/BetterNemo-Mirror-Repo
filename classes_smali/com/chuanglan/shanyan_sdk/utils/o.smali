.class public Lcom/chuanglan/shanyan_sdk/utils/o;
.super Ljava/lang/Object;


# direct methods
.method private static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1c

    :try_start_7
    array-length v1, p0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1c

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "**"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_18

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catch_18
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    sget-boolean v0, Lcom/chuanglan/shanyan_sdk/b;->aa:Z

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    sget-boolean v0, Lcom/chuanglan/shanyan_sdk/b;->Z:Z

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    sget-boolean v0, Lcom/chuanglan/shanyan_sdk/b;->Z:Z

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method
