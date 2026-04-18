.class public Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;
.super Ljava/lang/Object;
.source "FuckRomUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/util/FuckRomUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RomInfo"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;)Ljava/lang/String;
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 433
    iput-object p1, p0, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 433
    iput-object p1, p0, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->version:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RomInfo{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lxj/xpopup/util/FuckRomUtils$RomInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
