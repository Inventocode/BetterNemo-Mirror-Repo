.class public Lcom/codemao/midi/sun/SF2Region;
.super Ljava/lang/Object;
.source "SF2Region.java"


# instance fields
.field protected generators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field protected modulators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/SF2Modulator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Region;->modulators:Ljava/util/List;

    return-void
.end method

.method public static getDefaultValue(I)S
    .registers 3

    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const/16 p0, 0x34bc

    return p0

    :cond_7
    const/16 v0, 0x15

    const/16 v1, -0x2ee0

    if-ne p0, v0, :cond_e

    return v1

    :cond_e
    const/16 v0, 0x17

    if-ne p0, v0, :cond_13

    return v1

    :cond_13
    const/16 v0, 0x19

    if-ne p0, v0, :cond_18

    return v1

    :cond_18
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1d

    return v1

    :cond_1d
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_22

    return v1

    :cond_22
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_27

    return v1

    :cond_27
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_2c

    return v1

    :cond_2c
    const/16 v0, 0x21

    if-ne p0, v0, :cond_31

    return v1

    :cond_31
    const/16 v0, 0x22

    if-ne p0, v0, :cond_36

    return v1

    :cond_36
    const/16 v0, 0x23

    if-ne p0, v0, :cond_3b

    return v1

    :cond_3b
    const/16 v0, 0x24

    if-ne p0, v0, :cond_40

    return v1

    :cond_40
    const/16 v0, 0x26

    if-ne p0, v0, :cond_45

    return v1

    :cond_45
    const/16 v0, 0x2b

    const/16 v1, 0x7f00

    if-ne p0, v0, :cond_4c

    return v1

    :cond_4c
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_51

    return v1

    :cond_51
    const/16 v0, 0x2e

    const/4 v1, -0x1

    if-ne p0, v0, :cond_57

    return v1

    :cond_57
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_5c

    return v1

    :cond_5c
    const/16 v0, 0x38

    if-ne p0, v0, :cond_63

    const/16 p0, 0x64

    return p0

    :cond_63
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_68

    return v1

    :cond_68
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public contains(I)Z
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBytes(I)[B
    .registers 5

    .line 145
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SF2Region;->getInteger(I)I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public getGenerators()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    return-object v0
.end method

.method public getInteger(I)I
    .registers 3

    .line 157
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SF2Region;->getShort(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public getModulators()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/SF2Modulator;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Region;->modulators:Ljava/util/List;

    return-object v0
.end method

.method public getShort(I)S
    .registers 3

    .line 135
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/SF2Region;->contains(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 136
    invoke-static {p1}, Lcom/codemao/midi/sun/SF2Region;->getDefaultValue(I)S

    move-result p1

    return p1

    .line 137
    :cond_b
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    return p1
.end method
