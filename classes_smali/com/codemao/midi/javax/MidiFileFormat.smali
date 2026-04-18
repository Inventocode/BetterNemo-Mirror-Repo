.class public Lcom/codemao/midi/javax/MidiFileFormat;
.super Ljava/lang/Object;
.source "MidiFileFormat.java"


# instance fields
.field protected divisionType:F

.field protected resolution:I


# direct methods
.method public constructor <init>(IFIIJ)V
    .registers 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p2, p0, Lcom/codemao/midi/javax/MidiFileFormat;->divisionType:F

    .line 46
    iput p3, p0, Lcom/codemao/midi/javax/MidiFileFormat;->resolution:I

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getDivisionType()F
    .registers 2

    .line 86
    iget v0, p0, Lcom/codemao/midi/javax/MidiFileFormat;->divisionType:F

    return v0
.end method

.method public getResolution()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/codemao/midi/javax/MidiFileFormat;->resolution:I

    return v0
.end method
