.class public final Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;
.super Ljava/lang/Object;
.source "AudioPlayData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData$Companion;

.field public static final STATUS_PLAYING:I = 0x0

.field public static final STATUS_PLAY_END:I = 0x1

.field public static final STATUS_PLAY_FAIL:I = 0x2


# instance fields
.field private final id:Ljava/lang/String;

.field private final progress:F

.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->Companion:Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->id:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->status:I

    .line 18
    iput p3, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->progress:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;Ljava/lang/String;IFILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->status:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->progress:F

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->copy(Ljava/lang/String;IF)Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->status:I

    return v0
.end method

.method public final component3()F
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->progress:F

    return v0
.end method

.method public final copy(Ljava/lang/String;IF)Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;-><init>(Ljava/lang/String;IF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->status:I

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->status:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->progress:F

    iget p1, p1, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->progress:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgress()F
    .registers 2

    .line 18
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->progress:F

    return v0
.end method

.method public final getStatus()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->status:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->status:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->progress:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioPlayData(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioPlayData;->progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
