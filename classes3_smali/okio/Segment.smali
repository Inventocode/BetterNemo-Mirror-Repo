.class public final Lokio/Segment;
.super Ljava/lang/Object;
.source "Segment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Segment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Segment.kt\nokio/Segment\n*L\n1#1,175:1\n*E\n"
.end annotation


# instance fields
.field public final data:[B

.field public limit:I

.field public next:Lokio/Segment;

.field public owner:Z

.field public pos:I

.field public prev:Lokio/Segment;

.field public shared:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/Segment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Segment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lokio/Segment;->data:[B

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lokio/Segment;->owner:Z

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .registers 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/Segment;->data:[B

    .line 62
    iput p2, p0, Lokio/Segment;->pos:I

    .line 63
    iput p3, p0, Lokio/Segment;->limit:I

    .line 64
    iput-boolean p4, p0, Lokio/Segment;->shared:Z

    .line 65
    iput-boolean p5, p0, Lokio/Segment;->owner:Z

    return-void
.end method


# virtual methods
.method public final compact()V
    .registers 5

    .line 140
    iget-object v0, p0, Lokio/Segment;->prev:Lokio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_4e

    if-nez v0, :cond_f

    .line 141
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    iget-boolean v0, v0, Lokio/Segment;->owner:Z

    if-nez v0, :cond_14

    return-void

    .line 142
    :cond_14
    iget v0, p0, Lokio/Segment;->limit:I

    iget v2, p0, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    .line 143
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v2, :cond_20

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_20
    iget v2, v2, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v3, :cond_2b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2b
    iget-boolean v3, v3, Lokio/Segment;->shared:Z

    if-eqz v3, :cond_30

    goto :goto_39

    :cond_30
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v1, :cond_37

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_37
    iget v1, v1, Lokio/Segment;->pos:I

    :goto_39
    add-int/2addr v2, v1

    if-le v0, v2, :cond_3d

    return-void

    .line 145
    :cond_3d
    iget-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v1, :cond_44

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_44
    invoke-virtual {p0, v1, v0}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 146
    invoke-virtual {p0}, Lokio/Segment;->pop()Lokio/Segment;

    .line 147
    invoke-static {p0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    return-void

    .line 140
    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot compact"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final pop()Lokio/Segment;
    .registers 5

    .line 86
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_6

    goto :goto_7

    :cond_6
    move-object v0, v1

    .line 87
    :goto_7
    iget-object v2, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez v2, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    iget-object v3, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 88
    iget-object v2, p0, Lokio/Segment;->next:Lokio/Segment;

    if-nez v2, :cond_19

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_19
    iget-object v3, p0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 89
    iput-object v1, p0, Lokio/Segment;->next:Lokio/Segment;

    .line 90
    iput-object v1, p0, Lokio/Segment;->prev:Lokio/Segment;

    return-object v0
.end method

.method public final push(Lokio/Segment;)Lokio/Segment;
    .registers 3

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iput-object p0, p1, Lokio/Segment;->prev:Lokio/Segment;

    .line 99
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 100
    iget-object v0, p0, Lokio/Segment;->next:Lokio/Segment;

    if-nez v0, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12
    iput-object p1, v0, Lokio/Segment;->prev:Lokio/Segment;

    .line 101
    iput-object p1, p0, Lokio/Segment;->next:Lokio/Segment;

    return-object p1
.end method

.method public final sharedCopy()Lokio/Segment;
    .registers 8

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lokio/Segment;->shared:Z

    .line 75
    new-instance v0, Lokio/Segment;

    iget-object v2, p0, Lokio/Segment;->data:[B

    iget v3, p0, Lokio/Segment;->pos:I

    iget v4, p0, Lokio/Segment;->limit:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lokio/Segment;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final split(I)Lokio/Segment;
    .registers 7

    const/4 v0, 0x0

    if-lez p1, :cond_c

    .line 114
    iget v1, p0, Lokio/Segment;->limit:I

    iget v2, p0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_3b

    const/16 v1, 0x400

    if-lt p1, v1, :cond_18

    .line 123
    invoke-virtual {p0}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v0

    goto :goto_26

    .line 125
    :cond_18
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lokio/Segment;->data:[B

    iget v3, p0, Lokio/Segment;->pos:I

    iget-object v4, v1, Lokio/Segment;->data:[B

    invoke-static {v2, v3, v4, v0, p1}, Lokio/-Platform;->arraycopy([BI[BII)V

    move-object v0, v1

    .line 129
    :goto_26
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/Segment;->limit:I

    .line 130
    iget v1, p0, Lokio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/Segment;->pos:I

    .line 131
    iget-object p1, p0, Lokio/Segment;->prev:Lokio/Segment;

    if-nez p1, :cond_37

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_37
    invoke-virtual {p1, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    return-object v0

    .line 114
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount out of range"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final unsharedCopy()Lokio/Segment;
    .registers 8

    .line 79
    new-instance v6, Lokio/Segment;

    iget-object v0, p0, Lokio/Segment;->data:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v0, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lokio/Segment;->pos:I

    iget v3, p0, Lokio/Segment;->limit:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lokio/Segment;-><init>([BIIZZ)V

    return-object v6
.end method

.method public final writeTo(Lokio/Segment;I)V
    .registers 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p1, Lokio/Segment;->owner:Z

    if-eqz v0, :cond_4f

    .line 153
    iget v0, p1, Lokio/Segment;->limit:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_39

    .line 155
    iget-boolean v1, p1, Lokio/Segment;->shared:Z

    if-nez v1, :cond_33

    add-int v1, v0, p2

    .line 156
    iget v3, p1, Lokio/Segment;->pos:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_2d

    .line 157
    iget-object v1, p1, Lokio/Segment;->data:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Lokio/-Platform;->arraycopy([BI[BII)V

    .line 158
    iget v0, p1, Lokio/Segment;->limit:I

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/Segment;->limit:I

    .line 159
    iput v2, p1, Lokio/Segment;->pos:I

    goto :goto_39

    .line 156
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 155
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 162
    :cond_39
    :goto_39
    iget-object v0, p0, Lokio/Segment;->data:[B

    iget v1, p0, Lokio/Segment;->pos:I

    iget-object v2, p1, Lokio/Segment;->data:[B

    iget v3, p1, Lokio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Lokio/-Platform;->arraycopy([BI[BII)V

    .line 163
    iget v0, p1, Lokio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/Segment;->limit:I

    .line 164
    iget p1, p0, Lokio/Segment;->pos:I

    add-int/2addr p1, p2

    iput p1, p0, Lokio/Segment;->pos:I

    return-void

    .line 152
    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
