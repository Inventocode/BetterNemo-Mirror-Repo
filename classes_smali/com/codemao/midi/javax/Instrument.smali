.class public abstract Lcom/codemao/midi/javax/Instrument;
.super Lcom/codemao/midi/javax/SoundbankResource;
.source "Instrument.java"


# instance fields
.field private final patch:Lcom/codemao/midi/javax/Patch;


# direct methods
.method protected constructor <init>(Lcom/codemao/midi/javax/Soundbank;Lcom/codemao/midi/javax/Patch;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/midi/javax/Soundbank;",
            "Lcom/codemao/midi/javax/Patch;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p3, p4}, Lcom/codemao/midi/javax/SoundbankResource;-><init>(Lcom/codemao/midi/javax/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V

    .line 23
    iput-object p2, p0, Lcom/codemao/midi/javax/Instrument;->patch:Lcom/codemao/midi/javax/Patch;

    return-void
.end method


# virtual methods
.method public getPatch()Lcom/codemao/midi/javax/Patch;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/midi/javax/Instrument;->patch:Lcom/codemao/midi/javax/Patch;

    return-object v0
.end method
