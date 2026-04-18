.class public final Lcom/efs/sdk/base/a/h/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    if-eqz p0, :cond_35

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    goto :goto_35

    :cond_b
    :try_start_b
    const-string v1, "MD5"

    .line 55
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 57
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 58
    sget-object p0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%032x"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-static {p0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_2c} :catch_2d

    goto :goto_35

    :catch_2d
    move-exception p0

    const-string v1, "efs.base"

    const-string v2, "md5 error"

    .line 60
    invoke-static {v1, v2, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .line 27
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    .line 1031
    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    .line 27
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    .line 70
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    const-string v0, "efs.base"

    const-string v1, "urlEncode error"

    .line 72
    invoke-static {v0, v1, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .registers 3

    .line 36
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    .line 1044
    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    return-object v0

    :catchall_c
    move-exception p0

    const-string v0, "efs.base"

    const-string v1, "decode error"

    .line 38
    invoke-static {v0, v1, p0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method
