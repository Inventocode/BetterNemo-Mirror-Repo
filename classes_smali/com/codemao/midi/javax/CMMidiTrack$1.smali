.class Lcom/codemao/midi/javax/CMMidiTrack$1;
.super Ljava/lang/Object;
.source "CMMidiTrack.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/javax/CMMidiTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/codemao/midi/javax/CMMidiEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/codemao/midi/javax/CMMidiEvent;Lcom/codemao/midi/javax/CMMidiEvent;)I
    .registers 7

    .line 37
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    if-eqz v1, :cond_f

    mul-int/lit16 v1, v1, 0x100

    return v1

    .line 42
    :cond_f
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiMessage;->getMessage()[B

    move-result-object p1

    .line 43
    invoke-virtual {p2}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/midi/javax/CMMidiMessage;->getMessage()[B

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 46
    array-length v2, p1

    if-ge v2, v0, :cond_2a

    :cond_26
    new-array p1, v0, [B

    aput-byte v1, p1, v1

    :cond_2a
    if-eqz p2, :cond_2f

    .line 49
    array-length v2, p2

    if-ge v2, v0, :cond_33

    :cond_2f
    new-array p2, v0, [B

    aput-byte v1, p2, v1

    .line 57
    :cond_33
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xf0

    .line 58
    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xf0

    and-int/lit16 v0, p1, 0x90

    const/16 v1, 0x80

    if-ne v0, v1, :cond_44

    or-int/lit8 p1, p1, 0x10

    goto :goto_46

    :cond_44
    and-int/lit8 p1, p1, -0x11

    :goto_46
    and-int/lit16 v0, p2, 0x90

    if-ne v0, v1, :cond_4d

    or-int/lit8 p2, p2, 0x10

    goto :goto_4f

    :cond_4d
    and-int/lit8 p2, p2, -0x11

    :goto_4f
    sub-int/2addr p1, p2

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 33
    check-cast p1, Lcom/codemao/midi/javax/CMMidiEvent;

    check-cast p2, Lcom/codemao/midi/javax/CMMidiEvent;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/midi/javax/CMMidiTrack$1;->compare(Lcom/codemao/midi/javax/CMMidiEvent;Lcom/codemao/midi/javax/CMMidiEvent;)I

    move-result p1

    return p1
.end method
