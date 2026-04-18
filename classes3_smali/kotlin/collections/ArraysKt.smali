.class public final Lkotlin/collections/ArraysKt;
.super Lkotlin/collections/ArraysKt___ArraysKt;


# direct methods
.method public static bridge synthetic asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;
    .registers 7

    invoke-static/range {p0 .. p6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic fill([Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;II)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public static bridge synthetic fill$default([IIIIILjava/lang/Object;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([IIIIILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getLastIndex([Ljava/lang/Object;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic plus([B[B)[B
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->plus([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic single([C)C
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->single([C)C

    move-result p0

    return p0
.end method

.method public static bridge synthetic singleOrNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->singleOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([BLkotlin/ranges/IntRange;)[B
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toMutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toTypedArray([I)[Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->toTypedArray([I)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
