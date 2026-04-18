.class public Lcom/codemao/midi/bean/MidiMaterialBean;
.super Ljava/lang/Object;
.source "MidiMaterialBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ext:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private mode:I

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExt()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/codemao/midi/bean/MidiMaterialBean;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/midi/bean/MidiMaterialBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/codemao/midi/bean/MidiMaterialBean;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/midi/bean/MidiMaterialBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setExt(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/codemao/midi/bean/MidiMaterialBean;->ext:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/midi/bean/MidiMaterialBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/codemao/midi/bean/MidiMaterialBean;->mode:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/midi/bean/MidiMaterialBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/codemao/midi/bean/MidiMaterialBean;->path:Ljava/lang/String;

    return-void
.end method
