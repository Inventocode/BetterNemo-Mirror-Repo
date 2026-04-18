.class public Lcom/codemao/midi/sun/SF2LayerRegion;
.super Lcom/codemao/midi/sun/SF2Region;
.source "SF2LayerRegion.java"


# instance fields
.field protected sample:Lcom/codemao/midi/sun/SF2Sample;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/codemao/midi/sun/SF2Region;-><init>()V

    return-void
.end method


# virtual methods
.method public getSample()Lcom/codemao/midi/sun/SF2Sample;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2LayerRegion;->sample:Lcom/codemao/midi/sun/SF2Sample;

    return-object v0
.end method
