.class public Lcom/qiniu/android/utils/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public static encrypt([B)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    .line 9
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 11
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/qiniu/android/dns/util/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
