.class public Lcom/ainirobot/oauth/connect/SignUtil;
.super Ljava/lang/Object;
.source "SignUtil.java"


# direct methods
.method public static encodeBase64([B)Ljava/lang/String;
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static sign256(Ljava/lang/String;Ljava/security/PrivateKey;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "SHA256withRSA"

    .line 40
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    const-string p1, "UTF-8"

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 46
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    return-object p0
.end method
