.class public final Lokhttp3/internal/platform/ConscryptPlatform$Companion;
.super Ljava/lang/Object;
.source "ConscryptPlatform.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/ConscryptPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 105
    invoke-direct {p0}, Lokhttp3/internal/platform/ConscryptPlatform$Companion;-><init>()V

    return-void
.end method

.method public static synthetic atLeastVersion$default(Lokhttp3/internal/platform/ConscryptPlatform$Companion;IIIILjava/lang/Object;)Z
    .registers 7

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_b

    const/4 p3, 0x0

    .line 120
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/platform/ConscryptPlatform$Companion;->atLeastVersion(III)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final atLeastVersion(III)Z
    .registers 8

    .line 121
    invoke-static {}, Lorg/conscrypt/Conscrypt;->version()Lorg/conscrypt/Conscrypt$Version;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$Version;->major()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_15

    .line 124
    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$Version;->major()I

    move-result p2

    if-le p2, p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    return v2

    .line 127
    :cond_15
    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$Version;->minor()I

    move-result p1

    if-eq p1, p2, :cond_24

    .line 128
    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$Version;->minor()I

    move-result p1

    if-le p1, p2, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    return v2

    .line 131
    :cond_24
    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$Version;->patch()I

    move-result p1

    if-lt p1, p3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    return v2
.end method

.method public final buildIfSupported()Lokhttp3/internal/platform/ConscryptPlatform;
    .registers 3

    .line 118
    invoke-virtual {p0}, Lokhttp3/internal/platform/ConscryptPlatform$Companion;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    new-instance v0, Lokhttp3/internal/platform/ConscryptPlatform;

    invoke-direct {v0, v1}, Lokhttp3/internal/platform/ConscryptPlatform;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :cond_d
    return-object v1
.end method

.method public final isSupported()Z
    .registers 2

    .line 106
    invoke-static {}, Lokhttp3/internal/platform/ConscryptPlatform;->access$isSupported$cp()Z

    move-result v0

    return v0
.end method
