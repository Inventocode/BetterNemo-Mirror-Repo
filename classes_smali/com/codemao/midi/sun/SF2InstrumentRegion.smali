.class public Lcom/codemao/midi/sun/SF2InstrumentRegion;
.super Lcom/codemao/midi/sun/SF2Region;
.source "SF2InstrumentRegion.java"


# instance fields
.field protected layer:Lcom/codemao/midi/sun/SF2Layer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/codemao/midi/sun/SF2Region;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayer()Lcom/codemao/midi/sun/SF2Layer;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2InstrumentRegion;->layer:Lcom/codemao/midi/sun/SF2Layer;

    return-object v0
.end method
