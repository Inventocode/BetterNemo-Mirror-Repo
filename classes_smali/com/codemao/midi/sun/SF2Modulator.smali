.class public Lcom/codemao/midi/sun/SF2Modulator;
.super Ljava/lang/Object;
.source "SF2Modulator.java"


# instance fields
.field protected amount:S

.field protected amountSourceOperator:I

.field protected destinationOperator:I

.field protected sourceOperator:I

.field protected transportOperator:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()S
    .registers 2

    .line 59
    iget-short v0, p0, Lcom/codemao/midi/sun/SF2Modulator;->amount:S

    return v0
.end method

.method public getAmountSourceOperator()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/codemao/midi/sun/SF2Modulator;->amountSourceOperator:I

    return v0
.end method

.method public getDestinationOperator()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/codemao/midi/sun/SF2Modulator;->destinationOperator:I

    return v0
.end method

.method public getSourceOperator()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/codemao/midi/sun/SF2Modulator;->sourceOperator:I

    return v0
.end method

.method public getTransportOperator()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/codemao/midi/sun/SF2Modulator;->transportOperator:I

    return v0
.end method
