.class public Lcom/codemao/midi/bean/InstrumentInfo;
.super Ljava/lang/Object;
.source "InstrumentInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private msb:I

.field private program:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/codemao/midi/bean/InstrumentInfo;->program:I

    const/16 v0, 0x79

    .line 7
    iput v0, p0, Lcom/codemao/midi/bean/InstrumentInfo;->msb:I

    .line 10
    iput p1, p0, Lcom/codemao/midi/bean/InstrumentInfo;->program:I

    .line 11
    iput p2, p0, Lcom/codemao/midi/bean/InstrumentInfo;->msb:I

    return-void
.end method


# virtual methods
.method public getMsb()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/codemao/midi/bean/InstrumentInfo;->msb:I

    return v0
.end method

.method public getProgram()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/codemao/midi/bean/InstrumentInfo;->program:I

    return v0
.end method
