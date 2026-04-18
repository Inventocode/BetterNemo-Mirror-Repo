.class public Lcom/cmic/sso/sdk/e/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    :try_start_9
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_f} :catch_14

    invoke-static {p0}, Lcom/cmic/sso/sdk/e/d;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_14
    return-object v1
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_17

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/cmic/sso/sdk/e/r;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_17
    return-object v0
.end method
