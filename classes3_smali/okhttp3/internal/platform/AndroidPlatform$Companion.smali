.class public final Lokhttp3/internal/platform/AndroidPlatform$Companion;
.super Ljava/lang/Object;
.source "AndroidPlatform.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/AndroidPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 226
    invoke-direct {p0}, Lokhttp3/internal/platform/AndroidPlatform$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildIfSupported()Lokhttp3/internal/platform/Platform;
    .registers 2

    .line 239
    invoke-virtual {p0}, Lokhttp3/internal/platform/AndroidPlatform$Companion;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lokhttp3/internal/platform/AndroidPlatform;

    invoke-direct {v0}, Lokhttp3/internal/platform/AndroidPlatform;-><init>()V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method public final isSupported()Z
    .registers 2

    .line 227
    invoke-static {}, Lokhttp3/internal/platform/AndroidPlatform;->access$isSupported$cp()Z

    move-result v0

    return v0
.end method
