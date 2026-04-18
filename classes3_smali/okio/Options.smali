.class public final Lokio/Options;
.super Ljava/util/AbstractList;
.source "Options.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Options$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final Companion:Lokio/Options$Companion;


# instance fields
.field private final byteStrings:[Lokio/ByteString;

.field private final trie:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/Options$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Options$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/Options;->Companion:Lokio/Options$Companion;

    return-void
.end method

.method private constructor <init>([Lokio/ByteString;[I)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    iput-object p2, p0, Lokio/Options;->trie:[I

    return-void
.end method

.method public synthetic constructor <init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    .line 22
    invoke-direct {p0, p1, p2}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-void
.end method

.method public static final varargs of([Lokio/ByteString;)Lokio/Options;
    .registers 2

    sget-object v0, Lokio/Options;->Companion:Lokio/Options$Companion;

    invoke-virtual {v0, p0}, Lokio/Options$Companion;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_5

    .line 22
    instance-of v0, p1, Lokio/ByteString;

    goto :goto_6

    :cond_5
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_f

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/Options;->contains(Lokio/ByteString;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public bridge contains(Lokio/ByteString;)Z
    .registers 2

    .line 22
    invoke-super {p0, p1}, Ljava/util/AbstractList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 22
    invoke-virtual {p0, p1}, Lokio/Options;->get(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lokio/ByteString;
    .registers 3

    .line 30
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getByteStrings$jvm()[Lokio/ByteString;
    .registers 2

    .line 23
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 28
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method

.method public final getTrie$jvm()[I
    .registers 2

    .line 24
    iget-object v0, p0, Lokio/Options;->trie:[I

    return-object v0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    if-eqz p1, :cond_5

    .line 22
    instance-of v0, p1, Lokio/ByteString;

    goto :goto_6

    :cond_5
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_f

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/Options;->indexOf(Lokio/ByteString;)I

    move-result p1

    return p1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public bridge indexOf(Lokio/ByteString;)I
    .registers 2

    .line 22
    invoke-super {p0, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    if-eqz p1, :cond_5

    .line 22
    instance-of v0, p1, Lokio/ByteString;

    goto :goto_6

    :cond_5
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_f

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/Options;->lastIndexOf(Lokio/ByteString;)I

    move-result p1

    return p1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public bridge lastIndexOf(Lokio/ByteString;)I
    .registers 2

    .line 22
    invoke-super {p0, p1}, Ljava/util/AbstractList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_5

    .line 22
    instance-of v0, p1, Lokio/ByteString;

    goto :goto_6

    :cond_5
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_f

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/Options;->remove(Lokio/ByteString;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public bridge remove(Lokio/ByteString;)Z
    .registers 2

    .line 22
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge size()I
    .registers 2

    .line 22
    invoke-virtual {p0}, Lokio/Options;->getSize()I

    move-result v0

    return v0
.end method
