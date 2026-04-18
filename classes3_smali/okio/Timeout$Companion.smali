.class public final Lokio/Timeout$Companion;
.super Ljava/lang/Object;
.source "Timeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 235
    invoke-direct {p0}, Lokio/Timeout$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final minTimeout(JJ)J
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    goto :goto_11

    :cond_7
    cmp-long v2, p3, v0

    if-nez v2, :cond_c

    goto :goto_12

    :cond_c
    cmp-long v0, p1, p3

    if-gez v0, :cond_11

    goto :goto_12

    :cond_11
    :goto_11
    move-wide p1, p3

    :goto_12
    return-wide p1
.end method
