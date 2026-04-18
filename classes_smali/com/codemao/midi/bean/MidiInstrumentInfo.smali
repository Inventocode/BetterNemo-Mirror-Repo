.class public Lcom/codemao/midi/bean/MidiInstrumentInfo;
.super Ljava/lang/Object;
.source "MidiInstrumentInfo.java"


# instance fields
.field private animationName:Ljava/lang/String;

.field private instrumentInfo:Lcom/codemao/midi/bean/InstrumentInfo;

.field private nameResourseId:I

.field private previewResId:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;I)V
    .registers 8

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p7, p0, Lcom/codemao/midi/bean/MidiInstrumentInfo;->previewResId:I

    .line 16
    iput-object p6, p0, Lcom/codemao/midi/bean/MidiInstrumentInfo;->animationName:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/codemao/midi/bean/MidiInstrumentInfo;->nameResourseId:I

    .line 19
    new-instance p1, Lcom/codemao/midi/bean/InstrumentInfo;

    invoke-direct {p1, p4, p5}, Lcom/codemao/midi/bean/InstrumentInfo;-><init>(II)V

    iput-object p1, p0, Lcom/codemao/midi/bean/MidiInstrumentInfo;->instrumentInfo:Lcom/codemao/midi/bean/InstrumentInfo;

    return-void
.end method


# virtual methods
.method public getAnimationName()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/midi/bean/MidiInstrumentInfo;->animationName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentInfo()Lcom/codemao/midi/bean/InstrumentInfo;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/codemao/midi/bean/MidiInstrumentInfo;->instrumentInfo:Lcom/codemao/midi/bean/InstrumentInfo;

    return-object v0
.end method

.method public getNameResourseId()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/codemao/midi/bean/MidiInstrumentInfo;->nameResourseId:I

    return v0
.end method

.method public getPreviewResId()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/codemao/midi/bean/MidiInstrumentInfo;->previewResId:I

    return v0
.end method
