.class synthetic Lorg/conscrypt/OpenSSLSignature$1;
.super Ljava/lang/Object;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLSignature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$conscrypt$OpenSSLSignature$EngineType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 176
    invoke-static {}, Lorg/conscrypt/OpenSSLSignature$EngineType;->values()[Lorg/conscrypt/OpenSSLSignature$EngineType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/conscrypt/OpenSSLSignature$1;->$SwitchMap$org$conscrypt$OpenSSLSignature$EngineType:[I

    :try_start_9
    sget-object v1, Lorg/conscrypt/OpenSSLSignature$EngineType;->RSA:Lorg/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lorg/conscrypt/OpenSSLSignature$1;->$SwitchMap$org$conscrypt$OpenSSLSignature$EngineType:[I

    sget-object v1, Lorg/conscrypt/OpenSSLSignature$EngineType;->EC:Lorg/conscrypt/OpenSSLSignature$EngineType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
