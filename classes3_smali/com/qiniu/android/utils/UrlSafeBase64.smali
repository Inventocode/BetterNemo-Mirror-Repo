.class public final Lcom/qiniu/android/utils/UrlSafeBase64;
.super Ljava/lang/Object;
.source "UrlSafeBase64.java"


# direct methods
.method public static decode(Ljava/lang/String;)[B
    .registers 2

    const/16 v0, 0xa

    .line 48
    :try_start_2
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static encodeToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "utf-8"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/qiniu/android/utils/UrlSafeBase64;->encodeToString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xa

    .line 37
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
