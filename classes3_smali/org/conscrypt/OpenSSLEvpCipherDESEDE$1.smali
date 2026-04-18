.class synthetic Lorg/conscrypt/OpenSSLEvpCipherDESEDE$1;
.super Ljava/lang/Object;
.source "OpenSSLEvpCipherDESEDE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLEvpCipherDESEDE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$conscrypt$OpenSSLCipher$Padding:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 83
    invoke-static {}, Lorg/conscrypt/OpenSSLCipher$Padding;->values()[Lorg/conscrypt/OpenSSLCipher$Padding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/conscrypt/OpenSSLEvpCipherDESEDE$1;->$SwitchMap$org$conscrypt$OpenSSLCipher$Padding:[I

    :try_start_9
    sget-object v1, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/conscrypt/OpenSSLEvpCipherDESEDE$1;->$SwitchMap$org$conscrypt$OpenSSLCipher$Padding:[I

    sget-object v1, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
