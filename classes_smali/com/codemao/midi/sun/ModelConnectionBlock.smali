.class public Lcom/codemao/midi/sun/ModelConnectionBlock;
.super Ljava/lang/Object;
.source "ModelConnectionBlock.java"


# static fields
.field private static final no_sources:[Lcom/codemao/midi/sun/ModelSource;


# instance fields
.field private destination:Lcom/codemao/midi/sun/ModelDestination;

.field private scale:D

.field private sources:[Lcom/codemao/midi/sun/ModelSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/codemao/midi/sun/ModelSource;

    .line 40
    sput-object v0, Lcom/codemao/midi/sun/ModelConnectionBlock;->no_sources:[Lcom/codemao/midi/sun/ModelSource;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/codemao/midi/sun/ModelConnectionBlock;->no_sources:[Lcom/codemao/midi/sun/ModelSource;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 42
    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->scale:D

    return-void
.end method

.method public constructor <init>(DLcom/codemao/midi/sun/ModelDestination;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/codemao/midi/sun/ModelConnectionBlock;->no_sources:[Lcom/codemao/midi/sun/ModelSource;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 42
    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->scale:D

    .line 49
    iput-wide p1, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->scale:D

    .line 50
    iput-object p3, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->destination:Lcom/codemao/midi/sun/ModelDestination;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V
    .registers 7

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/codemao/midi/sun/ModelConnectionBlock;->no_sources:[Lcom/codemao/midi/sun/ModelSource;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 42
    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->scale:D

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/codemao/midi/sun/ModelSource;

    .line 65
    iput-object v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 68
    :cond_15
    iput-wide p2, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->scale:D

    .line 69
    iput-object p4, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->destination:Lcom/codemao/midi/sun/ModelDestination;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;DLcom/codemao/midi/sun/ModelDestination;)V
    .registers 9

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/codemao/midi/sun/ModelConnectionBlock;->no_sources:[Lcom/codemao/midi/sun/ModelSource;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 42
    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->scale:D

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_18

    new-array p2, v0, [Lcom/codemao/midi/sun/ModelSource;

    .line 91
    iput-object p2, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    aput-object p1, p2, v1

    goto :goto_21

    :cond_18
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/codemao/midi/sun/ModelSource;

    .line 94
    iput-object v2, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    .line 99
    :cond_21
    :goto_21
    iput-wide p3, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->scale:D

    .line 100
    iput-object p5, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->destination:Lcom/codemao/midi/sun/ModelDestination;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelSource;Lcom/codemao/midi/sun/ModelDestination;)V
    .registers 7

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/codemao/midi/sun/ModelConnectionBlock;->no_sources:[Lcom/codemao/midi/sun/ModelSource;

    iput-object v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 42
    iput-wide v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->scale:D

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_18

    new-array p2, v0, [Lcom/codemao/midi/sun/ModelSource;

    .line 76
    iput-object p2, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    aput-object p1, p2, v1

    goto :goto_21

    :cond_18
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/codemao/midi/sun/ModelSource;

    .line 79
    iput-object v2, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    .line 84
    :cond_21
    :goto_21
    iput-object p3, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->destination:Lcom/codemao/midi/sun/ModelDestination;

    return-void
.end method


# virtual methods
.method public addSource(Lcom/codemao/midi/sun/ModelSource;)V
    .registers 6

    .line 128
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    .line 129
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/codemao/midi/sun/ModelSource;

    iput-object v1, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    const/4 v1, 0x0

    .line 130
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 131
    iget-object v2, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    aget-object v3, v0, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 133
    :cond_16
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public getDestination()Lcom/codemao/midi/sun/ModelDestination;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->destination:Lcom/codemao/midi/sun/ModelDestination;

    return-object v0
.end method

.method public getScale()D
    .registers 3

    .line 112
    iget-wide v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->scale:D

    return-wide v0
.end method

.method public getSources()[Lcom/codemao/midi/sun/ModelSource;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    return-object v0
.end method

.method public setDestination(Lcom/codemao/midi/sun/ModelDestination;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->destination:Lcom/codemao/midi/sun/ModelDestination;

    return-void
.end method

.method public setScale(D)V
    .registers 3

    .line 116
    iput-wide p1, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->scale:D

    return-void
.end method

.method public setSources([Lcom/codemao/midi/sun/ModelSource;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/codemao/midi/sun/ModelConnectionBlock;->sources:[Lcom/codemao/midi/sun/ModelSource;

    return-void
.end method
