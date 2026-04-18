.class public Lcom/codemao/midi/sun/SF2Layer;
.super Lcom/codemao/midi/javax/SoundbankResource;
.source "SF2Layer.java"


# instance fields
.field protected globalregion:Lcom/codemao/midi/sun/SF2GlobalRegion;

.field protected name:Ljava/lang/String;

.field protected regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/SF2LayerRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0, v0, v0}, Lcom/codemao/midi/javax/SoundbankResource;-><init>(Lcom/codemao/midi/javax/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, ""

    .line 39
    iput-object v1, p0, Lcom/codemao/midi/sun/SF2Layer;->name:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Layer;->globalregion:Lcom/codemao/midi/sun/SF2GlobalRegion;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Layer;->regions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/SF2Soundbank;)V
    .registers 3

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v0}, Lcom/codemao/midi/javax/SoundbankResource;-><init>(Lcom/codemao/midi/javax/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V

    const-string p1, ""

    .line 39
    iput-object p1, p0, Lcom/codemao/midi/sun/SF2Layer;->name:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Layer;->globalregion:Lcom/codemao/midi/sun/SF2GlobalRegion;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/midi/sun/SF2Layer;->regions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getGlobalRegion()Lcom/codemao/midi/sun/SF2GlobalRegion;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Layer;->globalregion:Lcom/codemao/midi/sun/SF2GlobalRegion;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Layer;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/SF2LayerRegion;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Layer;->regions:Ljava/util/List;

    return-object v0
.end method

.method public setGlobalZone(Lcom/codemao/midi/sun/SF2GlobalRegion;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/codemao/midi/sun/SF2Layer;->globalregion:Lcom/codemao/midi/sun/SF2GlobalRegion;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Layer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/midi/sun/SF2Layer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
