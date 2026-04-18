.class public final Lcom/blankj/utilcode/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 252
    array-length v0, p1

    if-lez v0, :cond_10

    .line 254
    :try_start_7
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Ljava/util/IllegalFormatException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p1

    .line 256
    invoke-virtual {p1}, Ljava/util/IllegalFormatException;->printStackTrace()V

    :cond_10
    :goto_10
    return-object p0
.end method

.method public static getString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 208
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/StringUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 220
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    .line 222
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 223
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
