.class public Lcom/codemao/midi/sun/ModelPatch;
.super Lcom/codemao/midi/javax/Patch;
.source "ModelPatch.java"


# instance fields
.field private percussion:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/javax/Patch;-><init>(II)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/codemao/midi/sun/ModelPatch;->percussion:Z

    .line 46
    iput-boolean p3, p0, Lcom/codemao/midi/sun/ModelPatch;->percussion:Z

    return-void
.end method


# virtual methods
.method public isPercussion()Z
    .registers 2

    .line 50
    iget-boolean v0, p0, Lcom/codemao/midi/sun/ModelPatch;->percussion:Z

    return v0
.end method
