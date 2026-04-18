.class public final Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;
.super Ljava/lang/Object;
.source "PythonCurrentProjectOpenFile.kt"


# instance fields
.field private final content:Ljava/lang/String;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->content:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->path:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->content:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;
    .registers 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->content:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->content:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->content:Ljava/lang/String;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PythonCurrentProjectOpenFile(path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/model/dsbridge/python/PythonCurrentProjectOpenFile;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
