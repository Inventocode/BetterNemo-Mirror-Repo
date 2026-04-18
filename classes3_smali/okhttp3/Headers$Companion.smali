.class public final Lokhttp3/Headers$Companion;
.super Ljava/lang/Object;
.source "Headers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Headers.kt\nokhttp3/Headers$Companion\n*L\n1#1,441:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 346
    invoke-direct {p0}, Lokhttp3/Headers$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkName(Lokhttp3/Headers$Companion;Ljava/lang/String;)V
    .registers 2

    .line 346
    invoke-direct {p0, p1}, Lokhttp3/Headers$Companion;->checkName(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$checkValue(Lokhttp3/Headers$Companion;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 346
    invoke-direct {p0, p1, p2}, Lokhttp3/Headers$Companion;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get(Lokhttp3/Headers$Companion;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 346
    invoke-direct {p0, p1, p2}, Lokhttp3/Headers$Companion;->get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final checkName(Ljava/lang/String;)V
    .registers 9

    .line 422
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_4c

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v0, :cond_4b

    .line 424
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7e

    const/16 v6, 0x21

    if-le v6, v4, :cond_1f

    goto :goto_23

    :cond_1f
    if-lt v5, v4, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v5, 0x0

    :goto_24
    if-eqz v5, :cond_29

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 426
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "Unexpected char %#04x at %d in header name: %s"

    invoke-static {p1, v0}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 425
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    return-void

    .line 422
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name is empty"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final checkValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_48

    .line 433
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1d

    const/16 v4, 0x7e

    const/16 v6, 0x20

    if-le v6, v3, :cond_18

    goto :goto_1b

    :cond_18
    if-lt v4, v3, :cond_1b

    goto :goto_1d

    :cond_1b
    :goto_1b
    const/4 v4, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v4, 0x1

    :goto_1e
    if-eqz v4, :cond_23

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_23
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 435
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "Unexpected char %#04x at %d in %s value: %s"

    invoke-static {p1, v0}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 434
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_48
    return-void
.end method

.method private final get([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 348
    array-length v0, p1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v0

    if-ltz v0, :cond_1d

    if-gt v1, v2, :cond_30

    goto :goto_1f

    :cond_1d
    if-lt v1, v2, :cond_30

    .line 349
    :goto_1f
    aget-object v3, p1, v1

    const/4 v4, 0x1

    invoke-static {p2, v3, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2c

    add-int/2addr v1, v4

    .line 350
    aget-object p1, p1, v1

    return-object p1

    :cond_2c
    if-eq v1, v2, :cond_30

    add-int/2addr v1, v0

    goto :goto_1f

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final -deprecated_of(Ljava/util/Map;)Lokhttp3/Headers;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, p1}, Lokhttp3/Headers$Companion;->of(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object p1

    return-object p1
.end method

.method public final varargs -deprecated_of([Ljava/lang/String;)Lokhttp3/Headers;
    .registers 3

    const-string v0, "namesAndValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lokhttp3/Headers$Companion;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object p1

    return-object p1
.end method

.method public final of(Ljava/util/Map;)Lokhttp3/Headers;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Headers;"
        }
    .end annotation

    const-string v0, "$this$toHeaders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 399
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v3, :cond_59

    .line 400
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_53

    .line 401
    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-direct {p0, v3}, Lokhttp3/Headers$Companion;->checkName(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, v2, v3}, Lokhttp3/Headers$Companion;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    aput-object v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    .line 405
    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_16

    .line 401
    :cond_53
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 400
    :cond_59
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_5f
    new-instance p1, Lokhttp3/Headers;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lokhttp3/Headers;-><init>([Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public final varargs of([Ljava/lang/String;)Lokhttp3/Headers;
    .registers 8

    const-string v0, "namesAndValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    array-length v0, p1

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_86

    .line 366
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7e

    check-cast p1, [Ljava/lang/String;

    .line 367
    array-length v0, p1

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v0, :cond_4b

    .line 368
    aget-object v5, p1, v4

    if-eqz v5, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    :goto_24
    if-eqz v5, :cond_3f

    .line 369
    aget-object v5, p1, v4

    if-eqz v5, :cond_37

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_37
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Headers cannot be null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    :cond_4b
    array-length v0, p1

    invoke-static {v3, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v0

    if-ltz v0, :cond_65

    if-gt v1, v2, :cond_77

    goto :goto_67

    :cond_65
    if-lt v1, v2, :cond_77

    .line 374
    :goto_67
    aget-object v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    .line 375
    aget-object v4, p1, v4

    .line 376
    invoke-direct {p0, v3}, Lokhttp3/Headers$Companion;->checkName(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0, v4, v3}, Lokhttp3/Headers$Companion;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v1, v2, :cond_77

    add-int/2addr v1, v0

    goto :goto_67

    .line 380
    :cond_77
    new-instance v0, Lokhttp3/Headers;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lokhttp3/Headers;-><init>([Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 366
    :cond_7e
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :cond_86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected alternating header names and values"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
