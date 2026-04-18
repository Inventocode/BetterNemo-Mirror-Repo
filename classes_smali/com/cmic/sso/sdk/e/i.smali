.class public Lcom/cmic/sso/sdk/e/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "i"

.field private static d:Lcom/cmic/sso/sdk/e/i;


# instance fields
.field private b:Ljava/security/PublicKey;

.field private c:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmic/sso/sdk/e/i;->b:Ljava/security/PublicKey;

    iput-object v0, p0, Lcom/cmic/sso/sdk/e/i;->c:Ljava/security/PublicKey;

    :try_start_8
    invoke-direct {p0}, Lcom/cmic/sso/sdk/e/i;->b()V

    iget-object v0, p0, Lcom/cmic/sso/sdk/e/i;->c:Ljava/security/PublicKey;

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/cmic/sso/sdk/e/i;->c()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17
    :goto_17
    return-void
.end method

.method public static a()Lcom/cmic/sso/sdk/e/i;
    .registers 1

    sget-object v0, Lcom/cmic/sso/sdk/e/i;->d:Lcom/cmic/sso/sdk/e/i;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cmic/sso/sdk/e/i;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/e/i;-><init>()V

    sput-object v0, Lcom/cmic/sso/sdk/e/i;->d:Lcom/cmic/sso/sdk/e/i;

    :cond_b
    sget-object v0, Lcom/cmic/sso/sdk/e/i;->d:Lcom/cmic/sso/sdk/e/i;

    return-object v0
.end method

.method private b()V
    .registers 4

    :try_start_0
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/YHP9utFGOhGk7Xf5L7jOgQz5\nv2JKxdrIE3yzYsHoZJwzKC7Ttx380UZmBFzr5I1k6FFMn/YGXd4ts6UHT/nzsCIc\ngZlTTem7Pjdm1V9bJgQ6iQvFHsvT+vNgJ3wAIRd+iCMXm8y96yZhD2+SH5odBYS2\nZzwTYXBQDvB/rTfdjwIDAQAB"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/e/i;->b:Ljava/security/PublicKey;
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method private c()V
    .registers 4

    :try_start_0
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6YCzxZS0FaWDOdtwgcHJ\n4aw0AoExz4atTkUlZJIf9eNLj7ogTlQGANNzE2R/uskFse2GsCqJKFTk4UraBkzf\naQu/yuFwKjURi0gEqyna1wQ3Anh3e6J/Pvhrp7vJyyRF3gZQCHElna1CWEN1zyT9\n+APJWeeIsUEJHi0FSf3EmwAtNgcJwLYed8Lrem+2+qvFY8RRjH3w4jT/wl2HKGEY\nYal33Q/OxoAE80SAD+DuXjpeynY1slzFV/Pi2qYmsnuBsnlDPQgJzxQKfCHl8xLf\nsjV57o+phSlqM0B5aPiMScxWJmCzFRX4NKcjt6KGP+3GpzmTyrpavnYQtHasperH\nmQIDAQAB\n"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/e/i;->c:Ljava/security/PublicKey;
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_19

    return-void

    :catch_19
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "公钥输入流为空"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/cmic/sso/sdk/e/i;->b:Ljava/security/PublicKey;

    const-string v1, ""

    if-nez v0, :cond_e

    sget-object p1, Lcom/cmic/sso/sdk/e/i;->a:Ljava/lang/String;

    const-string v0, "mServerPublicKey == null"

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_e
    :try_start_e
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/cmic/sso/sdk/e/i;->b:Ljava/security/PublicKey;

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/cmic/sso/sdk/e/r;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_22} :catch_23

    return-object p1

    :catch_23
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public b([B)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/cmic/sso/sdk/e/i;->b:Ljava/security/PublicKey;

    if-nez v0, :cond_d

    sget-object p1, Lcom/cmic/sso/sdk/e/i;->a:Ljava/lang/String;

    const-string v0, "mServerPublicKey == null"

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_d
    :try_start_d
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cmic/sso/sdk/e/i;->c:Ljava/security/PublicKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_23

    return-object p1

    :catch_23
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method
