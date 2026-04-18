.class public Lcom/codemao/midi/sun/SoftInstrument;
.super Lcom/codemao/midi/javax/Instrument;
.source "SoftInstrument.java"


# instance fields
.field private data:Ljava/lang/Object;

.field private ins:Lcom/codemao/midi/sun/ModelInstrument;

.field private modelperformers:[Lcom/codemao/midi/sun/ModelPerformer;

.field private performers:[Lcom/codemao/midi/sun/SoftPerformer;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/ModelInstrument;)V
    .registers 6

    .line 43
    invoke-virtual {p1}, Lcom/codemao/midi/javax/SoundbankResource;->getSoundbank()Lcom/codemao/midi/javax/Soundbank;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/midi/javax/Instrument;->getPatch()Lcom/codemao/midi/javax/Patch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/midi/javax/SoundbankResource;->getName()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p1}, Lcom/codemao/midi/javax/SoundbankResource;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    .line 43
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/codemao/midi/javax/Instrument;-><init>(Lcom/codemao/midi/javax/Soundbank;Lcom/codemao/midi/javax/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    invoke-virtual {p1}, Lcom/codemao/midi/javax/SoundbankResource;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftInstrument;->data:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftInstrument;->ins:Lcom/codemao/midi/sun/ModelInstrument;

    .line 47
    invoke-virtual {p1}, Lcom/codemao/midi/sun/ModelInstrument;->getPerformers()[Lcom/codemao/midi/sun/ModelPerformer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SoftInstrument;->initPerformers([Lcom/codemao/midi/sun/ModelPerformer;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/ModelInstrument;[Lcom/codemao/midi/sun/ModelPerformer;)V
    .registers 7

    .line 52
    invoke-virtual {p1}, Lcom/codemao/midi/javax/SoundbankResource;->getSoundbank()Lcom/codemao/midi/javax/Soundbank;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/midi/javax/Instrument;->getPatch()Lcom/codemao/midi/javax/Patch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/midi/javax/SoundbankResource;->getName()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcom/codemao/midi/javax/SoundbankResource;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    .line 52
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/codemao/midi/javax/Instrument;-><init>(Lcom/codemao/midi/javax/Soundbank;Lcom/codemao/midi/javax/Patch;Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    invoke-virtual {p1}, Lcom/codemao/midi/javax/SoundbankResource;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftInstrument;->data:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftInstrument;->ins:Lcom/codemao/midi/sun/ModelInstrument;

    .line 56
    invoke-direct {p0, p2}, Lcom/codemao/midi/sun/SoftInstrument;->initPerformers([Lcom/codemao/midi/sun/ModelPerformer;)V

    return-void
.end method

.method private initPerformers([Lcom/codemao/midi/sun/ModelPerformer;)V
    .registers 6

    .line 60
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftInstrument;->modelperformers:[Lcom/codemao/midi/sun/ModelPerformer;

    .line 61
    array-length v0, p1

    new-array v0, v0, [Lcom/codemao/midi/sun/SoftPerformer;

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftInstrument;->performers:[Lcom/codemao/midi/sun/SoftPerformer;

    const/4 v0, 0x0

    .line 62
    :goto_8
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 63
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftInstrument;->performers:[Lcom/codemao/midi/sun/SoftPerformer;

    new-instance v2, Lcom/codemao/midi/sun/SoftPerformer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/codemao/midi/sun/SoftPerformer;-><init>(Lcom/codemao/midi/sun/ModelPerformer;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_19
    return-void
.end method


# virtual methods
.method public getDirector(Lcom/codemao/midi/javax/MidiChannel;Lcom/codemao/midi/sun/ModelDirectedPlayer;)Lcom/codemao/midi/sun/ModelDirector;
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftInstrument;->ins:Lcom/codemao/midi/sun/ModelInstrument;

    iget-object v1, p0, Lcom/codemao/midi/sun/SoftInstrument;->modelperformers:[Lcom/codemao/midi/sun/ModelPerformer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/codemao/midi/sun/ModelInstrument;->getDirector([Lcom/codemao/midi/sun/ModelPerformer;Lcom/codemao/midi/javax/MidiChannel;Lcom/codemao/midi/sun/ModelDirectedPlayer;)Lcom/codemao/midi/sun/ModelDirector;

    move-result-object p1

    return-object p1
.end method

.method public getPerformers()[Lcom/codemao/midi/sun/SoftPerformer;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftInstrument;->performers:[Lcom/codemao/midi/sun/SoftPerformer;

    return-object v0
.end method

.method public getSourceInstrument()Lcom/codemao/midi/sun/ModelInstrument;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftInstrument;->ins:Lcom/codemao/midi/sun/ModelInstrument;

    return-object v0
.end method
