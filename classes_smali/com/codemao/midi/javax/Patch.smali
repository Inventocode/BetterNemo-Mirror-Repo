.class public Lcom/codemao/midi/javax/Patch;
.super Ljava/lang/Object;
.source "Patch.java"


# instance fields
.field private final bank:I

.field private final program:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/codemao/midi/javax/Patch;->bank:I

    .line 20
    iput p2, p0, Lcom/codemao/midi/javax/Patch;->program:I

    return-void
.end method


# virtual methods
.method public getBank()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/codemao/midi/javax/Patch;->bank:I

    return v0
.end method

.method public getProgram()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/codemao/midi/javax/Patch;->program:I

    return v0
.end method
