.class public Lcom/codemao/midi/sun/SoftShortMessageCM;
.super Lcom/codemao/midi/javax/ShortMessageCM;
.source "SoftShortMessageCM.java"


# instance fields
.field channel:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/codemao/midi/sun/SoftShortMessageCM;->channel:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 6

    .line 50
    new-instance v0, Lcom/codemao/midi/sun/SoftShortMessageCM;

    invoke-direct {v0}, Lcom/codemao/midi/sun/SoftShortMessageCM;-><init>()V

    .line 52
    :try_start_5
    invoke-virtual {p0}, Lcom/codemao/midi/javax/ShortMessageCM;->getCommand()I

    move-result v1

    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftShortMessageCM;->getChannel()I

    move-result v2

    invoke-virtual {p0}, Lcom/codemao/midi/javax/ShortMessageCM;->getData1()I

    move-result v3

    invoke-virtual {p0}, Lcom/codemao/midi/javax/ShortMessageCM;->getData2()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/codemao/midi/sun/SoftShortMessageCM;->setMessage(IIII)V
    :try_end_18
    .catch Lcom/codemao/midi/javax/InvalidMidiDataException; {:try_start_5 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getChannel()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/codemao/midi/sun/SoftShortMessageCM;->channel:I

    return v0
.end method

.method public setMessage(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;
        }
    .end annotation

    .line 45
    iput p2, p0, Lcom/codemao/midi/sun/SoftShortMessageCM;->channel:I

    and-int/lit8 p2, p2, 0xf

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(IIII)V

    return-void
.end method
