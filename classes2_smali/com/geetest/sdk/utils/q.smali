.class public final Lcom/geetest/sdk/utils/q;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()[B
    .registers 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcom/geetest/sdk/utils/q;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(I)[B
    .registers 3

    .line 2
    new-array p0, p0, [B

    .line 5
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    .line 6
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_13

    :cond_d
    const-string v0, "SHA1PRNG"

    .line 8
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 10
    :goto_13
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
