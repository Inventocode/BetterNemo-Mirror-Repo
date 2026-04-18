.class public final Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;
.super Ljava/lang/Object;
.source "CipherSuite.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCipherSuite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSuite.kt\nokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1\n*L\n1#1,461:1\n*E\n"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 62
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x4

    :goto_17
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v1, v0, :cond_2d

    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 68
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2a

    if-ge v4, v5, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x1

    :goto_29
    return v2

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 72
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p1, p2, :cond_3c

    if-ge p1, p2, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x1

    :goto_3b
    return v2

    :cond_3c
    const/4 p1, 0x0

    return p1
.end method
