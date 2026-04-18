.class public final Lcom/codemao/toolssdk/model/dsbridge/AudioOption;
.super Ljava/lang/Object;
.source "AudioOption.kt"


# instance fields
.field private final id:Ljava/lang/String;

.field private final needProgress:Z

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->id:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->url:Ljava/lang/String;

    .line 12
    iput-boolean p3, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->needProgress:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/AudioOption;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/AudioOption;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->url:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-boolean p3, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->needProgress:Z

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->copy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->needProgress:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/codemao/toolssdk/model/dsbridge/AudioOption;
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->needProgress:Z

    iget-boolean p1, p1, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->needProgress:Z

    if-eq v1, p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeedProgress()Z
    .registers 2

    .line 12
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->needProgress:Z

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->needProgress:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :cond_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioOption(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", needProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/dsbridge/AudioOption;->needProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
