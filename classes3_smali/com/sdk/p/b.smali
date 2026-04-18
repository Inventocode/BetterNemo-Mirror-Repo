.class public Lcom/sdk/p/b;
.super Lcom/sdk/i/a;


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/sdk/f/c;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lcom/sdk/p/a;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p0}, Lcom/sdk/n/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_62

    invoke-static {p0}, Lcom/sdk/q/c;->a(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p1, :cond_5a

    const-string v0, "RSA/ECB/PKCS1Padding"

    :try_start_18
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_24} :catch_52
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_18 .. :try_end_24} :catch_4a
    .catch Ljava/security/InvalidKeyException; {:try_start_18 .. :try_end_24} :catch_42
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_18 .. :try_end_24} :catch_3a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_18 .. :try_end_24} :catch_32

    new-instance p1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_32
    new-instance p0, Ljavax/crypto/BadPaddingException;

    const-string p1, "密文数据已损坏"

    invoke-direct {p0, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3a
    new-instance p0, Ljavax/crypto/IllegalBlockSizeException;

    const-string p1, "密文长度非法"

    invoke-direct {p0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_42
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "解密公钥非法,请检查"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4a
    new-instance p0, Ljavax/crypto/NoSuchPaddingException;

    const-string p1, "解密出错！不支持该填充机制"

    invoke-direct {p0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_52
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p1, "无此解密算法"

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "解密公钥为空, 请设置"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "rsaAes key is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
